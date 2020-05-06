

import 'package:flutter/material.dart';
import 'package:tictactoe/screens/screen2.dart';

class screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),

            child:IconButton(
              icon:Icon(Icons.info_outline),
              tooltip: "About",
              iconSize: 27,
              color: Colors.white,
              onPressed: (){



                  AlertDialog alertDialog = AlertDialog(
                    elevation: 10,
                    backgroundColor: Colors.white,
                    title: Text("About Game!"),
                    content: Text("Tic-Tac-Toe Version-2.0 . Thanks for playing this game. For any help or feedback, contact the developer at 'saurav0001kumar@gmail.com' or Visit: https://saurav0001kumar.ml",
                    style: TextStyle(fontSize: 16),

                    ),
                  );
                  showDialog(
                      context: context,
                      builder: (_) => alertDialog
                  );



              },

            ),

          )

        ],

        centerTitle: true,
        title: Text(
          "Tic-Tac-Toe",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        leading: Icon(

          Icons.stars,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(

        onPressed: () {
          goto2(context);
        },

        icon: Icon(Icons.play_circle_filled,
        size: 82,
        color: Colors.purpleAccent,),
        label: Text("Play ",
        style: TextStyle(fontSize: 20),
        ),
        elevation: 20,
        splashColor: Colors.redAccent,
        hoverColor: Colors.redAccent,
        shape: ShapeBorder.lerp(null, null, 20),
        tooltip: 'Play',
        backgroundColor: Colors.deepPurple,
      ),

      //////////////////////////////////////////////////////////////////////////////////
      body: menu(),
    );

  }



  void goto2(context) async {
    bool result = await Navigator.push(context,MaterialPageRoute(builder: (context) {
      return screen2();
    }));


  }





}




class menu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
       return menuState();
  }

}
class menuState extends State<menu>{
  @override
  Widget build(BuildContext context) {


    return Container(
      padding: EdgeInsets.fromLTRB(20,10,20,20),
      child: Column(children: <Widget>[

        Row(children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(50,0,10,10),child: Center(child: img(),), ),

          ],),

        Row(children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(140,0,10,10),child: Center(child: img0(),), ),

        ],),

        Row(children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(100,0,10,10),child: Center(child: img1(),), ),


        ],),

        Row(children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(60,0,10,10),child: Center(child: img2(),), ),


        ],),

        Row(children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(100,0,10,10),child: Center(child: img3(),), ),


        ],),


        Icon(Icons.scatter_plot),

//        Padding(padding: EdgeInsets.only(top: 45),
//          child: OutlineButton.icon(onPressed: (){
//
//
//          },
//              icon: Icon(Icons.play_circle_outline,
//                color: Colors.deepPurpleAccent,
//                size: 45,
//              ),
//              label: Text("Play as Single",
//                style: TextStyle(fontSize: 20),)
//          ),
//        )

      ],),

    );
  }

  Image img(){
    var assetImage = AssetImage("images/co.png");
    var image = Image(
      image: assetImage,
      width: 150,
      height: 150,
    );
    return image;
  }

  Image img0(){
    var assetImage = AssetImage("images/co.png");
    var image = Image(
      image: assetImage,
      width: 120,
      height: 120,
    );
    return image;
  }

  Image img1(){
    var assetImage = AssetImage("images/co.png");
    var image = Image(
      image: assetImage,
      width: 80,
      height: 80,
    );
    return image;
  }

  Image img2(){
    var assetImage = AssetImage("images/co.png");
    var image = Image(
      image: assetImage,
      width: 55,
      height: 55,
    );
    return image;
  }

  Image img3(){
    var assetImage = AssetImage("images/co.png");
    var image = Image(
      image: assetImage,
      width: 35,
      height: 35,
    );
    return image;
  }



}
