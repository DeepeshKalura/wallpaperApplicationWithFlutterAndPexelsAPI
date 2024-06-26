import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import '../../controller/api_controller.dart';
import '../../model/category_model.dart';
import '../../model/photos_model.dart';
import '../widgets/cat_block.dart';
import '../widgets/custom_app_bar.dart';
import './full_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<PhotosModel> trendingWallList;
  late List<CategoryModel> catModList = [];
  bool isLoading = true;

  getCatDetails() async {
    catModList = await ApiController.getCategoriesList();
    developer.log("Getting Cat Mod List");
    developer.log(catModList.toString());
    setState(() {
      catModList = catModList;
    });
  }

  getTrendingWallpapers() async {
    trendingWallList = await ApiController.getTrendingWallpapers();

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getCatDetails();
    getTrendingWallpapers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const CustomAppBar(
          word1: "Wallpaper",
          word2: "Guru",
        ),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const SearchBar(),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: catModList.length,
                        itemBuilder: ((context, index) => CatBlock(
                              categoryImgSrc: catModList[index].catImgUrl,
                              categoryName: catModList[index].catName,
                            )),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 700,
                    child: RefreshIndicator(
                      onRefresh: () async {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 400,
                          crossAxisCount: 2,
                          crossAxisSpacing: 13,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: trendingWallList.length,
                        itemBuilder: ((context, index) {
                          return GridTile(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FullScreen(
                                      imgUrl: trendingWallList[index].imgSrc,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: trendingWallList[index].imgSrc,
                                child: Container(
                                  height: 800,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.amberAccent,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      height: 800,
                                      width: 50,
                                      fit: BoxFit.cover,
                                      trendingWallList[index].imgSrc,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
