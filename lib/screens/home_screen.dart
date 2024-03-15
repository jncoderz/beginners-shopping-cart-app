import 'package:categrised_search/data/products_data.dart';
import 'package:categrised_search/models/product_model.dart';
import 'package:categrised_search/screens/cart_bag_screen.dart';
import 'package:categrised_search/screens/detail_product_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchText="";
  List<ProductModel> filterdList =[];
  int categoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    filterdList= categorizeList().where((element) => element.title.toLowerCase().contains(searchText)).toList();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CartBagScreen(),));
              },
              icon: Icon(Icons.shopping_cart)),
        ],
        title: Text(
          "Home Screen",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.teal),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    searchText=value.toLowerCase();
                  });
                },
                decoration: InputDecoration(hintText: "Search",prefixIcon: Icon(Icons.search)),
              
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Category",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 70,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemCount: categorys.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          categoryIndex = index;
                        });
                      },
                      child: Container(
                        width: 160,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(10),
                            color: categoryIndex == index
                                ? Colors.teal
                                : Colors.grey.shade100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image(
                              image: AssetImage(categorys[index].image),
                              height: 60,
                            ),
                            Text(
                              categorys[index].title,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: categoryIndex == index
                                      ? Colors.white
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Products",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 270,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemCount: filterdList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailProductScreen(
                                        product: filterdList[index],
                                      )));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: 190,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade100),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image:
                                    AssetImage(filterdList[index].image),
                                height: 130,
                              ),
                              Text(
                                filterdList[index].title,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal),
                              ),
                              Text(
                                filterdList[index].subTitle,
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Price",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.teal),
                                  ),
                                  Text(
                                    "\$${filterdList[index].price.toStringAsFixed(2)}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.teal),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<ProductModel> categorizeList() {
    switch (categoryIndex) {
      case 0:
        return burgerList;
      case 1:
        return dessertList;
      case 2:
        return pizzaList;
      default:
        return [];
    }
  }
}
