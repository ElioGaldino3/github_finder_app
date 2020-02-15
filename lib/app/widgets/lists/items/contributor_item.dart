import 'package:flutter/material.dart';

class ContributorItem extends StatelessWidget {
  final String name;
  final String photoContributorUrl;

  const ContributorItem({Key key, @required this.name, @required this.photoContributorUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white,
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Container(
              width: 80,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(
                            image: NetworkImage(
                                photoContributorUrl))),
                  ),
                  SizedBox(height: 4),
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
