import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:recipe_2/first.dart';
// import 'package:recipe_2/first.dart';
import 'package:recipe_2/recipe_list.dart';
import 'bloc/recipe_bloc.dart';
// import 'first.dart';
// import 'recipe_list.dart';
// import 'first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => RecipeBloc(),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            titleSpacing: 00.0,
            toolbarHeight: 60.2,
            toolbarOpacity: 0.8,
            title: const Text('Recipe List'),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
            ),
            elevation: 0.00,
            backgroundColor: Colors.greenAccent[400],
          ),
          body: const RecipeList(),
        ),
      ),
    );
  }
}
