import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_finder_app/app/shared/models/commit_model.dart';
import 'package:github_finder_app/app/shared/models/contributor_model.dart';
import 'package:github_finder_app/app/shared/models/repository_model.dart';
import 'package:github_finder_app/app/shared/repositories/repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'repository_controller.g.dart';

class RepositoryController = _RepositoryBase with _$RepositoryController;

abstract class _RepositoryBase with Store {
  IRepository _repo = Modular.get();

  @observable
  RepositoryModel repository;

  @observable
  List<ContributorModel> contributors;

  @observable
  List<CommitModel> commits;

  @observable
  List<String> languages;

  Future getData() async {
    contributors = await _repo.getContributors(repository.contributorsUrl);
    languages = await _repo.getLanguages(repository.languagesUrl);
    var teste = repository.commitsUrl.replaceAll("{/sha}", "");
    commits = await _repo.getCommits(teste);
  }
}
