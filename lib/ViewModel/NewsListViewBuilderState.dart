import 'package:flutter/material.dart';
import 'package:project5/Widgets/NewsListView.dart';

import '../Models/ArticleModel.dart';
import '../Services/NewsServices.dart';
import 'package:dio/dio.dart';

class NewsListViewBuilderState extends StatefulWidget {
const NewsListViewBuilderState({super.key, required this.CAT,});
final String CAT;
  @override
  State<NewsListViewBuilderState> createState() => _NewsListViewBuilderStateState( );
}

class _NewsListViewBuilderStateState extends State<NewsListViewBuilderState> {
  @override
  var future;
  void initState() {
    super.initState();
    future=NewsServices(Dio()).GetNews(Category: widget.CAT);
  }
  @override

  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context,snapshot){
          if(snapshot.hasData) {
            return NewsListView(Articles: snapshot.data !);
          }else if(snapshot.hasError){
            return const SliverToBoxAdapter(
              child: Text('OPPSSSS'),
            );
          }else {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        }
    );
  }
}
