// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:brews/presentation/pages/search/brews_search_page.dart';
import 'package:brews/presentation/pages/brewery_details/brewery_details_page.dart';
import 'package:brews/models/brewery.dart';

class Router {
  static const brewsSearchPage = '/';
  static const breweryDetailsPage = '/brewery-details-page';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.brewsSearchPage:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute<dynamic>(
          builder: (_) => BrewsSearchPage(key: typedArgs),
          settings: settings,
        );
      case Router.breweryDetailsPage:
        if (hasInvalidArgs<BreweryDetailsPageArguments>(args)) {
          return misTypedArgsRoute<BreweryDetailsPageArguments>(args);
        }
        final typedArgs = args as BreweryDetailsPageArguments ??
            BreweryDetailsPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => BreweryDetailsPage(
              key: typedArgs.key, brewery: typedArgs.brewery),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//BreweryDetailsPage arguments holder class
class BreweryDetailsPageArguments {
  final Key key;
  final Brewery brewery;
  BreweryDetailsPageArguments({this.key, this.brewery});
}
