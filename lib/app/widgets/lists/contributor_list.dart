import 'package:flutter/material.dart';
import 'package:github_finder_app/app/shared/models/contributor_model.dart';

import 'items/contributor_item.dart';

class ContributorList extends StatelessWidget {
  final List<ContributorModel> contributors;

  const ContributorList(this.contributors);

  @override
  Widget build(BuildContext context) {
    if (contributors == null)
      return Center(
        child: Text("Ocorreu algum erro ou não há contribuidores"),
      );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
      child: SizedBox(
        height: 105.0,
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: contributors.length,
          itemBuilder: (context, index) {
            return ContributorItem(
              name: contributors[index].login,
              photoContributorUrl: contributors[index].avatarUrl,
            );
          },
        ),
      ),
    );
  }
}
