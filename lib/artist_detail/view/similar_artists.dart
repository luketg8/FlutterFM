import 'package:flutter/material.dart';
import 'package:flutter_fm/artist_detail/artist_detail.dart';

class SimilarArtists extends StatelessWidget {
  final List<SimilarArtist> similarArtists;
  const SimilarArtists(this.similarArtists, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: similarArtists.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, idx) {
          final artist = similarArtists[idx];

          return GestureDetector(
            onTap: artist.mbid != null
                ? () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ArtistDetailScreen(artist.mbid!),
                      ),
                    )
                : null,
            child: Card(
              child: Container(
                constraints: const BoxConstraints(minWidth: 50, maxWidth: 150),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.music_note),
                    const SizedBox(width: 5),
                    Flexible(
                      child: Text(
                        artist.name,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
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
