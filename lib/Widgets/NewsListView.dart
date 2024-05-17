import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/ArticleModel.dart';
import '../Services/NewsServices.dart';
import 'NewsTile.dart';




class NewsListView extends StatelessWidget {
  final List <ArticleModel> Articles ;

  const NewsListView({super.key,required this.Articles});

@override
  Widget build(BuildContext context) {
    return  SliverList(delegate: SliverChildBuilderDelegate(
        childCount: Articles.length,
            (context, index) {
          return NewsTile(articleModel: Articles[index]);


        }))
    ;
  }
}
