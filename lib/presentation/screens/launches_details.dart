import 'package:api/constants/my_colors.dart';
import 'package:api/data/models/launches.dart';
import 'package:flutter/material.dart';

class LaunchesDetailsScreen extends StatelessWidget {
  final launche Launche;

  const LaunchesDetailsScreen({Key? key,required this.Launche}) : super(key: key);
  //const LaunchesDetailsScreen({ Key? key }) : super(key: key);
  //Widget buildSliverAppBar(){
    //return SliverAppBar(
      
   // );
 // }

  Widget launchesInfo(String title,String value ){
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    
      text:TextSpan(children:[
        TextSpan(
          text: title,
          style: TextStyle(color:Mycolors.mywhite,
          fontWeight: FontWeight.bold,
          fontSize: 18,)
        ),
         TextSpan(
          text: value,
          style: TextStyle(color:Mycolors.mywhite,
          
          fontSize: 16,)
        )

      ] ,),);

  }

  Widget buildDivider(double endIndent){
    return Divider(
     color:Mycolors.myYellow ,
     height: 30,
    thickness:2 ,
    endIndent:endIndent ,);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.mygray,
      body:CustomScrollView(slivers:[
       // buildSliverAppBar(),
        SliverList(
          delegate: SliverChildListDelegate(
            [ 
              Container(
                margin: EdgeInsets.fromLTRB(10 , 10, 10,0),
                padding:EdgeInsets.all(8) ,
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.start ,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //launchesInfo(': ',Launche.job.join(' ')),
                    //buildDivider(315),
                    launchesInfo('name ',Launche.name),
                    buildDivider(315),
                    launchesInfo('flight_number',Launche.lanId),
                    buildDivider(315),
                    
                  ],
                ),
              ),

        ],),)
      ],) ,
      
    );
  }
}