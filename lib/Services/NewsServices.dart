
import 'package:dio/dio.dart';
import 'package:project5/Models/ArticleModel.dart';

class NewsServices{

  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> GetNews({required String Category}) async {
    try{
      Response response;
      response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=$Category&apiKey=cb29898ed7cc48fab27dbcac846393c5');
      Map< String , dynamic> json =response.data;
      List<dynamic> articles=json['articles'] ;
      List<ArticleModel> ARTLIST = [];
      for (var Article in articles){
        ArticleModel ArtModel=ArticleModel.fromjson(Article);
        ARTLIST.add(ArtModel);
      }
      return ARTLIST;
    }catch(e){
      return [];
    }

  }

}