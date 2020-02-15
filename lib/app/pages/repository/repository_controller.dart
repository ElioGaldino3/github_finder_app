import 'package:dio/dio.dart';
import 'package:github_finder_app/app/shared/models/contributor_model.dart';
import 'package:github_finder_app/app/shared/models/repository_model.dart';
import 'package:mobx/mobx.dart';

part 'repository_controller.g.dart';

class RepositoryController = _RepositoryBase with _$RepositoryController;

abstract class _RepositoryBase with Store {
  @observable
  RepositoryModel repository;

  @observable
  List<ContributorModel> contributors;

  Future getData() async {
    try {
      Response contributors = await Dio().get(repository.contributorsUrl);
      Response languages = await Dio().get(repository.languagesUrl);

      print(contributors.data);
      print(languages.data);
    } catch (e) {
      print(e);
    }
  }
}
