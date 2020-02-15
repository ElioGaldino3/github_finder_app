import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_finder_app/app/pages/repository/repository_controller.dart';
import 'package:github_finder_app/app/widgets/lists/contributor_list.dart';
import 'package:github_finder_app/app/widgets/lists/language_list.dart';
import 'package:github_finder_app/app/widgets/lists/last_commit_list.dart';
import 'package:github_finder_app/app/widgets/loading_git.dart';
import 'package:github_finder_app/app/widgets/title_category.dart';

class RepositoryPage extends StatefulWidget {
  final String title;
  const RepositoryPage({Key key, this.title = "Repository"}) : super(key: key);

  @override
  _RepositoryPageState createState() => _RepositoryPageState();
}

class _RepositoryPageState extends State<RepositoryPage> {
  @override
  Widget build(BuildContext context) {
    RepositoryController controller = Modular.get();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.repository.fullName,
          style: TextStyle(color: Colors.grey[700], fontSize: 12),
        ),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.grey[700]),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey[700],
            ),
            onPressed: () {},
          )
        ],
      ),
      body: FutureBuilder(
        future: controller.getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: LoadingGit(),
            );
          } else {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleCategory(title: "Linguagens"),
                LanguageList(controller.languages),
                TitleCategory(title: "Contribuidores"),
                ContributorList(controller.contributors),
                TitleCategory(title: "Últimos Commits"),
                Expanded(child: LastCommitList(controller.commits))
              ],
            );
          }
        },
      ),
    );
  }
}
