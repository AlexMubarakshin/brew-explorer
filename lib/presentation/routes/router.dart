import 'package:auto_route/auto_route_annotations.dart';

import 'package:brews/presentation/pages/search/brews_search_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  BrewsSearchPage brewsSearchPage;
}
