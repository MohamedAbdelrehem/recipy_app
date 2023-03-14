class Recipe {
  String name;
  double rating;
  String cookingTime;
  String images;
  Recipe({this.name, this.rating, this.cookingTime, this.images});
  factory Recipe.fromJson(dynamic json) {
    return Recipe(
      name: json['name'] as String,
      images: json['images'][0]['hostedLargeUrl'] as String,
      rating: json['rating'] as double,
      cookingTime: json['totalTime'] as String,
    );
  }
  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe {name: $name,image: $images,rating: $rating,cookingTime: $cookingTime}';
  }
}
