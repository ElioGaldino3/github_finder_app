// To parse this JSON data, do
//
//     final languageModel = languageModelFromJson(jsonString);

import 'dart:convert';

Map<String, int> languageModelFromJson(String str) =>
    Map.from(json.decode(str)).map((k, v) => MapEntry<String, int>(k, v));

String languageModelToJson(Map<String, int> data) =>
    json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v)));

