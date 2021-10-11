import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  static const routeName = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarianFree = false;
  bool _veganFree = false;
  bool _lactoseFree = false;

  Widget _buildSwitchTileList(String title, String description,
      bool currentValue, ValueChanged updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text('Adjust your meal selection',
                style: Theme.of(context).textTheme.headline6),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchTileList(
                    "Gluten-free",
                    'Only include gluten-free meals',
                    _glutenFree,
                    (newValue) => setState(() => _glutenFree = newValue)),
                _buildSwitchTileList(
                    "Lactose-free",
                    'Only include lactose-free meals',
                    _lactoseFree,
                    (newValue) => setState(() => _lactoseFree = newValue)),
                _buildSwitchTileList(
                    "Vegetarian-free",
                    'Only include vegetarian-free meals',
                    _vegetarianFree,
                    (newValue) => setState(() => _vegetarianFree = newValue)),
                _buildSwitchTileList(
                    "Vegan-free",
                    'Only include vegan-free meals',
                    _veganFree,
                    (newValue) => setState(() => _veganFree = newValue)),
              ],
            ),
          ),
        ],
      ),
      drawer: const MainDrawer(),
    );
  }
}
