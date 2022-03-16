import 'package:api/data/models/launches.dart';
import 'package:api/data/web_services/launches_web_services.dart';

class LaunchesRepository{
 final Launcheswebservices launcheswebservices;

  LaunchesRepository(this.launcheswebservices);
    Future<List<launche>>getAlllaunches() async{
    final launches= await launcheswebservices.getAlllaunches();
    return launches;
  }
}