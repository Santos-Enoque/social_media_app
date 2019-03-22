import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 TextEditingController _pesquisaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('imagens/hey.png'),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Material(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20.0),
          child: Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: TextField(
              controller: _pesquisaController,
              decoration: InputDecoration(
                hintText: "Procurar...",
                border: InputBorder.none
              ),
            ),
          ),
        ),
        actions: <Widget>[
//          IconButton(
//              icon: Icon(
//                Icons.search,
//                color: Theme.of(context).primaryColor,
//              ),
//              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
