import 'package:github_finder_app/app/shared/models/repository_model.dart';
import 'package:mobx/mobx.dart';

part 'repository_controller.g.dart';

class RepositoryController = _RepositoryBase with _$RepositoryController;

abstract class _RepositoryBase with Store {

  RepositoryModel repository;
  
}
