import 'package:coach_with_me/global/Constants.dart';
import 'package:coach_with_me/global/FromWidgets.dart';
import 'package:coach_with_me/global/TextWidgets.dart';
import 'package:coach_with_me/screens/message/Messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class UserHomeScreen extends StatefulWidget {
  @override
  _UserHomeScreenState createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> with TickerProviderStateMixin {

  var animation;
  var controller;
  var curve;
  var selectedScreen = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    controller = AnimationController(duration: Duration(milliseconds: 700), vsync: this)..forward();
    curve = CurvedAnimation(parent: controller, curve: Curves.easeInSine);
    animation = Tween(begin: 0, end: 0.9).animate(curve);
  }


  @override
  Widget build(BuildContext context) {

    var pages = [
      CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: ProfilePersistentHeader(),
            floating: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextFormField(
                    decoration: FormWidgets().inputTextDecoration(icon: Icons.search, hint: "Search Instructor"),
                  ),
                ),

                SizedBox(height: 16,),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Text("Catogaries", style: TextWidgets().veryLargeTextStyle(color: Colors.grey[800], weight: FontWeight.w700, spacing: 0.5),),
                ),


                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Text("Select catogary to find fitness trainer", style: TextWidgets().smallTextStyle(color: Colors.grey[500], weight: FontWeight.w400, spacing: 0.5),),
                ),
                SizedBox(height: 16,),

                Container(
                  height: 290,

                  child: ListView.builder(
                    itemBuilder: (context, index) => GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width-32,
                        margin: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(color: Colors.white,boxShadow: [containerShadow], borderRadius: BorderRadius.all(Radius.circular(30))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 200,
                              decoration: BoxDecoration(color: Colors.lightBlue,borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
                              child: SvgPicture.asset("assets/images/type${index+1}.svg", fit: BoxFit.cover,),
                            ),
                            SizedBox(height: 16,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  child: Text("Yoga", style: TextWidgets().veryLargeTextStyle(color: Colors.grey[900], weight: FontWeight.w700, spacing: 0.5),),
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Icon(Icons.favorite, color: Colors.red,),
                                )

                              ],
                            ),
                            Padding(
                              child: Text("Select catogary to find fitness trainer", style: TextWidgets().smallTextStyle(color: Colors.grey[500], weight: FontWeight.w400, spacing: 0.5),),
                              padding: EdgeInsets.symmetric(horizontal: 16),

                            ),
                            SizedBox(height: 16,),
                          ],
                        ),

                      ),
                      onTap: (){
                        Navigator.of(context).pushNamed("/trainers");
                      },
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    shrinkWrap: true,
                  ),
                ),

                SizedBox(height: 16,),

                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Text("News Feed", style: TextWidgets().veryLargeTextStyle(color: Colors.grey[800], weight: FontWeight.w700, spacing: 0.5),),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Text("Top Instructor Teasers", style: TextWidgets().smallTextStyle(color: Colors.grey[500], weight: FontWeight.w400, spacing: 0.5),),
                ),
                SizedBox(height: 16,),

                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Container(
                    width: double.infinity,
                    child: ListView.builder(
                      itemBuilder: (context, index){
                        return Container(
                          child: ListTile(
                            title: Padding(padding: EdgeInsets.only(bottom: 4), child: Text("Saad Aftab", style: TextWidgets().normalTextStyle(weight: FontWeight.w500,
                                color: Colors.grey[700], spacing: 0.5),),),
                            subtitle: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", style: TextWidgets().smallTextStyle(weight: FontWeight.w400, color: Colors.grey[500],
                                spacing: 0.5),),
                            trailing: Text("YOGA", style: TextWidgets().smallTextStyle(weight: FontWeight.w500, color: Colors.lightBlue, spacing: 0.5),),
                            leading: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25),), color: Colors.orangeAccent),
                                child: ClipOval(
                                  child: Image.asset("assets/images/profile.jpg", fit: BoxFit.contain,),
                                )
                            ),

                          ),
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: Colors.white,
                              boxShadow: [BoxShadow(color: Colors.grey[100], spreadRadius: 0.5, blurRadius: 2.8,)]),
                          margin: EdgeInsets.only(bottom: 16),
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        );
                      },
                      shrinkWrap: true,
                      itemCount: 6,
                      controller: ScrollController(keepScrollOffset: false),
                      padding: EdgeInsets.all(0),
                    ),



                  ),
                ),


              ],


            ),
          ),


        ],

      ),

      MessagesScreen(),

      MessagesScreen(),
    ];

    return Scaffold(
        backgroundColor: Colors.grey[100],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              title: Text("Messages", style: TextWidgets().smallTextStyle(color: Colors.grey[800], spacing: 0.2, weight: FontWeight.w400),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
                title: Text("Messages", style: TextWidgets().smallTextStyle(color: Colors.grey[800], spacing: 0.2, weight: FontWeight.w400),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text("Messages", style: TextWidgets().smallTextStyle(color: Colors.grey[800], spacing: 0.2, weight: FontWeight.w400),)
            ),
          ],
          backgroundColor: Colors.white,
          fixedColor: Colors.lightBlueAccent,
          iconSize: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedScreen,
          onTap: (value){
            setState(() {
              selectedScreen = value;
            });
          },


        ),
        body: pages[selectedScreen]
    );
  }
}

class ProfilePersistentHeader extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [containerShadow]),
      width: double.infinity,
      padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child:Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Hi, Welcome", style: TextWidgets().smallTextStyle(color: Colors.grey[500], weight: FontWeight.w400, spacing: 0.5),),
                Text("Maaz Aftab", style: TextWidgets().veryLargeTextStyle(color: Colors.grey[900], weight: FontWeight.w700, spacing: 0.5),),
              ],
            ),
          ),

          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25),), color: Colors.orangeAccent),
              child: ClipOval(
                  child: Image.asset("assets/images/profile.jpg", fit: BoxFit.contain,),
              )
          )
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


