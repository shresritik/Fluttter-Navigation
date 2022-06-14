import 'package:ask_me/pages/appointment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "ASK ME ANYTHING",
              style: TextStyle(fontSize: 24),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ContainerLoader(
                          Text('Create a new appointment',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                          Image.asset(
                            'images/second.png',
                            width: 500,
                            height: 200,
                          ),
                          context,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Appointment()),
                              );
                            },
                            child: ContainerLoader(
                              Text('Appointment Details',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  )),
                              Image.asset(
                                'images/first.png',
                                width: 500,
                                height: 200,
                              ),
                              context,
                            ))

                        // Container(
                        //   margin: const EdgeInsets.only(top: 10.0),
                        //   decoration: BoxDecoration(
                        //       color: Colors.blue,
                        //       borderRadius:
                        //           BorderRadius.all(Radius.circular(20))),
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(20.0),
                        //     child: Column(
                        //       children: [
                        //         Padding(
                        //           padding: const EdgeInsets.only(bottom: 12.0),
                        //           child: Text(
                        //             'Create a new appointment',
                        //             style: TextStyle(
                        //               color: Colors.white,
                        //               fontSize: 20,
                        //             ),
                        //           ),
                        //         ),
                        //         Image.asset(
                        //           'images/second.png',
                        //           width: 500,
                        //           height: 200,
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //       color: Colors.blue,
                        //       borderRadius: new BorderRadius.all(
                        //         Radius.circular(20.0),
                        //       )),
                        //   margin: const EdgeInsets.only(top: 10.0),
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(20.0),
                        //     child: Column(
                        //       children: [
                        //         Padding(
                        //           padding: const EdgeInsets.only(bottom: 12.0),
                        //           child: Text(
                        //             'Appointment Details',
                        //             style: TextStyle(
                        //               color: Colors.white,
                        //               fontSize: 20,
                        //             ),
                        //           ),
                        //         ),
                        //         Image.asset(
                        //           'images/first.png',
                        //           width: 500,
                        //           height: 200,
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget ContainerLoader(
      Text text, Image imageContainer, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: text,
            ),
            imageContainer,
          ],
        ),
      ),
    );
  }
}
