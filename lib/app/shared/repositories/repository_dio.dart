import 'package:dio/dio.dart';
import 'package:github_finder_app/app/shared/models/commit_model.dart';
import 'package:github_finder_app/app/shared/models/contributor_model.dart';
import 'package:github_finder_app/app/shared/models/repository_model.dart';
import 'package:github_finder_app/app/shared/repositories/repository_interface.dart';

class RepositoryDio implements IRepository {
  @override
  Future<List<RepositoryModel>> getRepositories(String query, int page) async {
    try {
      Response response = await Dio().get(
          "https://api.github.com/search/repositories?q=$query&page=$page&per_page=10");
      if (response.data['items'] == null || response.data['items'].isEmpty) {
        return [];
      }
      return RepositoryModel.fromJsonList(response.data['items']);
    } catch (e) {
      print("DEU ALGUM ERRO AO PEGAR REPOSITÓRIOS!!");
      print(e);
      return null;
    }
  }

  @override
  Future<List<ContributorModel>> getContributors(String apiUrl) async {
    try {
      Response response = await Dio().get(apiUrl);
      return ContributorModel.fromJsonList(response.data);
    } catch (e) {
      print("DEU ALGUM ERRO AO PEGAR CONTRIBUIDORES!!");
      print(e);
      return null;
    }
  }

  @override
  Future<List<String>> getLanguages(String apiUrl) async {
    try {
      Response response = await Dio().get(apiUrl);
      List<String> languages = [];
      response.data.forEach((key, value) {
        languages.add(key);
      });
      return languages;
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Future<List<CommitModel>> getCommits(String apiUrl) async {
    try {
      Response response = await Dio().get(apiUrl);
      List<CommitModel> commits = [];
      response.data.forEach((commit) {
        commits.add(CommitModel.fromJson(commit));
      });
      return commits;
    } catch (e) {
      print("DEU ALGUM ERRO AO PEGAR COMMITS!!");
      print(e);
      return null;
    }
  }
}
