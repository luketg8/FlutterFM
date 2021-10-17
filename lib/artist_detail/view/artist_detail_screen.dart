import 'package:flutter/material.dart';
import 'package:flutter_fm/artist_detail/artist_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArtistDetailScreen extends ConsumerStatefulWidget {
  final String artistName;
  const ArtistDetailScreen(this.artistName, {Key? key}) : super(key: key);

  @override
  _ArtistDetailScreenState createState() => _ArtistDetailScreenState();
}

class _ArtistDetailScreenState extends ConsumerState<ArtistDetailScreen> {
  @override
  void initState() {
    ref
        .read(artistDetailNotifierProvider.notifier)
        .fetchDetails(widget.artistName);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(artistDetailNotifierProvider.notifier);

    final artistDetails = ref.watch(artistDetailNotifierProvider);

    return artistDetails.when(
      data: (artist) => Center(
        child: ArtistDetails(artist),
      ),
      error: (e, _, details) => Center(
        child: Text('Error'),
      ),
      loading: (details) {
        //

        return const CircularProgressIndicator();
      },
    );
  }
}

class ArtistDetails extends StatelessWidget {
  final DetailedArtist artist;

  const ArtistDetails(this.artist, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(artist.name),
      ),
      body: ListView(
        children: [
          Text(
            artist.bio.content,
          ),
        ],
      ),
    );
  }
}
