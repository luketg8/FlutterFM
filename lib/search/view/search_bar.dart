import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fm/core/view/context_extensions.dart';

class SearchBar extends StatefulWidget {
  final Function(String) onSearched;

  const SearchBar({
    Key? key,
    required this.onSearched,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _controller = TextEditingController();
  Timer? _debounce;
  String _searchTerm = '';

  @override
  void initState() {
    _controller.addListener(_debounceListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_debounceListener);
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search_rounded,
          color: Theme.of(context).primaryColor,
        ),
        hintText: context.strings.searchPrompt,
      ),
    );
  }

  void _debounceListener() {
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }

    _debounce = Timer(
      const Duration(milliseconds: 300),
      () {
        if (_searchTerm == _controller.text || _controller.text.isEmpty) {
          return;
        }

        _searchTerm = _controller.text;

        WidgetsBinding.instance!.addPostFrameCallback(
          (_) => widget.onSearched.call(_searchTerm),
        );

        setState(() {});
      },
    );
  }
}
