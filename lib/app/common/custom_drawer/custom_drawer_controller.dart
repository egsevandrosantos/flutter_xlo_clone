import 'package:mobx/mobx.dart';

part 'custom_drawer_controller.g.dart';

class CustomDrawerController = _CustomDrawerBase with _$CustomDrawerController;

abstract class _CustomDrawerBase with Store {
  @observable
  int _pageSelected = 0;
  get pageSelected => _pageSelected;
  @action
  setPageSelected(int pageSelected) {
    if (_pageSelected != pageSelected) _pageSelected = pageSelected;
  }
}
