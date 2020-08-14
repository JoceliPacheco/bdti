import 'package:bdti/screens/lista/item.model.dart';
import 'package:bdti/screens/lista/store/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void abrirModal(BuildContext context, Controller controller) {
  String txt = '';

  var alert = AlertDialog(
    title: Text("Cadastro"),
    content: Observer(builder: (_) {
      return Stack(
        children: [
          TextField(
            onChanged: (v) {
              txt = v;
              controller.mudaValida(txt);
            },
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Digite o nome...'),
          ),
          Visibility(
              visible: !controller.valida,
              child: Text(
                '*Obrigatorio',
                style: TextStyle(color: Colors.red, fontSize: 10),
              )),
        ],
      );
    }),
    actions: [
      FlatButton(
        child: Text("Cancelar"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      FlatButton(
        child: Text("Salvar"),
        onPressed: () {
          if (txt != '') {
            controller.adicionaItem(Item(nome: txt));
            txt = '';
            controller.mudaValida(txt);
            Navigator.of(context).pop();
          }
        },
      )
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
