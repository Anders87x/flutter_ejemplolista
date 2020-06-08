import 'package:flutter/material.dart';
import 'package:flutter_ejemplolista/models/pokemon_model.dart';

class ListPoke extends StatelessWidget {

  final List<Pokemon> pokemons;
  ListPoke({@required this.pokemons});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pokemons.length,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (BuildContext context,int i){
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
                                  child: Text( pokemons[i].namex ?? "",
                                  style: TextStyle(
                                    color: Colors.black, 
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold),
                                  )
                                ),
                              ),
                              Container(
                                child: 
                                  Text("Número : ${ pokemons[i].numex }",
                                    style: 
                                      TextStyle(
                                        color: Colors.black54, 
                                        fontSize: 18.0,fontWeight: 
                                        FontWeight.bold),
                                    )
                              ),
                              Container(
                                child: 
                                  Text("Altura : ${ pokemons[i].heightx } \u00B7 Peso : ${ pokemons[i].weightx }",
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
                          child: FadeInImage(
                            fit: BoxFit.contain,
                            alignment: Alignment.topRight,
                            image: NetworkImage(pokemons[i].imgx),
                            placeholder: AssetImage('assets/img/no-image.jpg'),
                          ), 
                        ),
                      ),
                    ],)
              ),
            ),
          ),
        );
        /* return ListTile(
          title: Text( pokemons[i].namex),
          subtitle: Text("asdasdasd"),
        ); */
      },
    );
  }
}