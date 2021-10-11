import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../models/meal.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';
  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  late String categoryTitle;
  late List<Meal> categoryMeals;
  bool _loadedInitData = false;

  void _removeMeal(String mealId) {
    setState(() {
      categoryMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      final categoryId = routeArgs['id'];
      categoryTitle = routeArgs['title'] as String;
      categoryMeals = DUMMY_MEALS
          .where((meal) => meal.categories.contains(categoryId))
          .toList();
      _loadedInitData = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            var meal = categoryMeals[index];
            return MealItem(
              id: meal.id,
              title: meal.title,
              imageUrl: meal.imageUrl,
              duration: meal.duration,
              affordability: meal.affordability,
              complexity: meal.complexity,
              removeItem: _removeMeal,
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
