import 'package:flutter/material.dart';
import 'package:flutter_fm/artist_detail/artist_detail.dart';

class SimilarArtists extends StatelessWidget {
  final List<SimilarArtist> similarArtists;
  const SimilarArtists(this.similarArtists, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: similarArtists.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, idx) {
          final artist = similarArtists[idx];
          print(artist.mbid);
          return InkWell(
            onTap: artist.mbid != null
                ? () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ArtistDetailScreen(artist.mbid!),
                      ),
                    )
                : null,
            child: AspectRatio(
              aspectRatio: 2,
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(artist.name),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
