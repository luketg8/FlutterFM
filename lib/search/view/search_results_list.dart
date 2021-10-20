import 'package:flutter/material.dart';
import 'package:flutter_fm/artist_detail/artist_detail.dart';
import 'package:flutter_fm/core/view/context_extensions.dart';
import 'package:flutter_fm/search/domain/searched_artist.dart';
import 'package:flutter_fm/search/search.dart';

class SearchResultsList extends StatefulWidget {
  final SearchState _searchResults;
  final VoidCallback onNextPageRequested;

  const SearchResultsList(
    this._searchResults, {
    Key? key,
    required this.onNextPageRequested,
  }) : super(key: key);

  @override
  _SearchResultsListState createState() => _SearchResultsListState();
}

class _SearchResultsListState extends State<SearchResultsList> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    _controller.addListener(_paginationListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_paginationListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _controller,
      itemCount: widget._searchResults.artists.length,
      separatorBuilder: (_, __) => const SizedBox(height: 15),
      itemBuilder: (context, idx) {
        final artist = widget._searchResults.artists[idx];

        return _ArtistResultTile(artist);
      },
    );
  }

  void _paginationListener() {
    if (!_controller.hasClients || !widget._searchResults.nextPageAvailable) {
      return;
    }

    final maxScroll = _controller.position.maxScrollExtent;
    final currentScroll = _controller.offset;

    if (currentScroll >= (maxScroll * 0.9)) {
      widget.onNextPageRequested();
    }
  }
}

class _ArtistResultTile extends StatelessWidget {
  final SearchedArtist artist;
  const _ArtistResultTile(this.artist, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ArtistDetailScreen(artist.mbid),
        ),
      ),
      leading: const Icon(Icons.music_note_rounded),
      title: Text(artist.name),
      subtitle: Text(context.strings.searchArtistListeners(artist.listeners)),
    );
  }
}
