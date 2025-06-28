void main() {
  Pizza pizza = Pizza(["bacon", "cheese"], "meat lovers", 9.99);
  MenuItem noodles = MenuItem("spaghetti", 10.25);

  print(pizza.toppings);
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

class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, super.title, super.price);
}
