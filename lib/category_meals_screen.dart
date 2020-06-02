import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {


  // CategoryMealsScreen(this.categoryId,this.categoryTitle);


  @override
  Widget build(BuildContext context) {
  final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String> ;

  final String categoryId = routeArgs['id'];
  final String categoryTitle = routeArgs['title'];
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: Center(
          child: Text(categoryTitle),
        ));
  }
}
