void main() {
  Pizza pizza = Pizza(["bacon", "cheese"], "meat lovers", 9.99);
  MenuItem noodles = MenuItem("spaghetti", 10.25);
  MenuItem roast = MenuItem("chicken", 10.25);
  MenuItem kebab = MenuItem("mutton", 10.25);

  // print(pizza.toppings);
  // print(pizza.format());

  // print(noodles.format());

  var foods = Collections<MenuItem>("Menu Items", [
    pizza,
    noodles,
    roast,
    kebab,
  ]);

  var random = foods.randomItem();

  print(random);
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return "$title --> $price";
  }

  @override
  String toString() {
    return format();
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, super.title, super.price);

  @override
  String format() {
    String formatToppings = "Contains:";

    // concats strings on formatToppings
    for (String topping in toppings) {
      formatToppings = "$formatToppings $topping,";
    }

    // remove comma at the end
    if (formatToppings.endsWith(',')) {
      formatToppings = formatToppings.substring(0, formatToppings.length - 1);
    }

    return "$title --> $price \n$formatToppings";
  }
}

class Collections<T> {
  String name;
  List<T> data;

  Collections(this.name, this.data);

  T randomItem() {
    data.shuffle();

    return data[0];
  }
}
