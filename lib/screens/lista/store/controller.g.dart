// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  final _$listaAtom = Atom(name: 'ControllerBase.lista');

  @override
  ObservableList<Item> get lista {
    _$listaAtom.reportRead();
    return super.lista;
  }

  @override
  set lista(ObservableList<Item> value) {
    _$listaAtom.reportWrite(value, super.lista, () {
      super.lista = value;
    });
  }

  final _$validaAtom = Atom(name: 'ControllerBase.valida');

  @override
  bool get valida {
    _$validaAtom.reportRead();
    return super.valida;
  }

  @override
  set valida(bool value) {
    _$validaAtom.reportWrite(value, super.valida, () {
      super.valida = value;
    });
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  dynamic adicionaItem(Item model) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.adicionaItem');
    try {
      return super.adicionaItem(model);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic deletaItem(Item model) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.deletaItem');
    try {
      return super.deletaItem(model);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudaValida(dynamic txt) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.mudaValida');
    try {
      return super.mudaValida(txt);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
lista: ${lista},
valida: ${valida}
    ''';
  }
}
