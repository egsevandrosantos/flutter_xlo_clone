import 'package:mobx/mobx.dart';

part 'base_controller.g.dart';

class BaseController = _BaseBase with _$BaseController;

abstract class _BaseBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
