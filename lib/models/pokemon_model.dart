class Pokemons {
  List<Pokemon> items = new List();

  Pokemons();

  Pokemons.fromJsonList( List<dynamic> jsonList ){
    if ( jsonList == null) return;

    for (var item in jsonList){
      final poke = new Pokemon.fromJsonMap(item);
      items.add( poke );
    }
  }
}

class Pokemon{

  int idx;
  String numex;
  String namex;
  String imgx;
  String heightx;
  String weightx;

  Pokemon(
    {
      this.idx,
      this.numex,
      this.namex,
      this.imgx,
      this.heightx,
      this.weightx
    }
  );

  Pokemon.fromJsonMap( Map<String, dynamic> json ) {
    idx      = json['id'];
    numex    = json['num'];
    namex    = json['name'];
    imgx     = json['img'];
    heightx  = json['height'];
    weightx  = json['weight'];
  }

}