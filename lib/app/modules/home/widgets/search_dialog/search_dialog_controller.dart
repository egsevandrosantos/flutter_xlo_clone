import 'package:mobx/mobx.dart';

part 'search_dialog_controller.g.dart';

class SearchDialogController = _SearchDialogBase with _$SearchDialogController;

abstract class _SearchDialogBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
