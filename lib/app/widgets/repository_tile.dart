import 'package:flutter/material.dart';

class RepositoryTile extends StatelessWidget {
  final String title;
  final String description;
  final String photoOwnerUrl;
  final Function onTap;

  const RepositoryTile({
    Key key,
    @required this.title,
    @required this.description,
    @required this.photoOwnerUrl,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(13)),
          height: 90,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(13),
                      image:
                          DecorationImage(image: NetworkImage(photoOwnerUrl))),
                  width: 70,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Flexible(
                        child: Text(
                          description,
                          softWrap: false,
                          style: TextStyle(color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
