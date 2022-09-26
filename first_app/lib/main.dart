import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: Scaffold(
        home: const FirstPage()
        //     appBar: AppBar(
        //       title: const Text("Title"),
        //     ),
        //     body: Center(
        //         child: ElevatedButton(
        //             onPressed: () {
        //               // int index;
        //               Navigator.of(context).push(
        //                   MaterialPageRoute(builder: (BuildContext context) {
        //                 return const SecondPage();
        //               }));
        //             },
        //             child: const Text("Press")))),
        );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Title"),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  // int index;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SecondPage();
                  }));
                },
                child: const Text("Press"))));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // automaticallyImplyLeading: false,
          ),
    );
  }
}
