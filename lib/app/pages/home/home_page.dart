import 'package:flutter/material.dart';
import 'package:github_finder_app/app/widgets/loading_git.dart';
import 'package:github_finder_app/app/widgets/repository_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          RepositoryTile(
            title: "eliana_app",
            description: "description",
            photoOwnerUrl:
                "https://avatars3.githubusercontent.com/u/14101776?v=4",
            onTap: () {
              
            },
          ),
        ],
      ),
    );
  }
}
