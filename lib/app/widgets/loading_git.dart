import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class LoadingGit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      child: FlareActor('assets/animations/loading_git.flr', animation: "loading",),
    );
  }
}
