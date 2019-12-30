import 'package:coach_with_me/global/Constants.dart';
import 'package:coach_with_me/global/FromWidgets.dart';
import 'package:coach_with_me/global/TextWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {


  var msgsContainer = Container(
    color: Colors.grey[100],
    child: CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
              [

              ]
          ),
        )
      ],
    ),
  );

  var msgTypeContainer =  Container(
    height: 100,
    width: 400,
    color: Colors.redAccent,
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    child: Row(
      children: <Widget>[
        Container(
          width: 300,
          child: TextFormField(
            decoration: FormWidgets().inputTextDecoration(icon: Icons.search, hint: "Type message"),
          ),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(

                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverPersistentHeader(
                      delegate: ChatPersistentHeader(),
                      floating: true,
                    ),
                    SliverList(

                      delegate: SliverChildListDelegate(
                          [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 50,
                                    height: 50,

                                    child: ClipOval(child: Image.asset("assets/images/profile.jpg",fit: BoxFit.contain,),),

                                  ),
                                  SizedBox(width: 8,),

                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                                        bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)
                                      )),
                                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                                      child: Text("hai bhai chalta hia kya ??", style: TextWidgets().smallTextStyle(color: Colors.white, weight: FontWeight.w400),),
                                    ),
                                  )
                                ],
                              ),
                            ),


                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)
                                      )),
                                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                                      child: Text("kaha chlna hia  ??", style: TextWidgets().smallTextStyle(color: Colors.white, weight: FontWeight.w400),),
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Container(
                                    width: 50,
                                    height: 50,

                                    child: ClipOval(child: Image.asset("assets/images/profile2.jpg",fit: BoxFit.contain,),),

                                  ),



                                ],
                              ),
                            ),


                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 50,
                                    height: 50,

                                    child: ClipOval(child: Image.asset("assets/images/profile.jpg",fit: BoxFit.contain,),),

                                  ),
                                  SizedBox(width: 8,),

                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                                          bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)
                                      )),
                                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                                      child: Text("yar aliza k ghr chlna hia usne laptop liya hai mere liye gift to lunga tum chlrahe ho to btao ??", style: TextWidgets().smallTextStyle(color: Colors.white, weight: FontWeight.w400),),
                                    ),
                                  )
                                ],
                              ),
                            ),


                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)
                                      )),
                                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                                      child: Text("aliza mjhe kya dege??", style: TextWidgets().smallTextStyle(color: Colors.white, weight: FontWeight.w400),),
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Container(
                                    width: 50,
                                    height: 50,

                                    child: ClipOval(child: Image.asset("assets/images/profile2.jpg",fit: BoxFit.contain,),),

                                  ),



                                ],
                              ),
                            ),


                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 50,
                                    height: 50,

                                    child: ClipOval(child: Image.asset("assets/images/profile.jpg",fit: BoxFit.contain,),),

                                  ),
                                  SizedBox(width: 8,),

                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                                          bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)
                                      )),
                                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                                      child: Text("tjhe bh laptop dedege us k pas but paisa hia, kher abe sab chor bachi wahi to de ??", style: TextWidgets().smallTextStyle(color: Colors.white, weight: FontWeight.w400),),
                                    ),
                                  )
                                ],
                              ),
                            ),


                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)
                                      )),
                                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                                      child: Text("Wania ka number chye system wale? ??", style: TextWidgets().smallTextStyle(color: Colors.white, weight: FontWeight.w400),),
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Container(
                                    width: 50,
                                    height: 50,

                                    child: ClipOval(child: Image.asset("assets/images/profile2.jpg",fit: BoxFit.contain,),),

                                  ),



                                ],
                              ),
                            ),


                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 50,
                                    height: 50,

                                    child: ClipOval(child: Image.asset("assets/images/profile.jpg",fit: BoxFit.contain,),),

                                  ),
                                  SizedBox(width: 8,),

                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                                          bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)
                                      )),
                                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                                      child: Text("abe bhai q pchraha hai jaldi dee shabsh asy baten pcha mat kr", style: TextWidgets().smallTextStyle(color: Colors.white, weight: FontWeight.w400),),
                                    ),
                                  )
                                ],
                              ),
                            ),


                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)
                                      )),
                                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                                      child: Text("rukk", style: TextWidgets().smallTextStyle(color: Colors.white, weight: FontWeight.w400),),
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Container(
                                    width: 50,
                                    height: 50,

                                    child: ClipOval(child: Image.asset("assets/images/profile2.jpg",fit: BoxFit.contain,),),

                                  ),



                                ],
                              ),
                            ),

                          ]
                      ),
                    )
                  ],
                ),
              )
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.grey[300])
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.grey[300])
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        fillColor: Colors.grey[200],
                        filled: true
                      )
                    ),
                  ),

                  IconButton(
                    icon: Icon(Icons.send, color: Colors.lightBlueAccent,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatPersistentHeader extends SliverPersistentHeaderDelegate{
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
              onPressed: () => Navigator.of(context).pop(),
            ),
            left: 0,
            top: 0,
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Maaz Aftab", style: TextWidgets().veryLargeTextStyle(color: Colors.grey[900], weight: FontWeight.w700, spacing: 0.5),),
              Text("Body Building Specialist", style: TextWidgets().smallTextStyle(color: Colors.grey[500], weight: FontWeight.w400, spacing: 0.5),),
            ],
          ),



        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 115;

  @override
  // TODO: implement minExtent
  double get minExtent => 115;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }

}

