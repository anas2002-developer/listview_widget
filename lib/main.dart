import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  var arrNames = ["Anas", "Aman", "Rihan", "Subhan", "Subhana", "Ashmi", "Ishan", "Ayaan"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("first flutter project"),
        ),
        // body: ListView(
        //   scrollDirection: Axis.vertical,
        //   reverse: false,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text("Anas"),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text("Aman"),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text("Rihan"),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text("Subhan"),
        //     ),
        //   ],
        // )
        // body: ListView.builder(itemBuilder: (context, index) {
        //   return Text(arrNames[index], style: TextStyle(fontSize: 40),);
        // },
        // itemCount: arrNames.length,
        // itemExtent: 100,
        // )

      body: ListView.separated(itemBuilder: (context, index) {
        return Text(arrNames[index], style: TextStyle(fontSize: 40),);
      },

      separatorBuilder: (context, index) {
        return Divider(height: 40, thickness: 2,);
      },

      itemCount: arrNames.length,

      )
    );
  }
}
