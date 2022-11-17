import 'dart:math';
import 'dart:ui';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:spotify_clone/model/category.dart';
import 'package:spotify_clone/model/music.dart';
import 'package:spotify_clone/service/category_operations.dart';
import 'package:spotify_clone/service/music_operations.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  Widget createCategory(Category category){
    return Container(
      color: Colors.blueGrey.shade400,
      child: Row(
        children: [
          Image.network(category.imageURL,fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              category.name,
              style: TextStyle(color: Colors.white),
            )
          )
        ],
      ),
    );
  }
  List<Widget> createListOfCategories(){
  List<Category> categoryList = CategoryOperations.getCategories();
  List<Widget> categories = categoryList.map((Category category) =>  createCategory(category)).toList();
    return categories;
  }
  Widget createMusic(Music music){
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
      children: [
        Container(
          height: 200,
          width: 200,
          child: Image.network(music.image, fit: BoxFit.cover,
          ),
        ),
        Text(music.name),
        Text(music.desc)
      ],
     ),
    );
  }
  Widget createMusicList(String label){
    List<Music> musicList = MusicOperations.getMusic();
    return Container(
      height: 300,
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return createMusic(musicList[index]);
        }, 
        itemCount: musicList.length,
      ),
    );
  }


  Widget createGrid(){
    return Container(
      padding: EdgeInsets.all(10),
      height: 300,
      child: GridView.count(
        childAspectRatio: 6.5 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: createListOfCategories(),
        crossAxisCount: 2,
     ),
    );
  }

  Widget createAppBar(String message){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(message),
      actions: [Padding(padding: EdgeInsets.only(right: 20), child: Icon(Icons.settings))],
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          child: Column(children: [
            createAppBar('Good evening'), 
            SizedBox(height: 5,
            ),
            createGrid(),
            createMusicList('Music for you'),
          ],
        ),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.blueGrey.shade300,
        Colors.black], 
        begin: Alignment.topLeft, 
        end: Alignment.bottomRight,
        stops: [0.1, 0.3] )),
        //color: Colors.orange,
     ));
  }
}