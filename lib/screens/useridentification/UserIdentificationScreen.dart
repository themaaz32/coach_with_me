import 'package:coach_with_me/global/Constants.dart';
import 'package:coach_with_me/global/FromWidgets.dart';
import 'package:coach_with_me/global/TextWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserIdentificationScreen extends StatefulWidget {
  @override
  _UserIdentificationScreenState createState() => _UserIdentificationScreenState();
}

class _UserIdentificationScreenState extends State<UserIdentificationScreen> with TickerProviderStateMixin {
  var animation;
  var controller;
  var curve;
  var isShowRegistrationForm = false;

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

    var loginFormContainer = new Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 32),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Text("LOGIN", style: TextWidgets().largeTextStyle(color: Colors.grey[700], weight: FontWeight.w700),),
                ),
                Padding(
                  child: Text("Provide your information to login",style: TextWidgets().smallTextStyle(color: Colors.grey[600],  spacing: 0.5,weight: FontWeight.w400),),
                  padding: EdgeInsets.symmetric(horizontal: 18),
                ),

                SizedBox(height: 16,),

                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: TextFormField(
                    decoration: FormWidgets().inputTextDecoration(hint: "Email"),
                    style: TextWidgets().smallTextStyle(color : Colors.grey[300], weight: FontWeight.w400),

                  ),
                ),
                SizedBox(height: 16,),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: TextFormField(
                    decoration: FormWidgets().inputTextDecoration(hint: "Password", icon: Icons.enhanced_encryption),
                    style: TextWidgets().smallTextStyle(color : Colors.grey[300], weight: FontWeight.w400),

                  ),
                ),
                SizedBox(height: 16,),
                FormWidgets().mainButtonWithOutIcon(text : "LOGIN", color : Colors.blue[600], onPressed : (){setState(() {
                    Navigator.of(context).pushNamedAndRemoveUntil("/home", (Route<dynamic> route) => false);
                  });
                }),
                Container(
                  width: double.infinity,
                  child: GestureDetector(
                    child: Text("Don't have account yet?", textAlign : TextAlign.right, style: TextWidgets().smallTextStyle(color: Colors.redAccent, weight: FontWeight.w400, spacing: 0.5),),
                    onTap: (){
                    },
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ],
            ),
          ),
        )
    );

    var registrationFormContainer = new Container(
        width: double.infinity,

        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 32),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Text("REGISTRATION", style: TextWidgets().largeTextStyle(color: Colors.grey[700], weight: FontWeight.w700),),
                ),
                Padding(
                  child: Text("All the details are necessory", style: TextWidgets().smallTextStyle(color: Colors.grey[700], weight: FontWeight.w400, spacing: 0.5),),
                  padding: EdgeInsets.symmetric(horizontal: 18),
                ),

                SizedBox(height: 16,),

                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: TextFormField(
                    decoration: FormWidgets().inputTextDecoration(hint: "Email"),
                    style: TextWidgets().smallTextStyle(color : Colors.grey[300], weight: FontWeight.w400),

                  ),
                ),
                SizedBox(height: 16,),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: TextFormField(
                    decoration: FormWidgets().inputTextDecoration(hint: "Full Name", icon: Icons.person),
                    style: TextWidgets().smallTextStyle(color : Colors.grey[300], weight: FontWeight.w400),

                  ),
                ),
                SizedBox(height: 16,),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: TextFormField(
                    decoration: FormWidgets().inputTextDecoration(hint: "Password", icon: Icons.enhanced_encryption),
                    style: TextWidgets().smallTextStyle(color : Colors.grey[300], weight: FontWeight.w400),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 16,),
                FormWidgets().mainButtonWithOutIcon(text : "REGISTER",color : Colors.blue[600], onPressed : (){}),
                Container(
                  width: double.infinity,
                  child: GestureDetector(
                    child: Text("Already have account?", textAlign : TextAlign.right, style: TextWidgets().smallTextStyle(color: Colors.green[400], weight: FontWeight.w400, spacing: 0.5),),
                    onTap: (){
                    },
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ],
            ),
          ),
        )
    );

    Container pageOneContainer(context) => Container(
      child: Column(
        mainAxisAlignment : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Expanded(
              child: Center(
                child: AspectRatio(
                  aspectRatio: 2/3,
                  child: SvgPicture.asset("assets/images/login.svg", fit: BoxFit.contain,),
                ),
              )
          ),

          Container(
            padding: EdgeInsets.only(left: 32, right: 32, bottom: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(text : "WELCOME", style: TextWidgets().largeTextStyle(weight: FontWeight.w900,color: Colors.grey[200], spacing: 1.0),),
                      ]
                  ),
                ),

                Text("If you are new user register your self first", style: TextWidgets().normalTextStyle(color: Colors.grey[300]/*Colors.white*/, weight: FontWeight.w400,spacing: 0.5),),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: FormWidgets().mainButtonWithOutIcon(text : "SIGN IN", color : Colors.lightBlue[900], onPressed : (){
              showModalBottomSheet(context: context, builder: (context){
                return loginFormContainer;
              },
                backgroundColor: Colors.grey[100],

              );
            }),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: FormWidgets().mainButtonWithOutIcon(text : "REGISTER", color : Colors.blueGrey[900], onPressed : (){
              showModalBottomSheet(context: context, builder: (context){
                return registrationFormContainer;
              },
                backgroundColor: Colors.grey[100],
                isScrollControlled: true
              );
            }),
          ),

          SizedBox(height: 32,)


        ],
      ),
    );


    return Scaffold(
        backgroundColor: lightBackgroundColor,
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Stack(
                children: <Widget>[


                  AnimatedBuilder(
                    animation: animation,
                    child:  Container(
                      transform: Matrix4.skew(0.8,0.0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.blue[700],
                    ),

                    builder: (context, child){
                      return Transform(transform: Matrix4.skew(-0.9 + controller.value, 0),
                        child: child,
                      );

                    },
                  ),

                  AnimatedBuilder(
                    animation: animation,
                    child:  Container(
                      transform: Matrix4.skew(-0.4,0.0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.blue[500],
                    ),

                    builder: (context, child){
                      return Transform(transform: Matrix4.skew(1.6 + controller.value, 0),
                        child: child,
                      );

                    },
                  ),

                  pageOneContainer(context)
                ]
            )
        )
    );

  }
}
