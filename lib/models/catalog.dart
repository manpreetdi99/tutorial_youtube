class CatalogModel {
  //day12

  static final items = [
    //φτιαχνω πινακα με αντικειμενα
    //δεσμευση μνημης μια φορα χωρις αλλαγες
    Item(
      "Codepur001",
      "iPhone 12 Pro",
      "Apple iPhone 12th generation",
      999,
      "#33505a",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
    )
  ];
}

class Item {
  final String id; //με το final Μεσω του constructor μπορει να παρει μονο τιμες
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}
