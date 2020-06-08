import 'package:flutter/material.dart';
import 'package:flutter_ejemplolista/models/pokemon_model.dart';

class ListPoke extends StatelessWidget {

  final List<Pokemon> pokemons;
  ListPoke({@required this.pokemons});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pokemons.length,
      itemBuilder: (BuildContext context,int i){
        return ListTile(
          title: Text( "text"),
          subtitle: Text("asdasdasd"),
        );
      },
    );
  }

  Widget _card(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: new FittedBox(
          child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Color(0x802196F3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              child: Text("as" ?? "",
                              style: TextStyle(
                                color: Colors.black, 
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                              )
                            ),
                          ),
                          Container(
                            child: 
                              Text("Número : 000",
                                style: 
                                  TextStyle(
                                    color: Colors.black54, 
                                    fontSize: 18.0,fontWeight: 
                                    FontWeight.bold),
                                )
                          ),
                          Container(
                            child: 
                              Text("Altura : 00000 \u00B7 Peso : 0000",
                                style: 
                                  TextStyle(
                                    color: Colors.black54, 
                                    fontSize: 18.0,fontWeight: 
                                    FontWeight.bold),
                                )
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(24.0),
                      child: Image(
                        fit: BoxFit.contain,
                        alignment: Alignment.topRight,
                        image: NetworkImage(
                            "http://www.serebii.net/pokemongo/pokemon/060.png"),
                      ),
                    ),
                  ),
                ],)
          ),
        ),
      ),
    );
  }
}