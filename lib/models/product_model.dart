class ProductModel {
  final String image;
  final String title;
  final String subTitle;
  final String description;
  final double price;
  int quantity;

  ProductModel(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.description,
      required this.price,
       this.quantity=1,
     });
}
