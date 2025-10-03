import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Portifólio do Vinícius",),
        backgroundColor:Colors.green,
        centerTitle: true,
        toolbarHeight: 70,  
        ),
        body: Column(
          children: [
            Center( 
              child: 
                Image.network("https://www.bing.com/th/id/OIP.2zRCkDzffAtfdffvRipKNQHaFj?w=255&h=211&c=8&rs=1&qlt=90&o=6&cb=12&pid=3.1&rm=2", 
                
            )
            )
           
          ],
        ),
      ),
    );
  }
}