import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'For You',),
                Tab(text: 'Following',),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Item 1'),
                  ),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Item 2'),
                  ),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Item 3'),
                  ),
                ],
              ),
              GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(8.0), 
                children: [
                  Image.asset('assets/burunghantu.jpg'), 
                  Image.asset('assets/burunghantu.jpg'), 
                  Image.asset('assets/burunghantu.jpg'), 
                  Image.asset('assets/burunghantu.jpg'), 
                ].map((Widget image) {
                  return Padding(
                    padding: EdgeInsets.all(8.0), 
                    child: image,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}