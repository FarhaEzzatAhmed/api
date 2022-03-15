part of 'details_cubit.dart';

@immutable
abstract class DetailsState {}

class DetailsInitial extends DetailsState {}
class launchesLoaded extends DetailsState{
final List<launche> launches;

  launchesLoaded(this.launches);

}

