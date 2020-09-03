import 'package:brews/cubit/brews/brews_cubit.dart';
import 'package:brews/pages/search/brews_search_page.dart';
import 'package:brews/repositories/impl/brews_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Breweries search',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BlocProvider(
          create: (context) => BrewsCubit(BrewsRepository()),
          child: const BrewsSearchPage(),
        ));
  }
}
