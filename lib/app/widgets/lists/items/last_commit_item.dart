import 'package:flutter/material.dart';

class LastCommitItem extends StatelessWidget {
  final String name;
  final String photoUserUrl;
  final String commit;

  const LastCommitItem(
      {Key key,
      @required this.name,
      @required this.photoUserUrl,
      @required this.commit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white,
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(13),
                      image: DecorationImage(image: NetworkImage(photoUserUrl))),
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        commit,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                        overflow: TextOverflow.fade,
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
