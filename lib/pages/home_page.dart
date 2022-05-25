
import 'package:flutter/material.dart';

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
                          TextFormField(
                            validator: (value){
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),

                          /*
                          TextField(
                            decoration: const InputDecoration(
                              hintText: "_____",
                            ),
                            onSubmitted: (text) {

                            //  PassProverca.b = text;

                            },
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              //fontSize: 25,
                            //  fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          ),
*/


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
                        Container(                          //2 polka
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
                                        gradient: LinearGradient(colors: [
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
                                        gradient: LinearGradient(colors: [
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
                        gradient: LinearGradient(colors: [
                          Colors.deepPurpleAccent,
                          Colors.indigo
                        ]
                        )
                    ),
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: ()
                      {

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



