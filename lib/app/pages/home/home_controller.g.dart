// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$pageAtom = Atom(name: '_HomeBase.page');

  @override
  int get page {
    _$pageAtom.context.enforceReadPolicy(_$pageAtom);
    _$pageAtom.reportObserved();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.context.conditionallyRunInAction(() {
      super.page = value;
      _$pageAtom.reportChanged();
    }, _$pageAtom, name: '${_$pageAtom.name}_set');
  }

  final _$listRepositoriesAtom = Atom(name: '_HomeBase.listRepositories');

  @override
  ObservableList<dynamic> get listRepositories {
    _$listRepositoriesAtom.context.enforceReadPolicy(_$listRepositoriesAtom);
    _$listRepositoriesAtom.reportObserved();
    return super.listRepositories;
  }

  @override
  set listRepositories(ObservableList<dynamic> value) {
    _$listRepositoriesAtom.context.conditionallyRunInAction(() {
      super.listRepositories = value;
      _$listRepositoriesAtom.reportChanged();
    }, _$listRepositoriesAtom, name: '${_$listRepositoriesAtom.name}_set');
  }

  final _$queryAtom = Atom(name: '_HomeBase.query');

  @override
  String get query {
    _$queryAtom.context.enforceReadPolicy(_$queryAtom);
    _$queryAtom.reportObserved();
    return super.query;
  }

  @override
  set query(String value) {
    _$queryAtom.context.conditionallyRunInAction(() {
      super.query = value;
      _$queryAtom.reportChanged();
    }, _$queryAtom, name: '${_$queryAtom.name}_set');
  }

  final _$isEmptyAtom = Atom(name: '_HomeBase.isEmpty');

  @override
  bool get isEmpty {
    _$isEmptyAtom.context.enforceReadPolicy(_$isEmptyAtom);
    _$isEmptyAtom.reportObserved();
    return super.isEmpty;
  }

  @override
  set isEmpty(bool value) {
    _$isEmptyAtom.context.conditionallyRunInAction(() {
      super.isEmpty = value;
      _$isEmptyAtom.reportChanged();
    }, _$isEmptyAtom, name: '${_$isEmptyAtom.name}_set');
  }

  final _$getDataAsyncAction = AsyncAction('getData');

  @override
  Future<dynamic> getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  final _$searchRepositoriesAsyncAction = AsyncAction('searchRepositories');

  @override
  Future searchRepositories(String query) {
    return _$searchRepositoriesAsyncAction
        .run(() => super.searchRepositories(query));
  }

  final _$loadingOverAsyncAction = AsyncAction('loadingOver');

  @override
  Future loadingOver() {
    return _$loadingOverAsyncAction.run(() => super.loadingOver());
  }

  @override
  String toString() {
    final string =
        'page: ${page.toString()},listRepositories: ${listRepositories.toString()},query: ${query.toString()},isEmpty: ${isEmpty.toString()}';
    return '{$string}';
  }
}
