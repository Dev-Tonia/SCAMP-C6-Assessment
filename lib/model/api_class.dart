// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Recipe> welcomeFromJson(String str) =>
    List<Recipe>.from(json.decode(str).map((x) => Recipe.fromJson(x)));

String welcomeToJson(List<Recipe> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Recipe {
  Recipe({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.steps,
    required this.servings,
    required this.image,
  });

  int id;
  String name;
  List<Ingredient> ingredients;
  List<Step> steps;
  int servings;
  String image;

  factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        id: json["id"],
        name: json["name"],
        ingredients: List<Ingredient>.from(
            json["ingredients"].map((x) => Ingredient.fromJson(x))),
        steps: List<Step>.from(json["steps"].map((x) => Step.fromJson(x))),
        servings: json["servings"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
        "steps": List<dynamic>.from(steps.map((x) => x.toJson())),
        "servings": servings,
        "image": image,
      };
}

class Ingredient {
  Ingredient({
    required this.quantity,
    required this.measure,
    required this.ingredient,
  });

  double quantity;
  String measure;
  String ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        quantity: json["quantity"].toDouble(),
        measure: json["measure"],
        ingredient: json["ingredient"],
      );

  Map<String, dynamic> toJson() => {
        "quantity": quantity,
        "measure": measure,
        "ingredient": ingredient,
      };
}

class Step {
  Step({
    required this.id,
    required this.shortDescription,
    required this.description,
    required this.videoUrl,
    required this.thumbnailUrl,
  });

  int id;
  String shortDescription;
  String description;
  String videoUrl;
  String thumbnailUrl;

  factory Step.fromJson(Map<String, dynamic> json) => Step(
        id: json["id"],
        shortDescription: json["shortDescription"],
        description: json["description"],
        videoUrl: json["videoURL"],
        thumbnailUrl: json["thumbnailURL"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "shortDescription": shortDescription,
        "description": description,
        "videoURL": videoUrl,
        "thumbnailURL": thumbnailUrl,
      };
}
