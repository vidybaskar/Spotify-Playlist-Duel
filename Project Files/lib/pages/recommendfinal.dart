import 'package:flutter/material.dart';
class recommendfinal extends StatefulWidget {
  @override
  _recommendfinalState createState() => _recommendfinalState();
}

class _recommendfinalState extends State<recommendfinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RECOMMEND'),
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
                        child: Text ("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa asdasd wef wefsfgs regsregrgxfdg sdgfsfg srgesfggdsfgs 4rgsefdfgsfg sdfg sfdgerg ssfg",
                          style: TextStyle(
                            fontSize: 15,
                          ),

                        ),
                      ),
                    ),
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
