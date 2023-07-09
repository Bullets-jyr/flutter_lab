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
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [
    Text('First Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
    Text('Second Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
    Text('Third Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
    Text('Fourth Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Theme(
              data: Theme.of(context).copyWith(hintColor: Colors.white),
              child: Container(
                height: 48.0,
                alignment: Alignment.center,
                child: Text('AppBar Bottom Text'),
              ),
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/big.jpeg'),
                  fit: BoxFit.fill,
                )
            ),
          ),
          title: Text('AppBar Title'),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.add_alert),),
            IconButton(onPressed: (){}, icon: const Icon(Icons.phone),)
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'First', backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Second', backgroundColor: Colors.red),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Third', backgroundColor: Colors.purple),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Fourth', backgroundColor: Colors.pink),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: (){},
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}