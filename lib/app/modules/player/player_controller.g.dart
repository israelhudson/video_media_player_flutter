// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlayerController on _PlayerBase, Store {
  final _$valueAtom = Atom(name: '_PlayerBase.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$videoListAtom = Atom(name: '_PlayerBase.videoList');

  @override
  List<VideoModel> get videoList {
    _$videoListAtom.context.enforceReadPolicy(_$videoListAtom);
    _$videoListAtom.reportObserved();
    return super.videoList;
  }

  @override
  set videoList(List<VideoModel> value) {
    _$videoListAtom.context.conditionallyRunInAction(() {
      super.videoList = value;
      _$videoListAtom.reportChanged();
    }, _$videoListAtom, name: '${_$videoListAtom.name}_set');
  }

  final _$videoModelAtom = Atom(name: '_PlayerBase.videoModel');

  @override
  VideoModel get videoModel {
    _$videoModelAtom.context.enforceReadPolicy(_$videoModelAtom);
    _$videoModelAtom.reportObserved();
    return super.videoModel;
  }

  @override
  set videoModel(VideoModel value) {
    _$videoModelAtom.context.conditionallyRunInAction(() {
      super.videoModel = value;
      _$videoModelAtom.reportChanged();
    }, _$videoModelAtom, name: '${_$videoModelAtom.name}_set');
  }

  final _$_PlayerBaseActionController = ActionController(name: '_PlayerBase');

  @override
  void increment() {
    final _$actionInfo = _$_PlayerBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_PlayerBaseActionController.endAction(_$actionInfo);
    }
  }
}
