import 'package:flutter/material.dart';
import './favorite_screen.dart';
import './categories_screen.dart';
import '../widgets/color_palette.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Meals'),
          actions: [
            IconButton(
              icon: const Icon(Icons.palette),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const ColorPalette()));
              },
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(icon: Icon(Icons.favorite), text: 'Favorite'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CategoriesScreen(),
            FavoriteScreen(),
          ],
        ),
      ),
    );
  }
}
