import 'package:flutter/material.dart';

void main() {
  runApp(ParentWidget());
}

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool favorited = false;
  int favoriteCount = 10;

  void toggleFavorite() {
    setState(() {
      if (favorited) {
        favoriteCount -= 1;
        favorited = false;
      } else {
        favoriteCount += 1;
        favorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Test'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconWidget(favorited: favorited, onChanged: toggleFavorite),
            ContentWidget(favoriteCount: favoriteCount),
          ],
        ),
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  final bool favorited;
  final Function onChanged;

  IconWidget({this.favorited = false, required this.onChanged});

  void _handleTap() {
    onChanged();
  }

  // const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: (favorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
        iconSize: 200,
        color: Colors.red,
        onPressed: _handleTap,
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  final int favoriteCount;
  ContentWidget({required this.favoriteCount});

  // const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text('favoriteCount : $favoriteCount', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }
}


