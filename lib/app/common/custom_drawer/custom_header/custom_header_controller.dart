import 'package:mobx/mobx.dart';

part 'custom_header_controller.g.dart';

class CustomHeaderController = _CustomHeaderBase with _$CustomHeaderController;

abstract class _CustomHeaderBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
