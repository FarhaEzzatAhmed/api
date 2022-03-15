import 'package:api/data/models/launches.dart';
import 'package:api/data/repositrory/launches_repositort.dart';
import 'package:api/presentation/screens/launches_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final LaunchesRepository launchesRepository;
   List<launche> launches=[];

  DetailsCubit(this.launchesRepository) : super(DetailsInitial());

  void getAlllaunches(){
    launchesRepository.getAlllaunches().then((value) {
  emit(launchesLoaded(launches));
    this.launches = launches ;
    });



  }
}


