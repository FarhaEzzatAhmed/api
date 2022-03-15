//class launche{
   //late String lanId;
   //late String name;
   //late String Status;
   //late List<dynamic>job;
  
  //launche.fromJson(Map<String , dynamic> json){
     //lanId=json["flight_number"];
    // name=json["mission_name"];
     //Status=json["status"];
     //job=json["mission_id"];
     
  //}

//}

class launche {
  launche({
    required this.flightNumber,
    required this.missionName,
  });
  late final int flightNumber;
  late final String missionName;
  
  launche.fromJson(Map<String, dynamic> json){
    flightNumber = json['flight_number'];
    missionName = json['mission_name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['flight_number'] = flightNumber;
    _data['mission_name'] = missionName;
    return _data;
  }
}