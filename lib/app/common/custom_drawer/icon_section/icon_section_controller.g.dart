// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon_section_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$IconSectionController on _IconSectionBase, Store {
  final _$_pageSelectedAtom = Atom(name: '_IconSectionBase._pageSelected');

  @override
  int get _pageSelected {
    _$_pageSelectedAtom.context.enforceReadPolicy(_$_pageSelectedAtom);
    _$_pageSelectedAtom.reportObserved();
    return super._pageSelected;
  }

  @override
  set _pageSelected(int value) {
    _$_pageSelectedAtom.context.conditionallyRunInAction(() {
      super._pageSelected = value;
      _$_pageSelectedAtom.reportChanged();
    }, _$_pageSelectedAtom, name: '${_$_pageSelectedAtom.name}_set');
  }

  final _$_IconSectionBaseActionController =
      ActionController(name: '_IconSectionBase');

  @override
  dynamic setPageSelected(int pageSelected) {
    final _$actionInfo = _$_IconSectionBaseActionController.startAction();
    try {
      return super.setPageSelected(pageSelected);
    } finally {
      _$_IconSectionBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = '';
    return '{$string}';
  }
}
