import 'package:dio/dio.dart';

import 'package:brews/models/brewery.dart';
import 'package:brews/repositories/brews_repository.dart';

class BrewsRepository implements IBrewsRepository {
  @override
  Future<List<Brewery>> search(String brewName) async {
    Response response = await Dio().get(
      "https://api.openbrewerydb.org/breweries",
      queryParameters: {'by_name': brewName},
    );

    return (response.data as List<dynamic>)
        .map((dynamic brew) => Brewery.fromMap(brew as Map<String, dynamic>))
        .toList();
  }
}
