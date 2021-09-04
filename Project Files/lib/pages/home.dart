import 'package:flutter/material.dart';
import 'package:playlist_duel/pages/duel.dart';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (

    appBar: AppBar(
      title: Text('Playlist Duel'),
      centerTitle: true,
      backgroundColor: Color.fromRGBO(72, 237, 189, 100),
    ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/group21.png'),
            fit: BoxFit.fitHeight,
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,0,0,0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                  onPressed: () {
                    Navigator.pushNamed(context, '/duel');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Text('Duel'),
                  color: Color.fromRGBO(253, 156, 157, 100),

                  ),
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50),
                  onPressed: () {
                    Navigator.pushNamed(context, '/general');
                  },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                  child: Text('General'),
                color: Color.fromRGBO(156, 159, 254, 100),
                  ),
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                  onPressed: () {
                    Navigator.pushNamed(context, '/recommend');
                  },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                  child: Text('Recommend'),
                  //style: TextStyle(),
                  color: Color.fromRGBO(136, 228, 252, 100),
              ),
              Row()
            ],
          ),
        ),

      ),
      /*Center(
        child: /*Image.asset('assets/Group 20.png'),*/RaisedButton(
          onPressed:() {
            print('nice');
          },
          child: Text('Vidyut Baskar'),
          color:Colors.redAccent,
        ),

        /*
        Text(),
        style: TextStyle(
          fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          color:Colors.greenAccent
        )
        ),
         */

    ),*/


  );
  }
}
