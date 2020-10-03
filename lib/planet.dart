class Planet {
  String name;
  String overview;
  String imgPath;
  List<Stat> stats;


  Planet({this.name, this.overview, this.imgPath});

  Planet.localized( var translator, String planet, imgPath){
    this.name=translator.text("name",planet);
    this.overview=translator.text("overview",planet);
    this.imgPath=imgPath;

    stats=new List<Stat>();
    stats.add(Stat(order:1,name:translator.text("s1_name",planet),description:translator.text("s1_description",planet)));
    stats.add(Stat(order:2,name:translator.text("s2_name",planet),description:translator.text("s2_description",planet)));
    stats.add(Stat(order:3,name:translator.text("s3_name",planet),description:translator.text("s3_description",planet)));

  }

}

class Stat {
  final int order;
  final String name;
  final String description;


  Stat({this.order, this.name, this.description});

}