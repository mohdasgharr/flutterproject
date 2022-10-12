import 'package:flutter/material.dart';

import 'common.dart';

class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
bool _valuefirst=false;

  @override
   build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body:
      Center(
          child: Container
            (
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,

            ),

            height:700,width: 400,
            child: Padding(
              padding: const EdgeInsets.only(right: 80,top: 20,left: 30),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  // Padding(
                  // padding: EdgeInsets.only(right: 1,top: 40),
                  const Text('LOGIN',style: TextStyle(fontSize: 25),),
                  // ),
const SizedBox(height: 20,),
                     const Text('Email'),
                  Common(),
                  // const TextField(
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 20,),
                  const Text('Password'),
                  // const TextField(
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(),
                  //   ),
                  // ),
                  Common(),

Row(
  children: [
    Checkbox(
      value: _valuefirst,
      onChanged: (newValue) {
          setState(() {
            _valuefirst = newValue!;
          });
      },
    ),
    const Text('Remember me ?'),

  ],
),
                  Container(height: 40,width: 300,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                    child: const Center(child: Text('LOGIN',
                      style: TextStyle(fontSize: 20),)),
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(left: 170,top: 10),
                    child: Text('Forgot Password?'),
                  ),
                  Stack(
                    children: [
                       const Divider(
                        color: Colors.red,
                      ),
                      Center(
                        child: Container(
                          height: 20,width: 20,
                          child: Text('OR'),
                          ),
                        ),
              ]
            ),
                      const SizedBox(height: 20,),
                      Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                          Image.asset('assets/img_12.png',height: 50,),
                          // SizedBox(width: ,),
                          Image.asset('assets/img_10.png',height:50,),
                          Image.asset('assets/img_11.png',height: 40,),
                        ],),
                      ),
const SizedBox(height: 30,),
   Center(
     child: Row(
     children: const [
       Text('Need an  account?   '),
       Text('SIGNUP',style: TextStyle(color: Colors.black87,decoration: TextDecoration.underline),),
     ],
 ),
   )

                ],
              ),
            ),
          ),
        ),

    );
  }
}








