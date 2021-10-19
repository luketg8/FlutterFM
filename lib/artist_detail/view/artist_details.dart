import 'package:flutter/material.dart';
import 'package:flutter_fm/artist_detail/artist_detail.dart';
import 'package:flutter_fm/core/view/context_extensions.dart';
import 'package:flutter_fm/core/view/text_utils.dart';

class ArtistDetails extends StatelessWidget {
  final ArtistDetailState artistDetailState;

  const ArtistDetails(this.artistDetailState, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final artist = artistDetailState.details;

    return Scaffold(
      appBar: AppBar(
        title: Text(artist.name),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
            //
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ListView.separated(
                shrinkWrap: true,
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount: artist.tags.tag.length,
                separatorBuilder: (_, __) => const SizedBox(width: 5),
                itemBuilder: (context, idx) => Chip(
                  label: Text(
                    artist.tags.tag[idx].name,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              context.strings.artistBio,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 5),
            ExpandableText(
              artist.bio.content,
            ),
            const SizedBox(height: 10),
            Text(
              context.strings.similarArtists(artist.name),
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 10),
            SimilarArtists(artistDetailState.similarArtists),
          ],
        ),
      ),
    );
  }
}

class ExpandableText extends StatefulWidget {
  final String? text;
  final int maxLines;
  const ExpandableText(
    this.text, {
    Key? key,
    this.maxLines = 8,
  }) : super(key: key);

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final textProperties = TextUtils.getTextProperties(
          widget.text,
          style: Theme.of(context).textTheme.bodyText2!,
          maxWidth: constraints.maxWidth,
          maxLines: widget.maxLines,
        );

        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: !textProperties.willOverflow
              ? null
              : () => setState(() => _expanded = !_expanded),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedSize(
                duration: const Duration(milliseconds: 150),
                alignment: Alignment.topCenter,
                child: Text(
                  widget.text!,
                  overflow: TextOverflow.fade,
                  maxLines: _expanded
                      ? textProperties.numberOfLines
                      : widget.maxLines,
                ),
              ),
              if (textProperties.willOverflow)
                Center(
                  child: Icon(
                    _expanded
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
