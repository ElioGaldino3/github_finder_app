import 'package:flutter/material.dart';
import 'package:github_finder_app/app/shared/models/commit_model.dart';
import 'package:github_finder_app/app/widgets/lists/items/last_commit_item.dart';

class LastCommitList extends StatelessWidget {
  final List<CommitModel> commits;

  const LastCommitList(this.commits);

  @override
  Widget build(BuildContext context) {
    if (commits == null)
      return Center(
        child: Text("Ocorreu algum erro ou não há commits"),
      );
    return Padding(
      padding: const EdgeInsets.only(top: 13, left: 22, right: 22, bottom: 0),
      child: SizedBox(
        child: ListView.builder(
          itemCount: commits.length,
          itemBuilder: (context, index) {
            return LastCommitItem(
              name: commits[index].author.login,
              photoUserUrl: commits[index].author.avatarUrl,
              commit: commits[index].commit.message,
            );
          },
        ),
      ),
    );
  }
}
