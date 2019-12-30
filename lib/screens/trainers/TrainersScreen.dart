import 'package:coach_with_me/global/Constants.dart';
import 'package:coach_with_me/global/TextWidgets.dart';
import 'package:flutter/material.dart';

class TrainerScreen extends StatefulWidget {

  final catogary;

  TrainerScreen({this.catogary});

  @override
  _TrainerScreenState createState() => _TrainerScreenState();
}

class _TrainerScreenState extends State<TrainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: TrainersPersistentHeader(),
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed("/trainer");
                    },
                    child: Container(
                      child: ListTile(
                        leading: Container(
                          width: 55,
                          height: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30))),
                          child: ClipOval(child: Image.asset("assets/images/profile.jpg", fit: BoxFit.cover,),),
                        ),
                        title: Text("Saad Aftab", style: TextWidgets().normalTextStyle(weight: FontWeight.w500, color: Colors.grey[700], spacing: 0.5),),
                        subtitle: Text("Han bhai kya krahe ho?", style: TextWidgets().smallTextStyle(weight: FontWeight.w400, color: Colors.grey[600], spacing: 0.5),),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.star, color: Colors.orangeAccent, size: 18,),
                            Icon(Icons.star, color: Colors.orangeAccent, size: 18,),
                            Icon(Icons.star, color: Colors.orangeAccent, size: 18,),
                            Icon(Icons.star, color: Colors.orangeAccent, size: 18,),

                          ],
                        ),
                      ),
                      decoration: BoxDecoration(color: Colors.white, boxShadow: [containerShadow]),
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                    ),
                  );
                },
              childCount: 6
            )
          )
        ],
      )
    );
  }
}


class TrainersPersistentHeader extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [containerShadow]),
      width: double.infinity,
      padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[

          Positioned(
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            left: 0,
            top: 0,
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Trainers", style: TextWidgets().veryLargeTextStyle(color: Colors.grey[900], weight: FontWeight.w700, spacing: 0.5),),
              Text("Yoga Specialist", style: TextWidgets().smallTextStyle(color: Colors.grey[500], weight: FontWeight.w400, spacing: 0.5),),
            ],
          ),



        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 100;

  @override
  // TODO: implement minExtent
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }

}
