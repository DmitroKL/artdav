
//import 'dart:ffi';

import 'package:flutter/material.dart';

import '../value_calk.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePg createState() => HomePg();
}

enum SingingCharacter { man, girl}

class HomePg extends State<HomePage>{

  SingingCharacter? _character = SingingCharacter.man;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35,
        backgroundColor: Colors.blue[900],
        title: const Align(
          alignment: Alignment.center,

          child: Text('Артериальное давление'),
        ),
      ),
      body: Stack(
        children: [

          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/8.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            padding: const EdgeInsets.all(double.infinity),
          ),

          Center(

              child:
/*
              PageView(
                 // physics: NeverScrollableScrollPhysics(),
               children:[
                */
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    //color: Colors.red,
                    child: const Text('Укажите ваш возраст, пол и давление.',
                      textAlign: TextAlign.center,
                      style:  TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    width: 300,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Container(
                          child: const Text('Возраст',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Container(
                          width: 100.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: const LinearGradient (colors: [
                                Colors.cyanAccent,
                                Colors.indigo
                              ]
                              )
                          ),
                          alignment: Alignment.bottomCenter,

                          child:
/*
                          TextFormField(
                            validator: (value){
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
*/

                          TextField(
                            decoration: const InputDecoration(
                              hintText: "_____",
                            ),
                            onSubmitted: (text) {

                              if (text == null || text.isEmpty) {
                                showDialog(
                                    context: context,
                                    builder: (context){
                                      return const AlertDialog(
                                        content:  Text('Пустая строка'),
                                      );
                                    });
                              }
/*
                              else if( text == [1,2,3] ){
                                print('1 2 3');
                              }
*/
                              else{
                                age = text;
                              }

                              // age=text;
                              // print(age);

                            },
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          ),



                        )
                      ],
                    ),
                  ),

                  Container(
                    //color: Colors.green,
                    width: 300.0,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child:  const Text('Пол',
                            style:  TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 30,
                            ),),
                        ),
                        Container(

                          child:  const Text('M',
                            style:  TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          // color: Colors.white,
                          child: Radio(
                            value: SingingCharacter.man ,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                                print(_character);
                              });
                            },
                          ),


                        ),
                        Container(
                          child: const Text('Ж',
                            style:  TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Container(                       // button 2
                          height: 25,
                          width: 25,
                          //color: Colors. white,
                          child: Radio(
                            value: SingingCharacter.girl ,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                                print(_character);
                              });
                            },
                          ),

                        )
                      ],
                    ),
                  ),

                  Container(
                    //color: Colors.red,
                    width: 300.0,
                    child: Column(
                      children: [
                        Container(
                          child: const Text('Давление',
                            style:  TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              fontSize: 30,
                            ),),
                        ),
                        Container(                   //2 polka
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(               // left
                                children: [
                                  Container(
                                    child: const Text('SYS',
                                      style:  TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 45.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        gradient: const LinearGradient(colors: [
                                          Colors.cyanAccent,
                                          Colors.indigo
                                        ]
                                        )
                                    ),
                                    alignment: Alignment.bottomCenter,

                                    child: TextField(
                                      decoration: const InputDecoration(
                                        hintText: "SYS",
                                      ),
                                      onSubmitted: (text) {
                                        sys = text;
                                        //  PassProverca.b = text;

                                      },
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        //fontSize: 25,
                                        //  fontWeight: FontWeight.w500,
                                        letterSpacing: 1,
                                      ),
                                    ),

                                  )
                                ],
                              ),


                              Column(          //right
                                children: [
                                  Container(
                                    child: const Text('DIA',
                                      style:  TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 45.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        gradient: const LinearGradient(colors: [
                                          Colors.cyanAccent,
                                          Colors.indigo
                                        ]
                                        )
                                    ),
                                    alignment: Alignment.bottomCenter,

                                    child: TextField(
                                      decoration: const InputDecoration(
                                        hintText: "DIA",
                                      ),
                                      onSubmitted: (text) {
                                        dia = text;
                                        //  PassProverca.b = text;

                                      },
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        //fontSize: 25,
                                        //  fontWeight: FontWeight.w500,
                                        letterSpacing: 1,
                                      ),
                                    ),

                                  )
                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(              //button
                    width: 220.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: const LinearGradient(colors: [
                          Colors.deepPurpleAccent,
                          Colors.indigo
                        ]
                        )
                    ),
                    alignment: Alignment.center,
                    child: TextButton(

                      onPressed: ()
                      {
                        if (_character == SingingCharacter.man ){
                          print('man select');
                          if(good == art0.contains(age) ) {
                            print('man совпало 1-10');
                            if( sys == '103' && dia == '69'){
                              print('нормальное давление М от1-10');
                            }

                            else if(sys > '103' && dia > '69'){
                              print('высокое давление М от 1-10');
                            }
                            else {
                              print('низкое даление М от 1-10');
                            }
                          }
                          else{
                            print('man ne sovpalo');
                          }
                        }
                        else{
                          print('girl select');
                          if(good == art0.contains(age) ) {
                            print('girl совпало 1-10');
                          }

                          else{
                            print('girl ne sovpalo');
                          }
                        }



                        /* // работает с таблиц
                      {
                        if(good == art0.contains(age) ) {
                          print('совпало 1-10');
                        }

                        else{
                          print('ne sovpalo');
                        }

*/


                        //  var ager = int.parse(age);
                        //  print(ager);




                        /*
 //
                              if ( ager >=1 && ager <=100 ) {
                                showDialog(
                                    context: context,
                                    builder: (context){
                                      return AlertDialog(
                                        content: Text('ввели ot 1 do 100'),
                                      );
                                    });
                              }

                              else if ( ager != int ){
                                showDialog(
                                    context: context,
                                    builder: (context){
                                      return AlertDialog(
                                        content: Text('не цыфра'),
                                      );
                                    });
                              }

                              else{
                                print('proverka');
                                showDialog(
                                    context: context,
                                    builder: (context){
                                      return AlertDialog(
                                        content: Text('что то дугое кроме 1 до 100'),
                                      );
                                    });
                                }
//
          */


                        // ager=0; //типа убирает ввод
                      },

                      child: const Text(
                        "OK",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  )
                ],
              )


          ),


        ],
      ),
    );
  }
}



