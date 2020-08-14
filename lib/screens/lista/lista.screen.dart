import 'package:bdti/screens/lista/store/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'components/itemCard.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Observer(builder: (BuildContext context) {
      return ListView.builder(
          itemCount: controller.lista.length,
          itemBuilder: (context, index) {
            final item = controller.lista[index];
            return ItemCard(item: item, controller: controller);
          });
    });
  }
}
