import 'package:flutter/material.dart';
class generalfinal extends StatefulWidget {
  @override
  _generalfinalState createState() => _generalfinalState();
}

class _generalfinalState extends State<generalfinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GENERAL'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(72, 237, 189, 100),
        elevation: 1,
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/group21.png'),
                fit: BoxFit.cover,
              )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,30,0,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start ,
              children: [
                Column(
                  children: [
                    Text(
                      'Playlist',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,20,0,0),
                      child: Container(
                        //height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black,
                              width: 5),
                        ),
                        child: Text ("Your playlists main genre is rap",
                          style: TextStyle(
                            fontSize: 15,
                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,20,0,0),
                      child: Container(
                        //height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black,
                              width: 5),
                        ),
                        child: Text ("This is a test to fill in the box",
                          style: TextStyle(
                            fontSize: 15,
                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,30,0,0),
                      child: Text(
                          "Your #1 song is",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,20,0,0),
                      child: Container(
                        height: 200,
                        width:200,
                        child:Image.asset("images/Polo-G-RAPSTAR-1618844292-scaled.jpeg"),
                      ),
                    )
                        //)


                    // ),
                    //  )



                  ],
                ),

              ],
            ),
          )),

    );
  }
}
