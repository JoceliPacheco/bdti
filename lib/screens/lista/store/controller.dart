import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

import '../item.model.dart';
part 'controller.g.dart';

var uuid = Uuid();

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  ObservableList<Item> lista = [
    Item(id: uuid.v1(), nome: 'Teste'),
    Item(id: uuid.v1(), nome: 'Teste 2')
  ].asObservable();

  @observable
  bool valida = false;

  @action
  adicionaItem(Item model) {
    model.id = uuid.v1();
    lista.add(model);
  }

  @action
  deletaItem(Item model) {
    lista.removeWhere((item) => item.id == model.id);
  }

  @action
  mudaValida(txt) {
    if (txt != '') {
      valida = true;
    } else {
      valida = false;
    }
  }
}
