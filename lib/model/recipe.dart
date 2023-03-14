class Recipe {
  late String name;
  late double rating;
  late String cookingTime;
  late String images;
  Recipe(
      {required this.name,
      required this.rating,
      required this.cookingTime,
      required this.images});
  factory Recipe.fromJson(dynamic json) {
    return Recipe(
        name: json['name'] as String,
        rating: json['rating'] as double,
        cookingTime: json['totalTime'] as String,
        images: json['images'][0]['hostedLargeUrl'] as String);
  }
  static List<Recipe> recipesFromSnapShot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe {name: $name,images: $images,rating: $rating,cookingTime: $cookingTime}';
  }
}
