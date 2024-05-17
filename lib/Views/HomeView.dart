import 'package:flutter/material.dart';
import 'package:project5/Services/NewsServices.dart';
import 'package:project5/Widgets/CategoryCard.dart';
import 'package:project5/Widgets/NewsListView.dart';
import 'package:project5/Widgets/NewsTile.dart';
import 'package:dio/dio.dart';


import '../Models/ArticleModel.dart';
import '../Models/CategoryModel.dart';
import '../ViewModel/NewsListViewBuilderState.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}



class _HomeViewState extends State<HomeView> {

  final List <CategoryModel> caregories= const [
    CategoryModel(image: 'assets/general.jpg', text: 'General'),

    CategoryModel(image: 'assets/business.jpg', text: 'Business'),
  CategoryModel(image: 'assets/health.jpg', text: 'Health'),
  CategoryModel(image: 'assets/science.jpg', text: 'Science'),
  CategoryModel(image: 'assets/sports.jpg', text: 'Sports'),
  CategoryModel(image: 'assets/technology.jpeg', text: 'Technology'),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'App',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 10,),
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: caregories.length,
                  itemBuilder:(context, index) {
                    return CategoryCard(item: caregories[index]);
                  },
              )
            ),

          ),
          SliverToBoxAdapter(
            child:SizedBox(
              height: 10,
            ),

          ),

             NewsListViewBuilderState(CAT: 'general'),
        ],

      ),
    );

  }
}



