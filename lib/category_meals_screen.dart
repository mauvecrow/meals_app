// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String id;
  final String title;

  CategoryMealsScreen(this.id, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text(
          'The recipes for the category!',
        ),
      ),
    );
  }
}
