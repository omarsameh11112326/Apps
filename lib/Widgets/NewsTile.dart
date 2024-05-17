import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/ArticleModel.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0,right: 6.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child:articleModel.image !=null ?
              Image.network(
                articleModel.image?? 'assets/technology.jpeg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ):  Image.asset(
                 'assets/technology.jpeg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subTitle ?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(
            height: 12,
          ),

        ],
      ),
    );
  }
}