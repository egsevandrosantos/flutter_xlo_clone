import 'package:mobx/mobx.dart';

part 'icon_section_controller.g.dart';

class IconSectionController = _IconSectionBase with _$IconSectionController;

abstract class _IconSectionBase with Store {
  @observable
  int _pageSelected = 0;
  get pageSelected => _pageSelected;
  @action
  setPageSelected(int pageSelected) { if (_pageSelected != pageSelected) _pageSelected = pageSelected; }
}
