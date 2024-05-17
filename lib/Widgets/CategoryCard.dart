import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project5/Models/CategoryModel.dart';
import 'package:project5/Views/CategoryView.dart';
import 'package:project5/Views/HomeView.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.item});
final CategoryModel item;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 6.0),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return CategoryView(category: item.text,);

          }));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(item.image),
                  fit:BoxFit.fill
              )
          ),
          child: Center(
            child: Text(item.text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,

              ),
            ),
          ),
          height: 110,
          width: 180,
        ),
      ),
    );
  }
}
