import 'package:flutter/material.dart';

class TitleCategory extends StatelessWidget {
  final String title;

  const TitleCategory({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 22),
      child: Text(title,
          style: TextStyle(color: Colors.grey[600], fontSize: 13)),
    );
  }
}
