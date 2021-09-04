//API Documentation: https://pub.dev/documentation/spotify/latest/

import 'dart:io';
import 'dart:convert';
import 'package:spotify/spotify.dart';

final String clientId = "51246818724f419183db17fc98caaf6b";
final String clientSecret = "c6ffafe8fa9540a388ad7e0f82f7bf6a";

final credentials = SpotifyApiCredentials(clientId, clientSecret);
final spotify = SpotifyApi(credentials);

var playlist = spotify.playlists.get("b202823f8e5049b7");
print(pl)