import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'items/contributor_item.dart';

class ContributorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
      child: SizedBox(
        height: 105.0,
        child: ListView(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ContributorItem(name: "Elio Galdino", photoContributorUrl: "https://avatars3.githubusercontent.com/u/112007?v=4",),
            ContributorItem(name: "Hixie", photoContributorUrl: "https://avatars3.githubusercontent.com/u/112007?v=4",),
            ContributorItem(name: "Flutter", photoContributorUrl: "https://avatars3.githubusercontent.com/u/112007?v=4",),
            ContributorItem(name: "Edmundo", photoContributorUrl: "https://avatars3.githubusercontent.com/u/112007?v=4",),
            ContributorItem(name: "Pelé", photoContributorUrl: "https://avatars3.githubusercontent.com/u/112007?v=4",),
            ContributorItem(name: "Pelé", photoContributorUrl: "https://avatars3.githubusercontent.com/u/112007?v=4",),
            ContributorItem(name: "Pelé", photoContributorUrl: "https://avatars3.githubusercontent.com/u/112007?v=4",),
            ContributorItem(name: "Pelé", photoContributorUrl: "https://avatars3.githubusercontent.com/u/112007?v=4",),
            ContributorItem(name: "Pelé", photoContributorUrl: "https://avatars3.githubusercontent.com/u/112007?v=4",),
            ContributorItem(name: "Pelé", photoContributorUrl: "https://avatars3.githubusercontent.com/u/112007?v=4",),
          ],
        ),
      ),
    );
  }
}
