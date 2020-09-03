import 'package:brews/pages/search/widgets/containers/bews_list_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:brews/cubit/brews/brews_cubit.dart';
import 'package:brews/pages/search/widgets/containers/loading_container.dart';
import 'package:brews/pages/search/widgets/containers/search_container.dart';

class BrewsSearchPage extends StatefulWidget {
  const BrewsSearchPage({Key key}) : super(key: key);

  @override
  _BrewsSearchPageState createState() => _BrewsSearchPageState();
}

class _BrewsSearchPageState extends State<BrewsSearchPage> {
  void onSearchSubmit(String brewName) {
    context.bloc<BrewsCubit>().getBrews(brewName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Breweries search"),
        ),
        body: BlocConsumer<BrewsCubit, BrewsState>(
          listener: (context, state) {
            if (state is BrewsError) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            }
          },
          builder: (BuildContext context, BrewsState state) {
            if (state is BrewsInitial) {
              return SearchContainer(
                onSubmit: onSearchSubmit,
              );
            } else if (state is BrewsLoading) {
              return const LoadingContainer();
            } else if (state is BrewsLoaded) {
              return Column(
                children: [
                  SearchContainer(
                    onSubmit: onSearchSubmit,
                  ),
                  Expanded(
                    child: BrewsListContainer(
                      brews: state.brews.toList(),
                    ),
                  ),
                ],
              );
            }

            return SearchContainer(
              onSubmit: onSearchSubmit,
            );
          },
        ));
  }
}
