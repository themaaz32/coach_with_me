import 'package:coach_with_me/global/Constants.dart';
import 'package:coach_with_me/global/FromWidgets.dart';
import 'package:coach_with_me/global/TextWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  sliderPageContainer({image, String title, description}) => Container(
    child: Column(
      mainAxisAlignment : MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        AspectRatio(
          aspectRatio: 3/2,
          child: SvgPicture.asset("assets/images/$image", fit: BoxFit.contain,),
        ),

        SizedBox(height: 32,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(text : title.toUpperCase(), style: TextWidgets().largeTextStyle(weight: FontWeight.w900,color: Colors.grey[100], spacing: 1.0),),
                    ]
                ),
              ),
              SizedBox(height: 8,),
              Text(description, style: TextWidgets().normalTextStyle(color: Colors.grey[300]/*Colors.white*/, weight: FontWeight.w400),),

            ],
          ),
        ),


      ],
    ),
  );

  final pageController = PageController(initialPage: 0, );

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: lightBackgroundColor,
      //backgroundColor: Colors.grey[900],
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Stack(
            children: <Widget>[

              Positioned(
                child: Container(
                  transform: Matrix4.skew(-0.8,0.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.blue[700],
                ),
                top: 0,
              ),

              Positioned(
                child: Container(
                  transform: Matrix4.skew(0.9,0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.blue,
                ),
                top: 0,
              ),

              Column(
                children: <Widget>[

                  Expanded(
                    child: PageView(
                      reverse: false,
                      controller: pageController,
                      onPageChanged: (value){
                        setState(() {
                          selectedIndex = value;
                        });
                      },
                      children: <Widget>[
                        sliderPageContainer(image: "11.svg", title: "get trainer", description : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed "
                            "do eiusmod tempor incididunt ut",),

                        sliderPageContainer(image: "12.svg", title: "get directed", description : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed "
                            "do eiusmod tempor incididunt ut",),

                        sliderPageContainer(image: "13.svg", title: "get motivated", description : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed "
                            "do eiusmod tempor incididunt ut",),

                      ],
                    ),
                  ),

                  AnimatedCrossFade(
                    firstChild: Center(
                      child: Container(

                          height: 16,
                          margin: EdgeInsets.only(bottom: 32),

                          child: ListView.builder(itemBuilder: (context, index){
                            return Icon(Icons.brightness_1, size: 16,color: index == selectedIndex ? Colors.lightBlueAccent: Colors.grey[300],);
                          },
                            itemCount: 3,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,

                            padding: EdgeInsets.all(0),
                            itemExtent: 20,

                          )

                      ),
                    ) ,
                    secondChild: Container(margin: EdgeInsets.only(bottom: 32, left: 16, right: 16),
                      child: FormWidgets().mainButtonWithOutIcon(text : "LETS STARTED", color : Colors.lightBlue[900],onPressed : (){
                      Navigator.of(context).pushNamed("/identification");
                    }),),
                    crossFadeState: selectedIndex == 2 ? CrossFadeState.showSecond: CrossFadeState.showFirst,
                    duration: const Duration(milliseconds: 700),
                  )

                ],
              )
            ],
          )
      ),
    );
  }
}


