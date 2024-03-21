import 'package:flutter/material.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewWithCards(),
    );
  }
}

class ListViewWithCards extends StatelessWidget {
  final List<Map<String, String>> userdata = [
    {
      "nama": "Paloma Ransi",
      "hobi": "Membaca",
      "image": "assets/paloma.jpg",
    },
    {
      "nama": "Nabila Ahlisya",
      "hobi": "Berjualan",
      "image": "assets/nabila.jpg",
    },
    {
      "nama": "Arsa Cahaya",
      "hobi": "Mendengarkan Lagu",
      "image": "assets/arsa.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: userdata.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: ClipRect(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    userdata[index]['image'] ?? '',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(userdata[index]['nama'] ?? ''),
              subtitle: Text(userdata[index]['hobi'] ?? ''),
            ),
          );
        },
      ),
    );
  }
}