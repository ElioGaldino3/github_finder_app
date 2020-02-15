import 'package:github_finder_app/app/shared/models/commit_model.dart';
import 'package:github_finder_app/app/shared/models/contributor_model.dart';
import 'package:github_finder_app/app/shared/models/repository_model.dart';

abstract class IRepository {
  Future<List<RepositoryModel>> getRepositories(String query, int page);
  Future<List<ContributorModel>> getContributors(String apiUrl);
  Future<List<CommitModel>> getCommits(String apiUrl);
  Future<List<String>> getLanguages(String apiUrl);
}
