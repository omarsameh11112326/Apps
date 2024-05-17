import 'package:flutter/material.dart';
import 'package:project5/ViewModel/NewsListViewBuilderState.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        
        slivers: [



          NewsListViewBuilderState(CAT: category),
        ],

      ),
    );
  }
}
