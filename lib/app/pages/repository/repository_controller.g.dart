// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RepositoryController on _RepositoryBase, Store {
  final _$repositoryAtom = Atom(name: '_RepositoryBase.repository');

  @override
  RepositoryModel get repository {
    _$repositoryAtom.context.enforceReadPolicy(_$repositoryAtom);
    _$repositoryAtom.reportObserved();
    return super.repository;
  }

  @override
  set repository(RepositoryModel value) {
    _$repositoryAtom.context.conditionallyRunInAction(() {
      super.repository = value;
      _$repositoryAtom.reportChanged();
    }, _$repositoryAtom, name: '${_$repositoryAtom.name}_set');
  }

  final _$contributorsAtom = Atom(name: '_RepositoryBase.contributors');

  @override
  List<ContributorModel> get contributors {
    _$contributorsAtom.context.enforceReadPolicy(_$contributorsAtom);
    _$contributorsAtom.reportObserved();
    return super.contributors;
  }

  @override
  set contributors(List<ContributorModel> value) {
    _$contributorsAtom.context.conditionallyRunInAction(() {
      super.contributors = value;
      _$contributorsAtom.reportChanged();
    }, _$contributorsAtom, name: '${_$contributorsAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'repository: ${repository.toString()},contributors: ${contributors.toString()}';
    return '{$string}';
  }
}
