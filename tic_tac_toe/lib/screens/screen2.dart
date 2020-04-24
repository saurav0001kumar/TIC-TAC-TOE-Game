import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tictactoe/screens/screen1.dart';
class screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tic-Tac-Toe",
          style:TextStyle(
            color: Colors.white,
            fontSize: 28,

          ),),
        leading: Icon(Icons.grid_on, color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),

body: MyApp(),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {

          goto1(context);

        },
        icon: Icon(Icons.arrow_back_ios),
        label: Text("Back"),
        elevation: 10,
        splashColor: Colors.redAccent,
        hoverColor: Colors.redAccent,

        shape: ShapeBorder.lerp(null, null, 20),
        tooltip: 'Goto Main Menu',
        backgroundColor: Colors.deepPurpleAccent,



      ),
    );;
  }

  void goto1(context) async {
    bool result = await Navigator.push(context,MaterialPageRoute(builder: (context) {
      return screen1();
    }));


  }


}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return gui();
  }
}

class gui extends State<MyApp> {

 Widget b0=Icon(Icons.donut_large, size: 70, color: Colors.black12,),
     b1=Icon(Icons.donut_large, size: 70, color: Colors.black12,),
     b2=Icon(Icons.donut_large, size: 70, color: Colors.black12,),
     b3=Icon(Icons.donut_large, size: 70, color: Colors.black12,),
     b4=Icon(Icons.donut_large, size: 70, color: Colors.black12,),
     b5=Icon(Icons.donut_large, size: 70, color: Colors.black12,),
     b6=Icon(Icons.donut_large, size: 70, color: Colors.black12,),
     b7=Icon(Icons.donut_large, size: 70, color: Colors.black12,),
     b8=Icon(Icons.donut_large, size: 70, color: Colors.black12,);// icon change
  List box=[0,1,2,3,4,5,6,7,8];
  List cross=[];
  List zeroes=[];
  int boxnumbero,boxnumberx;
  var random=Random();
  var _priorities=["Play First","Play Second"];
  var dropDownStringItem="Play First";
int turn=0;
  @override
  Widget build(BuildContext context) {

    //initialization

//    turn=random.nextInt(2);





    return Center(child:Padding(
      padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
      child: Column(children: <Widget>[




      Row(children: <Widget>[
        Container(padding: EdgeInsets.only(left: 15),),
        Icon(Icons.ac_unit),
      Padding(
      padding: EdgeInsets.fromLTRB(10,10,25,10),
      child: Text("Set your Turn: ",
       style: TextStyle(color: Colors.teal, fontSize: 18),
      ),),



DropdownButton(
              icon: Icon(Icons.keyboard_arrow_down,
                color: Colors.indigoAccent,),

              items: _priorities.map((String dropDownStringItem) {
                return DropdownMenuItem<String> (
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem,
                    style: TextStyle(color: Colors.purple, fontSize: 18),),
                );
              }).toList(),
              value: dropDownStringItem,

              onChanged: (valueSelectedByUser) {
                setState(() {
                  debugPrint('User selected $valueSelectedByUser');
                  dropDownStringItem=valueSelectedByUser;
                  if(dropDownStringItem=="Play First")
                    {
                      reseting();
                      turn=0;
                    }

                  else
                    {
                      reseting();
                      turn=1;
                      geticonforCOM();
                    }

                });
              },
          ),


      ]),


        Container(padding: EdgeInsets.all(15),),



        Row(children: <Widget>[
//BUTTON 0
          OutlineButton(onPressed: (){
            setState(() {
              boxnumbero=0;
              if(turn==0)
                {

                  if(box.contains(boxnumbero))
                    {
                      box.remove(boxnumbero);
                      // changing the turn
                      zeroes.add(boxnumbero);
                      b0=Icon(Icons.radio_button_unchecked, size: 70, color: Colors.redAccent,);
                      turn=1;
//                      boxnumber=box[random.nextInt(box.length)];
                      geticonforCOM();

                    }

                }
            });

          }, child: b0,
            borderSide: BorderSide(width: 5, color: Colors.transparent),
            disabledBorderColor: Colors.transparent,

          ),

          Container(padding: EdgeInsets.only(left: 5, right: 5), color: Colors.amber, height: 90,),
//BUTTON 1
          OutlineButton(onPressed: (){

            setState(() {
              boxnumbero=1;
              if(turn==0)
              {

                if(box.contains(boxnumbero))
                {
                  box.remove(boxnumbero);
                  // changing the turn
                  zeroes.add(boxnumbero);
                  b1=Icon(Icons.radio_button_unchecked, size: 70, color: Colors.redAccent,);
                  turn=1;
//                  boxnumber=box[random.nextInt(box.length)];
                  geticonforCOM();

                }

              }
            });

          }, child: b1,

            borderSide: BorderSide(width: 5, color: Colors.transparent),
            disabledBorderColor: Colors.transparent,
          ),

          Container(padding: EdgeInsets.only(left: 5, right: 5), color: Colors.amber, height: 90,),
//BUTTON 2
          OutlineButton(onPressed: (){

            setState(() {
              boxnumbero=2;
              if(turn==0)
              {

                if(box.contains(boxnumbero))
                {
                  box.remove(boxnumbero);
                  // changing the turn
                  zeroes.add(boxnumbero);
                  b2=Icon(Icons.radio_button_unchecked, size: 70, color: Colors.redAccent,);
                  turn=1;
//                  boxnumber=box[random.nextInt(box.length)];
                  geticonforCOM();

                }

              }
            });

          }, child: b2,

            borderSide: BorderSide(width: 5, color: Colors.transparent,),
            disabledBorderColor: Colors.transparent,

          ),

        ],),

        Container(padding: EdgeInsets.all(5), color: Colors.amber, width: 300,),

        ////////////////////////////////////////////////////////////////////////////////////////////////

        Row(children: <Widget>[
//BUTTON 3
          OutlineButton(onPressed: (){

            setState(() {
              boxnumbero=3;
              if(turn==0)
              {

                if(box.contains(boxnumbero))
                {
                  box.remove(boxnumbero);
                  // changing the turn
                  zeroes.add(boxnumbero);
                  b3=Icon(Icons.radio_button_unchecked, size: 70, color: Colors.redAccent,);
                  turn=1;
//                  boxnumber=box[random.nextInt(box.length)];
                  geticonforCOM();

                }

              }
            });

          }, child: b3,

            borderSide: BorderSide(width: 5, color: Colors.transparent),
            disabledBorderColor: Colors.transparent,
          ),

          Container(padding: EdgeInsets.only(left: 5, right: 5), color: Colors.amber, height: 90,),
//BUTTON 4
          OutlineButton(onPressed: (){

            setState(() {
              boxnumbero=4;
              if(turn==0)
              {

                if(box.contains(boxnumbero))
                {
                  box.remove(boxnumbero);
                  // changing the turn
                  zeroes.add(boxnumbero);
                  b4=Icon(Icons.radio_button_unchecked, size: 70, color: Colors.redAccent,);

//                  boxnumber=box[random.nextInt(box.length)];
                  turn=1;
                  geticonforCOM();

                }

              }
            });

          }, child: b4,

            borderSide: BorderSide(width: 5, color: Colors.transparent),
            disabledBorderColor: Colors.transparent,
          ),

          Container(padding: EdgeInsets.only(left: 5, right: 5), color: Colors.amber, height: 90,),
//BUTTON 5
          OutlineButton(onPressed: (){

            setState(() {
              boxnumbero=5;
              if(turn==0)
              {

                if(box.contains(boxnumbero))
                {
                  box.remove(boxnumbero);
                  // changing the turn
                  zeroes.add(boxnumbero);
                  b5=Icon(Icons.radio_button_unchecked, size: 70, color: Colors.redAccent,);
                  turn=1;
//                  boxnumber=box[random.nextInt(box.length)];
                  geticonforCOM();

                }

              }
            });

          }, child: b5,

            borderSide: BorderSide(width: 5, color: Colors.transparent,),
            disabledBorderColor: Colors.transparent,

          ),

        ],),

        Container(padding: EdgeInsets.all(5), color: Colors.amber, width: 300,),

        /////////////////////////////////////////////////////////////////////////////////////////////////////


        Row(children: <Widget>[
//BUTTON 6
          OutlineButton(onPressed: (){
            setState(() {
              boxnumbero=6;
              if(turn==0)
              {

                if(box.contains(boxnumbero))
                {
                  box.remove(boxnumbero);
                  // changing the turn
                  zeroes.add(boxnumbero);
                  b6=Icon(Icons.radio_button_unchecked, size: 70, color: Colors.redAccent,);
                  turn=1;
//                  boxnumber=box[random.nextInt(box.length)];
                  geticonforCOM();

                }

              }
            });
          }, child: b6,

            borderSide: BorderSide(width: 5, color: Colors.transparent),
            disabledBorderColor: Colors.transparent,

          ),

          Container(padding: EdgeInsets.only(left: 5, right: 5), color: Colors.amber, height: 90,),
//BUTTON 7
          OutlineButton(onPressed: (){
            setState(() {
              boxnumbero=7;
              if(turn==0)
              {
                if(box.contains(boxnumbero))
                {
                  box.remove(boxnumbero);
                  zeroes.add(boxnumbero);
                  b7=Icon(Icons.radio_button_unchecked, size: 70, color: Colors.redAccent,);
                  turn=1;
                  geticonforCOM();

                }

              }
            });
          }, child: b7,

            borderSide: BorderSide(width: 5, color: Colors.transparent),
            disabledBorderColor: Colors.transparent,
          ),

          Container(padding: EdgeInsets.only(left: 5, right: 5), color: Colors.amber, height: 90,),
//BUTTON 8
          OutlineButton(onPressed: (){
            setState(() {
              boxnumbero=8;
              if(turn==0)
              {

                if(box.contains(boxnumbero))
                {
                  box.remove(boxnumbero);
                  // changing the turn
                  zeroes.add(boxnumbero);
                  b8=Icon(Icons.radio_button_unchecked, size: 70, color: Colors.redAccent,);
                  turn=1;
//                  boxnumber=box[random.nextInt(box.length)];
                  geticonforCOM();

                }

              }
            });
          }, child: b8,

            borderSide: BorderSide(width: 5, color: Colors.transparent,),
            disabledBorderColor: Colors.transparent,

          ),

        ],),

        Padding(padding: EdgeInsets.only(top: 45),
          child: OutlineButton.icon(onPressed: (){
            setState(() {
              dropDownStringItem="Play First";
              reseting();
            });

          },
              icon: Icon(Icons.play_circle_outline,
                color: Colors.deepPurpleAccent,
                size: 45,
              ),
              label: Text("Restart the Game!",
                style: TextStyle(fontSize: 20),)
          ),
        )

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      ],),
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    )

    );







  }

  void geticonforCOM()
  {
    checkcross();
    if(turn==1)
      {
        boxnumberx=box[random.nextInt(box.length)];
        switch(boxnumberx)
        {

          case 0: b0=Icon(Icons.clear, size: 70, color: Colors.black,); break;
          case 1: b1=Icon(Icons.clear, size: 70, color: Colors.black,); break;
          case 2: b2=Icon(Icons.clear, size: 70, color: Colors.black,); break;
          case 3: b3=Icon(Icons.clear, size: 70, color: Colors.black,); break;
          case 4: b4=Icon(Icons.clear, size: 70, color: Colors.black,); break;
          case 5: b5=Icon(Icons.clear, size: 70, color: Colors.black,); break;
          case 6: b6=Icon(Icons.clear, size: 70, color: Colors.black,); break;
          case 7: b7=Icon(Icons.clear, size: 70, color: Colors.black,); break;
          case 8: b8=Icon(Icons.clear, size: 70, color: Colors.black,); break;
          default:break;

        }
        cross.add(boxnumberx);
        box.remove(boxnumberx);
        // changing the turn
        checkcross();
        turn=0;
      }


  }
  void reseting()
  {
    b0=Icon(Icons.donut_large, size: 70, color: Colors.black12,);
    b1=Icon(Icons.donut_large, size: 70, color: Colors.black12,);
    b2=Icon(Icons.donut_large, size: 70, color: Colors.black12,);
    b3=Icon(Icons.donut_large, size: 70, color: Colors.black12,);
    b4=Icon(Icons.donut_large, size: 70, color: Colors.black12,);
    b5=Icon(Icons.donut_large, size: 70, color: Colors.black12,);
    b6=Icon(Icons.donut_large, size: 70, color: Colors.black12,);
    b7=Icon(Icons.donut_large, size: 70, color: Colors.black12,);
    b8=Icon(Icons.donut_large, size: 70, color: Colors.black12,);

    box=[0,1,2,3,4,5,6,7,8];
    cross=[];
    zeroes=[];
    turn=0;
    boxnumberx=0;
    boxnumbero=0;

  }

  void checkcross()
  {
    String message;
    if( (cross.contains(0) && cross.contains(1) && cross.contains(2)) || (cross.contains(3) && cross.contains(4) && cross.contains(5)) || (cross.contains(6) && cross.contains(7) && cross.contains(8)) || (cross.contains(0) && cross.contains(3) && cross.contains(6)) || (cross.contains(1) && cross.contains(4) && cross.contains(7)) || (cross.contains(2) && cross.contains(5) && cross.contains(8)) || (cross.contains(0) && cross.contains(4) && cross.contains(8)) || (cross.contains(2) && cross.contains(4) && cross.contains(6))  )
{
  debugPrint("You Lose the Game!");
  message="You Lose the Game! Try Again.";
  turn=100;
  box=[];
  _showSnackBar(context, message);
}
    else
    if( (zeroes.contains(0) && zeroes.contains(1) && zeroes.contains(2)) || (zeroes.contains(3) && zeroes.contains(4) && zeroes.contains(5)) || (zeroes.contains(6) && zeroes.contains(7) && zeroes.contains(8)) || (zeroes.contains(0) && zeroes.contains(3) && zeroes.contains(6)) || (zeroes.contains(1) && zeroes.contains(4) && zeroes.contains(7)) || (zeroes.contains(2) && zeroes.contains(5) && zeroes.contains(8)) || (zeroes.contains(0) && zeroes.contains(4) && zeroes.contains(8)) || (zeroes.contains(2) && zeroes.contains(4) && zeroes.contains(6))  )
{
  debugPrint("You Won the Game!");
  message="You Won the Game!";
  turn=100;
  box=[];
  _showSnackBar(context, message);
}
    else
      if(box.isEmpty)
        {
          debugPrint("Game Draw!");
          message="Game Draw! Try Again.";
          turn=100;
          box=[];
          _showSnackBar(context, message);
        }


  }


  //snackbar
  void _showSnackBar(BuildContext context, String message) {

    final snackBar = SnackBar(content: Text(message,
      style: TextStyle(fontSize: 20),
    ));
    Scaffold.of(context).showSnackBar(snackBar);
  }
//random
  int getrandom() {
    var random=Random();
    var pos=random.nextInt(2);
    return pos;
  }


}
