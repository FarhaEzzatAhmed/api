import 'package:api/constants/my_colors.dart';
import 'package:api/constants/strings.dart';
import 'package:api/data/models/launches.dart';
import 'package:flutter/material.dart';
class LauncheItem extends StatelessWidget {

 final launche Launche;

  const LauncheItem

  ({ Key? key ,required this.Launche}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding:EdgeInsetsDirectional.all(4) ,
      decoration:BoxDecoration(
        color: Mycolors.mywhite,
        borderRadius: BorderRadius.circular(8),

      ) ,
    child: InkWell(
      onTap: ()=>Navigator.pushNamed(context, launchesDetailsScreen,arguments: Launche),
      child: GridTile(
        child:Hero(
          tag:Launche.flightNumber ,
        child: Container(
          //color: Mycolors.mygray,
          child: Text('${Launche.missionName}',style: TextStyle(height: 1.3,
          fontSize: 16,color: Mycolors.myYellow,
          fontWeight: FontWeight.bold),
          overflow:TextOverflow.ellipsis ,
          maxLines: 2,)
          //child: launche.lanId.isNotEmpity?
          //FadeInImage(placeholder: placeholder:'assets/images/Loading.gif', image: image)
          
        ),
      ) ,
      //footer: Container(width: double.infinity,
      //padding:EdgeInsets.symmetric(horizontal:15,vertical: 10 ) ,
      //color: Colors.black54,),
      ),
     ), );
  }
}