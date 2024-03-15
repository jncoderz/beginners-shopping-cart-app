import 'package:categrised_search/data/products_data.dart';
import 'package:categrised_search/methods/cart_bag_method.dart';
import 'package:categrised_search/models/product_model.dart';
import 'package:categrised_search/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CartBagScreen extends StatefulWidget {
  const CartBagScreen({super.key});

  @override
  State<CartBagScreen> createState() => _CartBagScreenState();
}

class _CartBagScreenState extends State<CartBagScreen> {
  void onDelete(ProductModel data) {
    setState(() {
      if (cartBag.length == 1) {
        cartBag.clear();
      } else {
        cartBag.removeWhere((element) => element == data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Screen"),
        actions: [Text("Total ${cartBag.length} Items")],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: cartBag.isNotEmpty
                  ? ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          height: 110,
                          color: Colors.grey.shade100,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(color: Colors.teal),
                                  ),
                                  child: Image(
                                      image: AssetImage(cartBag[index].image)),
                                ),
                                Column(children: [
                                  Text(
                                    cartBag[index].title,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.teal),
                                  ),
                                  Text(
                                    cartBag[index].subTitle,
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.grey),
                                  ),
                                  Row(children: [
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if(cartBag[index].quantity>=1){
                                              cartBag[index].quantity++;
                                            }else{
                                              cartBag[index].quantity==1;
                                            }
                                          });
                                        },
                                        icon: Icon(Icons.add_circle_outline)),
                                    Text(cartBag[index].quantity.toString()),
                                    IconButton(
                                        onPressed: () {

                                          setState(() {
                                            if(cartBag[index].quantity>1){
                                              cartBag[index].quantity--;
                                            }else{cartBag[index].quantity==1;}
                                          });
                                        },
                                        icon:
                                            Icon(Icons.remove_circle_outline)),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "\$${cartBag[index].price.toString()}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    ),
                                  ]),
                                ]),
                                IconButton(
                                  onPressed: () {
                                    onDelete(cartBag[index]);
                                  },
                                  icon: Icon(Icons.clear),
                                ),
                              ]),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                      itemCount: cartBag.length)
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "No Item added !",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Once you have added, come back :)",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
            ),
         Divider(), 
            Expanded(
              child: Column(children: [
                Container(
                  width: double.infinity,
                  height: 110,
                  color: Colors.grey.shade100,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("SubTotal"),
                        Text(calculateSubTotal().toString()),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery Charges"),
                          Text(calculateDeliveryTotal().toString()),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text(calculateTotal().toString()),
                        ]),
                  ]),
                ),
              ]),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal, minimumSize: Size(400, 50)),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: Text(
                  "Check Out",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
