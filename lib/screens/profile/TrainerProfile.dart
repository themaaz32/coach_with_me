import 'package:coach_with_me/global/Constants.dart';
import 'package:coach_with_me/global/TextWidgets.dart';
import 'package:coach_with_me/screens/payment/PaymentScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrainerProfile extends StatefulWidget {
  @override
  _TrainerProfileState createState() => _TrainerProfileState();
}


class _TrainerProfileState extends State<TrainerProfile> {

  profileCoverContainer(name, context) => Container(
    width: MediaQuery.of(context).size.width,

    child: Image.asset("assets/images/${name}", fit: BoxFit.cover,),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        dragStartBehavior: DragStartBehavior.start,
        slivers: <Widget>[


          SliverList(
            delegate: SliverChildListDelegate(
              [

                Container(
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[

                      PageView(
                        controller: PageController(initialPage: 0),
                        children: <Widget>[
                          profileCoverContainer("1.jpeg", context),
                          profileCoverContainer("2.jpg", context),
                          profileCoverContainer("3.jpg", context),
                        ],
                      ),
                      Positioned(
                        child: Container(
                            child: IconButton(
                              iconSize: 30,
                              icon: Icon(Icons.done, color: Colors.white,),
                              onPressed: (){
                                //Navigator.of(context).pushNamed("/payment");
                                showModalBottomSheet(context: context,
                                  builder: (context){
                                    return PaymentScreen();
                                  },
                                  isScrollControlled: true,
                                  isDismissible: true

                                );
                              },
                            ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30),),
                            color: Colors.blue
                          ),
                          padding: EdgeInsets.all(8),
                        ),
                        bottom: 0,
                        right: 32,

                      ),
                      Positioned(
                        child: Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Maaz Aftab", style: TextWidgets().veryLargeTextStyle(weight: FontWeight.w700, color: Colors.grey[100]),),
                                Text("Certified Yoga Instructor", style: TextWidgets().normalTextStyle(color: Colors.grey[200], weight: FontWeight.w400), ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(Icons.star, color: Colors.orangeAccent, size: 18,),
                                    Icon(Icons.star, color: Colors.orangeAccent, size: 18,),
                                    Icon(Icons.star, color: Colors.orangeAccent, size: 18,),
                                    Icon(Icons.star, color: Colors.orangeAccent, size: 18,),
                                    Icon(Icons.star, color: Colors.grey, size: 18,),

                                  ],
                                ),
                              ],
                            )
                        ),
                        bottom: 0,
                        left: 0,
                      ),
                      Positioned(
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                          onPressed: ()=>Navigator.of(context).pop(),
                        ),
                        top: 32,
                      ),
                    ],
                  ),
                  height: 400,
                ),


                SizedBox(height: 16,),
                Container(
                  width: MediaQuery.of(context).size.width-32,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                  decoration: BoxDecoration(color: Colors.white,boxShadow: [containerShadow], ),
                  child: Center(child: Text("We charge \$5 to connect you with Trainers",style: TextWidgets().smallTextStyle(spacing: 0.2, color: Colors.green, weight: FontWeight.w500),),)

                ),

                SizedBox(height: 16,),
                Container(
                  width: MediaQuery.of(context).size.width-32,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(color: Colors.white,boxShadow: [containerShadow], borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            child: Text("Introduction", style: TextWidgets().veryLargeTextStyle(color: Colors.grey[900], weight: FontWeight.w700, spacing: 0.5),),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Icon(Icons.account_circle, color: Colors.lightBlueAccent,),
                          )

                        ],
                      ),

                      Divider(),
                      Padding(
                        child: Text("Integer feugiat scelerisque varius morbi enim nunc faucibus. Habitant morbi tristique senectus et. At tempor commodo ullamcorper a. "
                            "In dictum non consectetur a erat.", style: TextWidgets().smallTextStyle(color: Colors.grey[600], weight: FontWeight.w400, spacing: 0.5),),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                      ),

                      SizedBox(height: 16,),

                    ],
                  ),

                ),


                SizedBox(height: 16,),
                Container(
                  width: MediaQuery.of(context).size.width-32,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(color: Colors.white,boxShadow: [containerShadow], borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            child: Text("Certificate", style: TextWidgets().veryLargeTextStyle(color: Colors.grey[900], weight: FontWeight.w700, spacing: 0.5),),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Icon(Icons.receipt, color: Colors.lightBlueAccent,),
                          )

                        ],
                      ),
                      Padding(
                        child: Text("Select catogary to find fitness trainer", style: TextWidgets().smallTextStyle(color: Colors.grey[500], weight: FontWeight.w400, spacing: 0.5),),
                        padding: EdgeInsets.symmetric(horizontal: 16),

                      ),
                      Divider(),
                      Padding(
                        child: Text("Habitant morbi tristique senectus et.", style: TextWidgets().smallTextStyle(color: Colors.grey[600], weight: FontWeight.w400, spacing: 0.5),),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                      Padding(
                        child: Text("US Fitness Trainer Professional.", style: TextWidgets().smallTextStyle(color: Colors.grey[600], weight: FontWeight.w400, spacing: 0.5),),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                      Padding(
                        child: Text("Yoga Master UK Certification.", style: TextWidgets().smallTextStyle(color: Colors.grey[600], weight: FontWeight.w400, spacing: 0.5),),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                      ),

                      SizedBox(height: 16,),

                    ],
                  ),

                ),

                SizedBox(height: 32,),

              ]
            ),
          )
        ],
      )
    );
  }
}


class ProfilePersistentHeader extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return AppBar(
      title: Text("TRAINER PROFILE"),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
        onPressed: () => Navigator.of(context).pop(),
      ),
      backgroundColor: Colors.transparent,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 70;

  @override
  // TODO: implement minExtent
  double get minExtent => 70;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }

}
