import 'package:flutter/material.dart';

class SearchDialogWidget extends StatefulWidget {
  final String currentSearch;
  SearchDialogWidget({this.currentSearch});

  @override
  _SearchDialogWidgetState createState() =>
      _SearchDialogWidgetState(this.currentSearch);
}

class _SearchDialogWidgetState extends State<SearchDialogWidget> {
  final TextEditingController _currentSearchController;

  _SearchDialogWidgetState(String currentSearch)
      : this._currentSearchController =
            TextEditingController(text: currentSearch);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 2,
          right: 2,
          left: 2,
          child: Card(
            child: TextField(
              controller: _currentSearchController,
              textInputAction: TextInputAction.search,
              autofocus: true,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  border: InputBorder.none,
                  prefixIcon: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.grey[700],
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.close),
                    color: Colors.grey[700],
                    onPressed: () {
                      _currentSearchController.clear();
                    },
                  )),
              onSubmitted: (value) {
                Navigator.of(context).pop(value);
              },
            ),
          ),
        )
      ],
    );
  }
}
