import 'package:coach_with_me/global/Constants.dart';
import 'package:coach_with_me/global/TextWidgets.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPersistentHeader(
          delegate: MessagesPersistentHeader(),
          floating: true,
        ),
        SliverList(
          delegate: SliverChildListDelegate(
              [
                Container(
                  child: ListTile(
                    leading: Container(
                      width: 55,
                      height: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: ClipOval(child: Image.asset("assets/images/profile.jpg", fit: BoxFit.cover,),),
                    ),
                    title: Text("Maaz Aftab", style: TextWidgets().normalTextStyle(weight: FontWeight.w500, color: Colors.grey[700], spacing: 0.5),),
                    subtitle: Text("Han bhai kya krahe ho?", style: TextWidgets().smallTextStyle(weight: FontWeight.w400, color: Colors.grey[600], spacing: 0.5),),

                  ),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [containerShadow]),
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                ),
                Container(
                  child: ListTile(
                    leading: Container(
                      width: 55,
                      height: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: ClipOval(child: Image.asset("assets/images/profile.jpg", fit: BoxFit.cover,),),
                    ),
                    title: Text("Maaz Aftab", style: TextWidgets().normalTextStyle(weight: FontWeight.w500, color: Colors.grey[700], spacing: 0.5),),
                    subtitle: Text("Han bhai kya krahe ho?", style: TextWidgets().smallTextStyle(weight: FontWeight.w400, color: Colors.grey[600], spacing: 0.5),),
                  ),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [containerShadow]),
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                ),
              ]
          ),
        )
      ],
    );
  }
}

class MessagesPersistentHeader extends SliverPersistentHeaderDelegate{

  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [containerShadow]),
      width: double.infinity,
      padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Messages", style: TextWidgets().veryLargeTextStyle(color: Colors.grey[900], weight: FontWeight.w700, spacing: 0.5),),
              Text("All the messages", style: TextWidgets().smallTextStyle(color: Colors.grey[500], weight: FontWeight.w400, spacing: 0.5),),
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


