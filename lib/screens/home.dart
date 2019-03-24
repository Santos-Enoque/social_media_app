import 'package:flutter/material.dart';
import '../componentes/post.dart';

enum Paginas {HOME, FEED, NOTFIC, PERFIL}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _pesquisaController = TextEditingController();
  Paginas _paginaSelecionada = Paginas.HOME;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool isScrolled){
        return <Widget>[
          SliverAppBar(
            floating: true,
            pinned: false,
            leading: IconButton(icon: Icon(Icons.camera_alt, color: Colors.red,), onPressed: (){}),
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
              IconButton(
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {})
            ],
          )
        ];
      }, body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:0.0),
            child: Material(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _paginaSelecionada = Paginas.HOME;
                            });
                          },
                          icon: Icon(
                            Icons.home,
                            color: _paginaSelecionada == Paginas.HOME? Colors.red: Colors.grey,
                          ),
                        )),
                    Expanded(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _paginaSelecionada = Paginas.FEED;
                            });
                          },
                          icon: Icon(
                            Icons.rss_feed,
                            color: _paginaSelecionada == Paginas.FEED? Colors.red: Colors.grey,

                          ),
                        )),
                    Expanded(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _paginaSelecionada = Paginas.NOTFIC;
                            });
                          },
                          icon: Icon(Icons.notifications),
                          color: _paginaSelecionada == Paginas.NOTFIC? Colors.red: Colors.grey,

                        )),

                    Expanded(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _paginaSelecionada = Paginas.PERFIL;
                            });
                          },
                          icon: Icon(Icons.person),
                          color: _paginaSelecionada == Paginas.PERFIL? Colors.red: Colors.grey,

                        )),

                  ],
                ),
              ),
            ),
          ),
          _pagina()
        ],
      ),),
    );
  }

  Widget _pagina() {
      switch (_paginaSelecionada){
        case Paginas.FEED:
          return Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (_, index){
                  return Post();
                }),
          );
        case Paginas.HOME:
          return Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (_, index){
                  return Post();
                }),
          );
        case Paginas.PERFIL:
          return Expanded(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset("imagens/bg.jpg",
                    height: 200.0,
                    width: double.infinity,
                    fit: BoxFit.fill,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.4),
                      width: double.infinity,
                      height: 200.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:90.0),
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 70.0,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:140.0, left: 60.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.9),
                          child: Icon(Icons.person_add, color: Colors.red,),
                          radius: 20.0,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:140.0, right: 60.0),
                      child: Container(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.9),
                          child: Icon(Icons.message, color: Colors.red,),
                          radius: 20.0,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:95.0),
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("imagens/mulher.jpg"),
                          radius: 65.0,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:230.0),
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Text("Mary Smith", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.red.shade900),)
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top:270.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text("102", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                                Text("Seguidores", style: TextStyle(fontWeight: FontWeight.w400),),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text("2", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                                Text("Seguindo", style: TextStyle(fontWeight: FontWeight.w400),),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text("2", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                                Text("Posts", style: TextStyle(fontWeight: FontWeight.w400, ),),
                              ],
                            ),
                          ),
                        ],
                      )
                    ),


                  ],
                ),
              ],
            ),
          );
        case Paginas.NOTFIC:
          return Container();
        default:
          return Container();
      }
  }
}



