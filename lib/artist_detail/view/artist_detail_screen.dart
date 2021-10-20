import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fm/artist_detail/artist_detail.dart';
import 'package:flutter_fm/core/domain/network_failure.dart';
import 'package:flutter_fm/core/view/error_message_utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArtistDetailScreen extends ConsumerStatefulWidget {
  final String mbid;
  const ArtistDetailScreen(this.mbid, {Key? key}) : super(key: key);

  @override
  _ArtistDetailScreenState createState() => _ArtistDetailScreenState();
}

class _ArtistDetailScreenState extends ConsumerState<ArtistDetailScreen> {
  @override
  void initState() {
    ref.read(artistDetailNotifierProvider(widget.mbid).notifier).fetchDetails();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final artistDetail = ref.watch(artistDetailNotifierProvider(widget.mbid));

    ref.listen(
      artistDetailNotifierProvider(widget.mbid),
      (state) {
        if (state is AsyncError) {
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(
                  ErrorMessageUtils.resolveErrorMessage(
                    context,
                    state.error as NetworkFailure,
                  ),
                ),
              ),
            );
        }
      },
    );

    return RefreshIndicator(
      onRefresh: _refreshArtistDetails,
      child: artistDetail.when(
        data: (artistDetailState) => ArtistDetails(
          artistDetailState,
          onRefreshed: _refreshArtistDetails,
        ),
        error: (e, _, artistDetailState) {
          if (artistDetailState != null) {
            return ArtistDetails(
              artistDetailState.asData!.value,
              onRefreshed: _refreshArtistDetails,
            );
          }

          return _RefreshableScaffold(
            onRefreshed: _refreshArtistDetails,
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 48,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    ErrorMessageUtils.resolveErrorMessage(
                        context, e as NetworkFailure),
                  ),
                ],
              ),
            ),
          );
        },
        loading: (artistDetailState) {
          if (artistDetailState != null) {
            return ArtistDetails(
              artistDetailState.asData!.value,
              onRefreshed: _refreshArtistDetails,
            );
          }

          return _RefreshableScaffold(
            onRefreshed: _refreshArtistDetails,
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }

  Future<void> _refreshArtistDetails() => ref
      .read(artistDetailNotifierProvider(widget.mbid).notifier)
      .fetchDetails();
}

//Make refreshable scaffold to ensure that pull to refresh always works
class _RefreshableScaffold extends StatelessWidget {
  final VoidCallback onRefreshed;
  final Widget body;
  const _RefreshableScaffold({
    Key? key,
    required this.onRefreshed,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:
          const AlwaysScrollableScrollPhysics(parent: ClampingScrollPhysics()),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: Colors.black),
            actions: [
              //Add button to refresh page if using on Web
              if (kIsWeb)
                IconButton(
                  onPressed: onRefreshed,
                  icon: const Icon(Icons.refresh),
                ),
            ],
          ),
          body: body,
        ),
      ),
    );
  }
}
