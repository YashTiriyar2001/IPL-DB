import 'package:flutter/material.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Map<String, dynamic> recipe;

  RecipeDetailScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 00.0,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        title: Text(recipe['label']),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.greenAccent[400],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(recipe['image']),
            const SizedBox(height: 16.0),
            Text('Source: ${recipe['source']}'),
            Text('Yield: ${recipe['yield']} servings'),
            Text('Calories: ${recipe['calories']} kcal'),
            Text('Total Weight: ${recipe['totalWeight']} g'),
            const SizedBox(height: 16.0),
            const Text(
              'Ingredients:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var i = 0; i < (recipe['ingredients'] as List).length; i++)
                  _buildIngredientCard(i + 1, recipe['ingredients'][i]),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIngredientCard(int index, Map<String, dynamic> ingredient) {
    final text = ingredient['text'];
    final quantity = ingredient['quantity'];
    final measure = ingredient['measure'];
    final food = ingredient['food'];
    final weight = ingredient['weight'];
    final foodCategory = ingredient['foodCategory'];
    final image = ingredient['image'];

    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ingredient $index:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Text: $text'),
            const SizedBox(height: 8.0),
            Text('Quantity: $quantity $measure'),
            Text('Food: $food'),
            Text('Weight: $weight g'),
            Text('Food Category: $foodCategory'),
            const SizedBox(height: 8.0),
            Image.network(image),
          ],
        ),
      ),
    );
  }
}
