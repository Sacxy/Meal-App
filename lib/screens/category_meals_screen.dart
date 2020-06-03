import 'package:flutter/material.dart';

import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {

  static const routeName = '/category-meals';

  // CategoryMealsScreen(this.categoryId,this.categoryTitle);


  @override
  Widget build(BuildContext context) {
  final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String> ;

  final String categoryId = routeArgs['id'];
  final String categoryTitle = routeArgs['title'];
  final categoryMeals = DUMMY_MEALS.where((meal) {
    return meal.categories.contains(categoryId);
  }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(itemBuilder: (ctx,index) {
          
          return Text(categoryMeals[index].title); 

        },itemCount: categoryMeals.length,),);
  }
}
