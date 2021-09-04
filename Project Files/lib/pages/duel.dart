import 'package:flutter/material.dart';

import 'package:spotify/spotify.dart';

final String clientId = "51246818724f419183db17fc98caaf6b";
final String clientSecret = "c6ffafe8fa9540a388ad7e0f82f7bf6a";

final credentials = SpotifyApiCredentials(clientId, clientSecret);
final spotify = SpotifyApi(credentials);

class duel extends StatefulWidget {
  @override
  _duelState createState() => _duelState();
}

class _duelState extends State<duel> {
  TextEditingController playlist1 = TextEditingController();
  TextEditingController playlist2 = TextEditingController();
  TextEditingController displayResults = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DUEL'),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0,20.0,0,0),
                child: Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29.5),
                ),
                  child: TextField(
                    controller: playlist2,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.music_note),
                        border: InputBorder.none,
                        hintText: "Playlist URL",
                        labelText: "Playlist 2",
                        labelStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.black
                        )
                    ),
                  ),
                ),
                
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(10,40.0,0.0,0),
                child: Container(
                  decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(29.5),
                ),
                  child: TextField(
                    controller: displayResults,
                    decoration: InputDecoration(
                        //prefixIcon: Icon(Icons.music_note),
                        border: InputBorder.none,
                        hintText: "",
                        labelText: "Results:",
                        labelStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.black
                        )
                    ),
                  ),

                )

                )

            ],
          ),
        ),
        
        /*
        child: SafeArea(
            child: Text('GENERAL'))

         */
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Playlist 1 URL: "+playlist1.text+ "   Playlist 2 URL: "+ playlist2.text);

            Playlist playlist1Obj;
            Playlist playlist2Obj;

            Pages<Track> playlist1Tracks;
            Pages<Track> playlist2Tracks;

            Iterable<Track> playlist1Iterable;
            Iterable<Track> playlist2Iterable;

            var displayTexts = List<String>();

            spotify.playlists.get(playlist1.text.substring(34, 56)).then((value){
              playlist1Obj = value;

              print(playlist1Obj.name);
              playlist1.text = playlist1Obj.name;

              spotify.playlists.get(playlist2.text.substring(34, 56)).then((value){

                playlist2Obj = value;
                playlist2.text = playlist2Obj.name;

                int playlist1Length = playlist1Obj.tracks.total;
                int playlist2Length = playlist2Obj.tracks.total;

                String lengthMessage = "";

                if(playlist1Length > playlist2Length){
                  lengthMessage = playlist1Obj.name + " is longer than " + playlist2Obj.name + " by " + (playlist1Length-playlist2Length).toString() + " songs!"; 
                } else if(playlist1Length < playlist2Length){
                  lengthMessage = playlist2Obj.name + " is longer than " + playlist1Obj.name + " by " + (playlist2Length-playlist1Length).toString() + " songs!"; 
                } else{
                  lengthMessage = "Both playlists are the same length!";
                }

                displayResults.text = lengthMessage;
                displayTexts.add(lengthMessage);


                int playlist1Followers = playlist1Obj.followers.total;
                int playlist2Followers = playlist2Obj.followers.total;

                String followersMessage = "";

                if(playlist1Followers > playlist2Followers){
                  followersMessage = playlist1Obj.name + " is more popular than " + playlist2Obj.name + " by " + (playlist1Followers-playlist2Followers).toString() + " follower(s)!"; 
                } else if(playlist1Followers < playlist2Followers){
                  followersMessage = playlist2Obj.name + " is more popular than " + playlist1Obj.name + " by " + (playlist2Followers-playlist1Followers).toString() + " follower(s)!"; 
                } else{
                  followersMessage = "Both playlists have " + playlist1Followers.toString() + " followers!";
                }

                displayTexts.add(followersMessage);

                playlist1Tracks = spotify.playlists.getTracksByPlaylistId(playlist1Obj.id);
                playlist2Tracks = spotify.playlists.getTracksByPlaylistId(playlist2Obj.id);

                playlist1Tracks.all().then((value){

                  playlist1Iterable = value;

                  playlist2Tracks.all().then((value){

                    playlist2Iterable = value;

                    double playlist1Popularity = 0;
                    double playlist2Popularity = 0;

                    for (var item in playlist1Iterable) {
                      playlist1Popularity += item.popularity;
                    }

                    for(var item in playlist2Iterable) {
                      playlist2Popularity += item.popularity;
                    }

                    playlist1Popularity /= playlist1Length;
                    playlist2Popularity /= playlist2Length;

                    String mainstreamMessage = "";

                    if(playlist1Popularity > playlist2Popularity){
                      mainstreamMessage = playlist1Obj.name + " is more mainstream than " + playlist2Obj.name + " !"; 
                    } else if(playlist1Popularity < playlist2Popularity){
                      mainstreamMessage = playlist2Obj.name + " is more mainstream than " + playlist1Obj.name + " !"; 
                    } else{
                      mainstreamMessage = "Both playlists are equally mainstream!";
                    }

                    displayTexts.add(mainstreamMessage);

                    print(displayTexts);

                    // This is what we're displaying

                    String buildString = "";
                    for (var item in displayTexts) {
                      buildString = buildString + item + "\n";
                    }

                    displayResults.text = buildString;

                  });

                });

              });

            });

            //Navigator.pushNamed(context, '/duelfinal');
          },
          child: Text('Submit'),
          backgroundColor: Colors.redAccent,
        )
    );
  }
}
