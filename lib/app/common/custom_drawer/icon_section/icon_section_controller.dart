import 'package:mobx/mobx.dart';

part 'icon_section_controller.g.dart';

class IconSectionController = _IconSectionBase with _$IconSectionController;

abstract class _IconSectionBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
