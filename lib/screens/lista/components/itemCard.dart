import 'package:bdti/screens/lista/store/controller.dart';
import 'package:flutter/material.dart';

import '../item.model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
    @required this.item,
    @required this.controller,
  }) : super(key: key);

  final Item item;
  final Controller controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 9,
              child: Text(' ${item.nome} '),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                  onTap: () {
                    controller.deletaItem(item);
                  },
                  child: Icon(Icons.delete)),
            ),
          ],
        ),
      ),
    );
  }
}
