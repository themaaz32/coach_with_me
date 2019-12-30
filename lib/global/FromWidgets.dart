import 'package:coach_with_me/global/TextWidgets.dart';
import 'package:flutter/material.dart';

class FormWidgets{
  mainButton({icon, text, onPressed}) => Container(
    width: double.infinity,
    child: FlatButton.icon(

        onPressed: onPressed,
         icon: Icon(icon, color: Colors.white,),
        label: Text(text, style: TextStyle(color: Colors.white),),
        color: Colors.lightBlue[600],
    ),
  );



  mainButtonWithOutIcon({text, onPressed, color}) => Container(
    width: double.infinity,
    margin: EdgeInsets.only(left: 16, right: 16),
    child: FlatButton(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      onPressed: onPressed,
      color: color,
      child:  Text(text, style: TextStyle(color: Colors.white),),
    ),
  );


  inputTextDecoration({hint = "Give Value", icon = Icons.email}) => new InputDecoration(
    fillColor: Color.fromRGBO(250,250,250, 1),
    filled: true,
    hintText: hint,
    hintStyle: TextWidgets().smallTextStyle(color  : Colors.grey[800], weight: FontWeight.w300),
    prefixIcon: Icon(icon, color: Colors.grey[500],),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,)),
    enabledBorder : OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400], width: 0.5)),
    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),



  );

  inputTextDecorationNoIcon({hint = "Give Value"}) => new InputDecoration(
    fillColor: Color.fromRGBO(250,250,250, 1),
    filled: true,
    hintText: hint,
    hintStyle: TextWidgets().smallTextStyle(color  : Colors.grey[800], weight: FontWeight.w300),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,)),
    enabledBorder : OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400], width: 0.5)),
    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),



  );

}