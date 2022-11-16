import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.title});
  final String? title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _counter;
  
  @override
  void initState(){
    _counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İyi akşamlar"),
        actions: const [
          Icon(Icons.campaign),
          Icon(Icons.browse_gallery_outlined),
          Icon(Icons.settings),
        ],
      ),
      drawer: Drawer(
        child: Wrap(

        ),  
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana sayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Ara"),
          BottomNavigationBarItem(icon: Icon(Icons.library_music_rounded), label: "Kitaplığın"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          print("Butona Basıldı");
        },
      ),
      body: const Center(
        //title: Image.asset("assets/images/spot.png"),
      ),
    );
  }
}