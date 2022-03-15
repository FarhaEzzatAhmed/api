import 'package:api/business_logic/cubit/details_cubit.dart';
import 'package:api/constants/my_colors.dart';
import 'package:api/data/models/launches.dart';
import 'package:api/presentation/widgets/launche_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LaunchesScreen extends StatefulWidget {
  const LaunchesScreen({ Key? key }) : super(key: key);

  @override
  LaunchesScreenState createState() => LaunchesScreenState();
}

class LaunchesScreenState extends State<LaunchesScreen> {
   late List <launche> alllaunches;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
   BlocProvider.of<DetailsCubit>(context).getAlllaunches();
  }

   Widget buildBlocwidget(){
     return BlocBuilder<DetailsCubit,DetailsState>(
       builder:(context,state){
       if(state is launchesLoaded){
         alllaunches=(state).launches;
         return buildLoadedListwidget((state).launches);

       } else {
         return showLoadingIndicator();

       }

       },);
   }
   Widget showLoadingIndicator(){
     return Center(child:CircularProgressIndicator(color:Mycolors.myYellow ,));


   }

   Widget buildLoadedListwidget (List<launche> list){
     return ListView.builder(
     
     shrinkWrap:true,
     physics:const ClampingScrollPhysics(),
     padding:EdgeInsets.zero ,
     itemCount: list.length,
     itemBuilder: (ctx,index){
     

     return LauncheItem(Launche:list[index],);
     },);

   }
   Widget buildlaunchesList(){
     return GridView.builder(
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
       childAspectRatio: 2/3,
       crossAxisSpacing: 1,
       mainAxisSpacing: 1,
     ), 
       shrinkWrap:true,
       physics:const ClampingScrollPhysics(),
       padding:EdgeInsets.zero ,
       itemCount: alllaunches.length,
       itemBuilder: (ctx,index){
       

       return LauncheItem(Launche: alllaunches[index],);
     },);

   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mycolors.myYellow,
        title:Text('launches',style: TextStyle(color:Mycolors.mygray),
        
        )
      ),

      body:buildBlocwidget(),
      
    );
  }
}