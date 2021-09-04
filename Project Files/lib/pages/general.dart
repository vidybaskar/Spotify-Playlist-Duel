import 'package:flutter/material.dart';

class general extends StatefulWidget {
  @override
  _generalState createState() => _generalState();
}

class _generalState extends State<general> {
  TextEditingController playlist1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GENERAL'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(72, 237, 189, 100),
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/group21.png'),
              fit: BoxFit.cover,
          )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,20,20,0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29.5),
                ),
                child: TextField(
                  controller: playlist1,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.music_note),
                      border: InputBorder.none,
                      hintText: "Playlist URL",
                      labelText: "Playlist 1",
                      labelStyle: TextStyle(
                          fontSize: 24,
                          color: Colors.black
                      )
                  ),
                ),
              ),
            ],
          ),
        )
        /*
        child: SafeArea(
            child: Text('GENERAL'))

         */
    ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Playlist URL "+ playlist1.text);
          Navigator.pushNamed(context, '/generalfinal');
    },
    child: Text('Submit'),
    backgroundColor: Colors.redAccent,
    ));
  }
}
