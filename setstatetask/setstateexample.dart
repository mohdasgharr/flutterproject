import 'package:flutter/material.dart';

class SetStateExample extends StatefulWidget {
  const SetStateExample({Key? key}) : super(key: key);

  @override
  State<SetStateExample> createState() => _SetStateExampleState();
}
class _SetStateExampleState extends State<SetStateExample>{
  final _counterNotifier=ValueNotifier<int>(0);
  // final _countNotifier=ValueNotifier<int>(50);

  // int count=0;
  //
  // int counter=100;
  // updatePage() {
  //   setState(() {
  //     count++;
  //     print('button clicked');
  //   });
  // }

//   Widget build(BuildContext context){
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Use of Set State'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: ListView(
//           // mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//           Container(
//   height: 100,
//   child: Image(image: AssetImage('assets/flower1.jpg')),
// ),
//           const  Text('this  is  an   simple   application',style: TextStyle(fontSize: 20),),
//            Text('$count',style: TextStyle(fontSize: 20),),
//
//             ElevatedButton(onPressed:()=> updatePage(),
//               child:const Icon(Icons.add_box_outlined),
//                 ),
//             Text('$counter',style:TextStyle(fontSize: 20)),
//             ElevatedButton(onPressed:()=>setState(()=>counter--),
//
//                 child: const Icon(Icons.minimize,),
//             ),
//
//           ],
//         ),
//       ),
//     );
  @override
  Widget build(BuildContext context) {
    print('homapage  build');
    return Scaffold(
      appBar:  AppBar(title: const Text('Counter App')),
      body: ListView(
        children: [
         ValueListenableBuilder(
        valueListenable: _counterNotifier,
        builder: (context, value, _) {
          return Text('Count:   $value');
        },
      ),
          ElevatedButton(
            onPressed: ()=>_counterNotifier.value++,
        child:const Icon(Icons.add),
          ),
  // ValueListenableBuider(
  //   valueListenable: _countNotifier,
  //   // builder: (context, value, _) {
  //   // return Text('Count:   $value');
  //   // },
  // ),
  //         l
          ElevatedButton(onPressed: ()=>_counterNotifier.value--,
              child: const Icon(Icons.minimize)),
        ],
    ),

    );
  }
}


