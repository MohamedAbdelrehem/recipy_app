import 'package:flutter/material.dart';
import 'package:recipy_app/Constants/constants.dart';
import 'package:recipy_app/Pages/widgets/recipe_card.dart';
import 'package:recipy_app/model/recipe.api.dart';
import 'package:recipy_app/model/recipe.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
    print(_recipes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryBackground,
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Icon(
            Icons.restaurant_menu,
            color: Colors.white,
          ),
          SizedBox(width: 10),
          Text(
            "Food Recipe",
            style: TextStyle(color: Colors.white),
          ),
        ]),
      ),
      body: Text("test"),
    );
  }
}
