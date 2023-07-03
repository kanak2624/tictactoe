
// ignore_for_file: unnecessary_new, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'game_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<GameButton> buttonlist;


 @override
  void initState() {
    // todo: implement initState
    super.initState();
    buttonlist = doInit();
  }
  List<GameButton> doInit(){
    var gameButtons = <GameButton>[
      new GameButton(id: 1),
      new GameButton(id: 2),
      new GameButton(id: 3),
      new GameButton(id: 4),
      new GameButton(id: 5),
      new GameButton(id: 6),
      new GameButton(id: 7),
      new GameButton(id: 8),
      new GameButton(id: 9),
    ];
    return gameButtons;
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Tic Tac Toe"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
             end: Alignment.bottomRight, 
             colors: [Color(0xfff6921e), Color(0xffee4036)])),
        child: Padding(
          padding: const EdgeInsets.only(top: 120.0),
          // ignore: duplicate_ignore, duplicate_ignore
          child: GridView.builder(
            // ignore: prefer_const_constructors
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, 
                childAspectRatio: 1.0, 
                crossAxisSpacing: 6.0, 
                mainAxisSpacing: 9.0), 
            itemCount: buttonlist.length,
            itemBuilder: (context, index) => new SizedBox(
              width: 100.0,
              height: 100.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: null,
                  // ignore: sort_child_properties_last
                  child: new Text(buttonlist[index].text,
                    style: new TextStyle(color: Colors.white, fontSize: 20.0)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonlist[index].bg,
                    disabledBackgroundColor: buttonlist[index].bg
                  ),
                ),
              ),
               ),
              ),
        ),
    ));
  }
}