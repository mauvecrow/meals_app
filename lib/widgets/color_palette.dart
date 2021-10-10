import 'package:flutter/material.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette({Key? key}) : super(key: key);

  Widget buildContainer(String text, Color color) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Text(text),
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    var td = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Palette'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          buildContainer('cs primary', td.colorScheme.primary),
          buildContainer('cs on primary', td.colorScheme.onPrimary),
          buildContainer('cs prime variant', td.colorScheme.primaryVariant),
          buildContainer('cs secondary', td.colorScheme.secondary),
          buildContainer('cs on secondary', td.colorScheme.onSecondary),
          buildContainer(
              'cs secondaryVariant', td.colorScheme.secondaryVariant),
          buildContainer('cs bg', td.colorScheme.background),
          buildContainer('cs on bg', td.colorScheme.onBackground),
          buildContainer('cs surface', td.colorScheme.surface),
          buildContainer('cs on surface', td.colorScheme.onSurface),
          buildContainer('td canvas color', td.canvasColor),
          buildContainer('td bg', td.backgroundColor),
          buildContainer('td shadowColor', td.shadowColor),
          buildContainer(
              'td scaffoldBackgroundColor', td.scaffoldBackgroundColor),
          buildContainer('td bottomAppBarColor', td.bottomAppBarColor),
          buildContainer('td cardColor', td.cardColor),
          buildContainer('td dividerColor', td.dividerColor),
          buildContainer('td focusColor', td.focusColor),
          buildContainer('td hoverColor', td.hoverColor),
          buildContainer('td highlightColor', td.highlightColor),
          buildContainer('td splashColor', td.splashColor),
          buildContainer('td selectedRowColor', td.selectedRowColor),
          buildContainer('td unselectedWidgetColor', td.unselectedWidgetColor),
          buildContainer('td disabledColor', td.disabledColor),
          buildContainer('td secondaryHeaderColor', td.secondaryHeaderColor),
          buildContainer('td dialogBackgroundColor', td.dialogBackgroundColor),
          buildContainer('td indicatorColor', td.indicatorColor),
          buildContainer('td hintColor', td.hintColor),
          buildContainer('td errorColor', td.errorColor),
          buildContainer('td toggleableActiveColor', td.toggleableActiveColor),
        ],
      ),
    );
  }
}
