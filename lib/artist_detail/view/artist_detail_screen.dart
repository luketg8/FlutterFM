import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fm/artist_detail/artist_detail.dart';
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
    final artistDetailNotifier =
        ref.watch(artistDetailNotifierProvider(widget.mbid).notifier);

    final artistDetail = ref.watch(artistDetailNotifierProvider(widget.mbid));

    return RefreshIndicator(
      onRefresh: () => artistDetailNotifier.fetchDetails(),
      child: artistDetail.when(
        data: (artistDetailState) => ArtistDetails(artistDetailState),
        error: (e, _, artistDetailState) {
          if (artistDetailState != null) {
            return ArtistDetails(artistDetailState.asData!.value);
          }

          return _RefreshableScaffold(
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 48,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    ErrorMessageUtils.resolveErrorMessage(context, e),
                  ),
                ],
              ),
            ),
            appBarActions: [
              //Add button to refresh page if using on Web
              if (kIsWeb)
                IconButton(
                  onPressed: () => artistDetailNotifier.fetchDetails(),
                  icon: const Icon(Icons.refresh),
                ),
            ],
          );
        },
        loading: (artistDetailState) {
          if (artistDetailState != null) {
            return ArtistDetails(artistDetailState.asData!.value);
          }

          return const _RefreshableScaffold(
            Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}

//Make refreshable scaffold to ensure that pull to refresh always works
class _RefreshableScaffold extends StatelessWidget {
  final Widget body;
  final List<Widget>? appBarActions;
  const _RefreshableScaffold(this.body, {Key? key, this.appBarActions})
      : super(key: key);

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
            actions: appBarActions,
          ),
          body: body,
        ),
      ),
    );
  }
}
