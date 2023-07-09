import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> getWidgets() {
    List<Widget> widgets = [];
    for (var i = 0; i < 100; i++) {
      widgets.add(ListTile(
        title: Text('Hello World Item $i'),
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: IconButton(
                icon: Icon(Icons.expand),
                onPressed: () {},
              ),
              expandedHeight: 200,
              floating: true,
              pinned: false,
              snap: true,
              elevation: 50,
              backgroundColor: Colors.pink,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/big.jpeg'),
                      fit: BoxFit.fill,
                    )),
              ),
              title: Text('AppBar Title'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_alert),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.phone),
                ),
              ],
            ),
            SliverFixedExtentList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return ListTile(
                      title: Text('Hello World Item $index'),
                    );
                  },
                ),
                itemExtent: 50.0),
          ],
        ),
      ),
    );
  }
}