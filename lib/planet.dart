class Planet {
  String name;
  String overview;
  String imgPath;
  List<Stat> stats;
  List<Review> reviews;

  Planet({this.name, this.overview, this.imgPath});

  Planet.localized( var translator, String planet, imgPath){
    this.name=translator.text("name",planet);
    this.overview=translator.text("overview",planet);
    this.imgPath=imgPath;

    stats=new List<Stat>();
    stats.add(Stat(order:1,name:translator.text("s1_name",planet),description:translator.text("s1_description",planet)));
    stats.add(Stat(order:2,name:translator.text("s2_name",planet),description:translator.text("s2_description",planet)));
    stats.add(Stat(order:3,name:translator.text("s3_name",planet),description:translator.text("s3_description",planet)));
    stats.add(Stat(order:4,name:translator.text("s4_name",planet),description:translator.text("s4_description",planet)));
    stats.add(Stat(order:5,name:translator.text("s5_name",planet),description:translator.text("s5_description",planet)));
    stats.add(Stat(order:6,name:translator.text("s6_name",planet),description:translator.text("s6_description",planet)));
    stats.add(Stat(order:7,name:translator.text("s7_name",planet),description:translator.text("s7_description",planet)));
    stats.add(Stat(order:8,name:translator.text("s8_name",planet),description:translator.text("s8_description",planet)));
    stats.add(Stat(order:9,name:translator.text("s9_name",planet),description:translator.text("s9_description",planet)));
    stats.add(Stat(order:10,name:translator.text("s10_name",planet),description:translator.text("s10_description",planet)));

  }

}

class Stat {
  final int order;
  final String name;
  final String description;


  Stat({this.order, this.name, this.description});

}

class Review {
  final String title;
  final String description;

  Review({this.title, this.description});
}