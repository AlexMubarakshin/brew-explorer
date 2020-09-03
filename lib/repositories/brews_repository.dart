import 'package:brews/models/brewery.dart';

abstract class IBrewsRepository {
  Future<List<Brewery>> search(String brewName);
}
