class Categories {
  int id;
  String title;
  String image;
  Categories({required this.id, required this.title, required this.image});

  static List<Categories> init(){
    List<Categories> data = [
      Categories(id:1, title: "HighLand", image: "assets/images/ic_highland.jpeg" ),
      Categories(id:2, title: "CircleK", image: "assets/images/ic_circlek.png" ),
      Categories(id:3, title: "Ministop", image: "assets/images/ic_ministop.png" ),
      Categories(id:4, title: "SevenEleven", image: "assets/images/ic_seveneleven.png" ),
      Categories(id:5, title: "Vinmart", image: "assets/images/ic_vinmart.jpg" ),
    ];
    return data;
  }
}
