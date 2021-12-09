import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:predoc1/models/place.dart';

class PlacesService {
  final key = 'AIzaSyA0vswYchYGlZmlU5KpHG69EPz9_H5_s5s';
  static String place = 'hospital';
  Future<List<Place>> getPlaces(double lat, double lng) async {
    var url = Uri.parse(
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&type=$place&rankby=distance&key=$key');
    var response = await http.get(url);
    var json = convert.jsonDecode(response.body);
    var jsonResults = json['results'] as List;
    return jsonResults.map((place) => Place.fromJson(place)).toList();
  }
}
