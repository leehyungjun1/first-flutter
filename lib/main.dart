import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have pushed the button this many times : '),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          counter++;
                          print("$counter");
                        });
                      }),
                  SizedBox(
                    width: 20.0,
                  ),
                  FloatingActionButton(
                      child: Icon(
                        Icons.remove,
                        size: 30.0,
                      ),
                      onPressed: () {
                        setState(() {
                          counter--;
                          print("$counter");
                        });
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
