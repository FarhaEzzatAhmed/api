class launche{
   late String lanId;
   late String name;
   //late String Status;
   //late List<dynamic>job;
  
  launche.fromJson(Map<String , dynamic> json){
     lanId=json["flight_number"];
     name=json["DemoSat"];
     //Status=json["status"];
     //job=json["mission_id"];
     
  }

}