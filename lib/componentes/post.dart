import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.1,
      child: Container(
        child: Column(
          children: <Widget>[
//            TOPO D0 POST
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("imagens/mulher.jpg"),
                    radius: 18.0,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "Mary Smith",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 18.0),
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.person_add,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {}),
              ],
            ),

//            DESCRICAO
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(alignment: Alignment.topLeft,
                child: Text("A vida eh uma beleza pura hulalala..."),
              ),
            ),

//            IMAGE,
             Image.asset("imagens/mulher.jpg"),

//            ICONES
            Row(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Container(
                        alignment: Alignment.topLeft,
                        child: FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                              size: 18.0,
                            ),
                            label: Text(
                              "11",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.red),
                            )))),
                Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Container(
                        alignment: Alignment.topLeft,
                        child: FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.message,
                              color: Colors.red,
                              size: 18.0,

                            ),
                            label: Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.red),
                            ))))
              ],
            ),

          ],
        ),
      ),
    );
  }
}
