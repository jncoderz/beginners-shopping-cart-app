

import 'package:categrised_search/models/category_model.dart';
import 'package:categrised_search/models/product_model.dart';

List<CategoryModel> categorys = [
  CategoryModel(image: "assets/images/burger.png", title: "Burger"),
  CategoryModel(image: "assets/images/dessert.png", title: "dessert"),
  CategoryModel(image: "assets/images/pizza.png", title: "Pizza"),
];

List<ProductModel> burgerList = [
  ProductModel(
      image: "assets/images/burger1.png",
      title: "Zinger Burger",
      subTitle:"Hot & Spicy",
      description:  "Zinger burger consists of a juicy chicken fillet that is marinated in a special blend of spices and then coated in crispy bread crumbs. The chicken fillet is then sandwiched between two soft buns, along with lettuce, mayonnaise.",
      price: 10.00),
  ProductModel(
      image: "assets/images/burger2.png",
      title: "Beef Burger",
     subTitle:"Hot & Spicy",
      description:  "Beef burger consists of a juicy chicken fillet that is marinated in a special blend of spices and then coated in crispy bread crumbs. The chicken fillet is then sandwiched between two soft buns, along with lettuce, mayonnaise.",
      price: 9.00),
  ProductModel(
      image: "assets/images/burger3.png",
      title: "Chicken Burger",
      subTitle:"Hot & Spicy",
      description:  "Chicken burger consists of a juicy chicken fillet that is marinated in a special blend of spices and then coated in crispy bread crumbs. The chicken fillet is then sandwiched between two soft buns, along with lettuce, mayonnaise.",
      price: 8.00),
];

List<ProductModel> dessertList = [
  ProductModel(
      image: "assets/images/dessert1.png",
      title: "Cake",
      subTitle:"Icecream",
      description: "Ice cream cake is a frozen dessert typically made from milk or cream that has been flavoured with a sweetener, either sugar or an alternative, and a spice, such as cocoa or vanilla, or with fruit, such as strawberries or peaches.",
      price: 5.00),
  ProductModel(
      image: "assets/images/dessert2.png",
      title: "Cup Cake",
      subTitle:"Icecream",
      description:  "Ice cream cup cake is a frozen dessert typically made from milk or cream that has been flavoured with a sweetener, either sugar or an alternative, and a spice, such as cocoa or vanilla, or with fruit, such as strawberries or peaches.",
      price: 6.00),
  ProductModel(
      image: "assets/images/dessert3.png",
      title: "Brown Cake",
      subTitle:"Icecream",
      description: "Brown Ice cream cake is a frozen dessert typically made from milk or cream that has been flavoured with a sweetener, either sugar or an alternative, and a spice, such as cocoa or vanilla, or with fruit, such as strawberries or peaches.",
      price: 7.00),
];

List<ProductModel> pizzaList = [
  ProductModel(
      image: "assets/images/pizza1.png",
      title: "Hot & Spicy pizza",
     subTitle:"Mixed with cheese",
      description: "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot ...",
      price: 11.00),
  ProductModel(
      image: "assets/images/pizza2.png",
      title: "Jalepeno pizza",
    subTitle:"Mixed with cheese",
      description:  "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot ...",
      price: 12.00),
  ProductModel(
      image: "assets/images/pizza3.png",
      title: "Cheezy pizza",
      subTitle:"Mixed with cheese",
      description: "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot ...",
      price: 10.00),
];

List<ProductModel> cartBag=[];