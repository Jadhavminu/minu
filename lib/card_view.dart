import 'package:flutter/material.dart';
void main() {
  runApp(const ExitApp());
}

class ExitApp extends StatelessWidget {
  const ExitApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exit App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exit App'),
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 200,
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shadowColor: Colors.pinkAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              color: Colors.pinkAccent,
              elevation: 10,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                   children: <Widget>[
                     const ListTile(
                       title: Center(
                         child: Text('Exit App' , style: TextStyle(fontSize: 34.0),
                         ),
                       ),
                       subtitle: Text('Do You Want To Exit From App' , style:
                           TextStyle(fontSize: 19.0),)
                       ),
                       Padding(
                         padding: const EdgeInsets.all(9.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: <Widget>[
                             Expanded(
                               child: TextButton(
                             style: TextButton.styleFrom(
                             foregroundColor: Colors.black,
                             backgroundColor: Colors.white),
                         child: const Text(
                             'Yes'
                                  ),
                                    onPressed: (){

                                    },
                                 ),),
                                 const SizedBox(
                                   width: 10,
                                 ),
                                Expanded(
                            child: TextButton(
                              style:  TextButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  backgroundColor: Colors.white),
                                child: const Text(
                                    'NO',
                            ),
                            onPressed: (){

                                },
                          )),
      const SizedBox(
        width: 10,),
      ]
      )
      ),

                           ],
                         ),
                     ),

              )

            ),
          ),
        );
  }
}