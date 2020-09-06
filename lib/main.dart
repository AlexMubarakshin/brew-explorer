import 'package:brews/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:brews/presentation/pages/search/brews_search_page.dart';

import 'package:brews/cubit/brews/brews_cubit.dart';

import 'package:brews/repositories/impl/brews_repository_impl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BrewsCubit(BrewsRepository()),
      child: MaterialApp(
        title: 'Breweries search',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Router.onGenerateRoute,
        initialRoute: Router.brewsSearchPage,
        navigatorKey: Router.navigator.key,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: const TextTheme(
            headline1: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 32,
              fontWeight: FontWeight.w800,
            ),
            headline2: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
