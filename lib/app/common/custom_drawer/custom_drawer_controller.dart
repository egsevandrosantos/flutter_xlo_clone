import 'package:mobx/mobx.dart';

part 'custom_drawer_controller.g.dart';

class CustomDrawerController = _CustomDrawerBase with _$CustomDrawerController;

abstract class _CustomDrawerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
