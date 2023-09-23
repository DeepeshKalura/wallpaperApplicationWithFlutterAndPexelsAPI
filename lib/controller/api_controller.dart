import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../model/category_model.dart';
import '../model/photos_model.dart';

class ApiOperations {
  static List<PhotosModel> trendingWallpapers = [];
  static List<PhotosModel> searchWallpapersList = [];
  static List<CategoryModel> cateogryModelList = [];

  static final String _apiKey = dotenv.env['API_KEY']!;

  static get async => null;
  static Future<List<PhotosModel>> getTrendingWallpapers() async {
    await http.get(Uri.parse("https://api.pexels.com/v1/curated"),
        headers: {"Authorization": _apiKey}).then(
      (value) {
        developer.log("RESPONSE REPORT");
        developer.log(value.body);
        Map<String, dynamic> jsonData = jsonDecode(value.body);
        List photos = jsonData['photos'];
        for (var element in photos) {
          trendingWallpapers.add(
            PhotosModel.fromAPI2App(element),
          );
        }
      },
    );

    return trendingWallpapers;
  }

  static Future<List<PhotosModel>> searchWallpapers(String query) async {
    await http.get(
        Uri.parse(
            "https://api.pexels.com/v1/search?query=$query&per_page=30&page=1"),
        headers: {"Authorization": _apiKey}).then((value) {
      Map<String, dynamic> jsonData = jsonDecode(value.body);
      List photos = jsonData['photos'];
      searchWallpapersList.clear();
      for (var element in photos) {
        searchWallpapersList.add(PhotosModel.fromAPI2App(element));
      }
    });

    return searchWallpapersList;
  }

  static Future<List<CategoryModel>> getCategoriesList() async {
    List cateogryName = [
      "Cars",
      "Nature",
      "Bikes",
      "Street",
      "City",
      "Flowers"
    ];
    cateogryModelList.clear();
    for (var catName in cateogryName) {
      final random = Random();

      PhotosModel photoModel =
          (await searchWallpapers(catName))[0 + random.nextInt(11 - 0)];
      developer.log("IMG SRC IS HERE");
      developer.log(photoModel.imgSrc);
      cateogryModelList.add(
        CategoryModel(
          catImgUrl: photoModel.imgSrc,
          catName: catName,
        ),
      );
    }

    return cateogryModelList;
  }
}
