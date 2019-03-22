import 'package:flutter/material.dart';
import '../componentes/post.dart';

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
            padding: const EdgeInsets.only(left: 20.0),
            child: TextField(
              controller: _pesquisaController,
              decoration: InputDecoration(
                  hintText: "Procurar...", border: InputBorder.none),
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
      body: Column(
        children: <Widget>[
          Material(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                )),
                Expanded(
                    child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.rss_feed,
                    color: Colors.grey,
                  ),
                )),
                Expanded(
                    child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                  color: Colors.grey,
                )),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("imagens/mulher.jpg"),
                    radius: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (_, index){
              return Post();
            }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_alt),
        backgroundColor: Colors.red,
      ),
    );
  }
}
