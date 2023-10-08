import 'package:code_demo_1/modern_art_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modern Art UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Modern Art UI',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) =>const AlertDialog(
                          title: Text('Members'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [
                                Text('3120410299 - Vo Tran Tan Loc'),
                                Text('3120410269 - Nguyen Anh Kiet'),
                                Text('3120410153 - Le Gia Hao')
                              ],
                            ),
                          ),
                        )
                ),
                icon: Icon(Icons.more_horiz))
          ],
        ),
        body: SafeArea(
          child: ModernArtUI(),
        ),
      ),
    );
  }
}
