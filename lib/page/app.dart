import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify_clone/model/music.dart';
import 'package:spotify_clone/page/home.dart';
import 'package:spotify_clone/page/search.dart';
import 'package:spotify_clone/page/yourlibrary.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var Tabs = [];
  int currentTabIndex = 0;
  Music? music;
  Widget miniPlayer(Music? music){
    setState(() {});
    this.music = music;
    if(music==null){
      return SizedBox();
    }
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(duration: const Duration(milliseconds: 500),
    color: Colors.blueGrey,
    width: deviceSize.width,
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Image.network(music.image, fit: BoxFit.cover),
      Text(music.name, style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow, color: Colors.white))
    ],),
    );
  }

  @override
  initState() {
    super.initState();
    Tabs = [Home(miniPlayer), Search(), YourLibrary()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(music),
          BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap:(currentIndex){
          print("Current Index is $currentIndex");
          currentTabIndex = currentIndex;
          setState(() {});
        },
        selectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black45,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home, color:Colors.white), label: 'Ana Sayfa'),
        BottomNavigationBarItem(icon: Icon(Icons.search, color:Colors.white), label: 'Ara'),
        BottomNavigationBarItem(icon: Icon(Icons.library_books, color:Colors.white), label: 'Kitaplığın'),
      ], 
      )],
      ),
    );
  }
}