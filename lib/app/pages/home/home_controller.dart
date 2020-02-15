import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_finder_app/app/shared/models/repository_model.dart';
import 'package:github_finder_app/app/shared/repositories/repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  IRepository repo = Modular.get();

  @observable
  int page = 1;

  @observable
  ObservableList<dynamic> listRepositories = [].asObservable();

  @observable
  String query = "Flutter";

  @observable
  bool isEmpty = true;

  _HomeBase() {
    getData();
  }

  @action
  Future getData() async {
    List<RepositoryModel> newList = await repo.getRepositories(query, page);
    newList.forEach((var repositoryModel) {
      listRepositories.add(repositoryModel);
    });
    if (newList == [])
      isEmpty = true;
    else
      isEmpty = false;
  }

  @action
  searchRepositories(String query) async {
    query = query;
    listRepositories = [].asObservable();
    page = 1;
    List<RepositoryModel> newList = await repo.getRepositories(query, page);
    newList.forEach((var repositoryModel) {
      listRepositories.add(repositoryModel);
    });
    if (newList == [])
      isEmpty = true;
    else
      isEmpty = false;
  }

  @action
  loadingOver() async {
    page += 1;
    List<RepositoryModel> newList = await repo.getRepositories(query, page);
    newList.forEach((var repositoryModel) {
      listRepositories.add(repositoryModel);
    });
    if (newList == [])
      isEmpty = true;
    else
      isEmpty = false;
  }
}
