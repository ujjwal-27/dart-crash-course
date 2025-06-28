void main() {
  MenuItem pizza = MenuItem("meat lovers", 9.99);
  MenuItem noodles = MenuItem("spaghetti", 10.25);

  print(pizza.format());
  print(noodles.format());
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return "$title --> $price";
  }
}
