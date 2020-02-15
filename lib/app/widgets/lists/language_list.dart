import 'package:flutter/material.dart';

class LanguageList extends StatelessWidget {
  final List<String> languages;

  const LanguageList(this.languages);

  @override
  Widget build(BuildContext context) {
    if (languages == null)
      return Center(
        child: Text("Ocorreu algum erro ou não há linguagens"),
      );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
      child: SizedBox(
        height: 30.0,
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: languages.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    child: Text(languages[index]),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
