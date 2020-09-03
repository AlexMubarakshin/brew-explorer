part of 'brews_cubit.dart';

@immutable
abstract class BrewsState {
  const BrewsState();
}

class BrewsInitial extends BrewsState {
  const BrewsInitial();
}

class BrewsLoading extends BrewsState {
  const BrewsLoading();
}

class BrewsLoaded extends BrewsState {
  final List<Brewery> brews;
  const BrewsLoaded(this.brews);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is BrewsLoaded && listEquals(o.brews, brews);
  }

  @override
  int get hashCode => brews.hashCode;
}

class BrewsError extends BrewsState {
  final String message;
  const BrewsError(this.message);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is BrewsError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
