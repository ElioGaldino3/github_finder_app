import 'package:dio/dio.dart';
import 'package:github_finder_app/app/shared/models/contributor_model.dart';
import 'package:github_finder_app/app/shared/models/language_model.dart';
import 'package:github_finder_app/app/shared/models/repository_model.dart';
import 'package:github_finder_app/app/shared/repositories/repository_interface.dart';

class RepositoryDio implements IRepository {
  @override
  Future<List<RepositoryModel>> getRepositories(String query, int page) async {
    Response response = await Dio().get(
        "https://api.github.com/search/repositories?q=$query&page=$page&per_page=10");
    if (response.data['items'] == null || response.data['items'].isEmpty) {
      return [];
    }
    return RepositoryModel.fromJsonList(response.data['items']);
  }

  @override
  Future<List<ContributorModel>> getContributors(String apiUrl) async {
    try {
      Response response = await Dio().get(apiUrl);
      return ContributorModel.fromJsonList(response.data);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<Map<String, int>> getLanguages(String apiUrl) async {
    try {
      Response response = await Dio().get(apiUrl);
      return languageModelFromJson(response.data);
    } catch (e) {
      return null;
    }
  }
}
