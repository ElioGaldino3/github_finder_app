import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_finder_app/app/pages/home/home_controller.dart';
import 'package:github_finder_app/app/pages/repository/repository_controller.dart';
import 'package:github_finder_app/app/shared/delegates/data_search.dart';
import 'package:github_finder_app/app/shared/models/contributor_model.dart';
import 'package:github_finder_app/app/widgets/loading_git.dart';
import 'package:github_finder_app/app/widgets/repository_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Github",
          style: TextStyle(color: Colors.grey[700]),
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
            onPressed: () async {
              String query =
                  await showSearch(context: context, delegate: DataSearch());
              print(query);
              if (query == null || query.isEmpty)
                return;
              else
                controller.searchRepositories(query);
            },
          )
        ],
      ),
      body: Observer(builder: (_) {
        if (controller.listRepositories == null)
          return Center(child: LoadingGit());
        else if (controller.isEmpty)
          return Center(child: LoadingGit());
        return ListView.builder(
          itemCount: controller.listRepositories.length < 10
              ? controller.listRepositories.length
              : controller.listRepositories.length + 1,
          itemBuilder: (context, index) {
            if ((controller.listRepositories.length) == index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: RaisedButton(
                    color: Colors.lightGreen,
                    child: Text("Carregar Mais"),
                    onPressed: () {
                      controller.loadingOver();
                    }),
              );
            }
            return RepositoryTile(
              title: controller.listRepositories[index].name ?? "No Name",
              description: controller.listRepositories[index].description ?? "No Description",
              photoOwnerUrl: controller.listRepositories[index].owner.avatarUrl ?? "No Photo",
              onTap: () {
                Modular.get<RepositoryController>().repository =
                    controller.listRepositories[index];
                Modular.to.pushNamed('/repository');
              },
            );
          },
        );
      }),
    );
  }
}
