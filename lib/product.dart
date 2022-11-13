class Product {
  final String name;
  final String price;
  final String quantity;
  final String image;
  final String description;

  Product(
    this.name,
    this.price,
    this.quantity,
    this.image,
    this.description,
  );
}

final List<Product> allData = [
  Product('Bayam', '2.000', 'Ikat', 'assets/img1.png',
      'lorem ipsum The framework replaces the subtree below this widget with the widget returned by this method, either by updating the existing subtree or by removing the subtree and inflating a new subtree, depending on whether the widget returned by this method can update the root of the existing subtree, as determined by calling'),
  Product('Avokat', '12.000', 'Kg', 'assets/img2.png',
      'lorem ipsum The framework replaces the subtree below this widget with the widget returned by this method, either by updating the existing subtree or by removing the subtree and inflating a new subtree, depending on whether the widget returned by this method can update the root of the existing subtree, as determined by calling'),
  Product('Jagung', '10.000', 'Kg', 'assets/img3.png',
      'lorem ipsum The framework replaces the subtree below this widget with the widget returned by this method, either by updating the existing subtree or by removing the subtree and inflating a new subtree, depending on whether the widget returned by this method can update the root of the existing subtree, as determined by calling'),
  Product('Kiwi', '22.000', 'Kg', 'assets/img4.png',
      'lorem ipsum The framework replaces the subtree below this widget with the widget returned by this method, either by updating the existing subtree or by removing the subtree and inflating a new subtree, depending on whether the widget returned by this method can update the root of the existing subtree, as determined by calling'),
  Product('Jeruk', '29.000', 'Kg', 'assets/img5.png',
      'lorem ipsum The framework replaces the subtree below this widget with the widget returned by this method, either by updating the existing subtree or by removing the subtree and inflating a new subtree, depending on whether the widget returned by this method can update the root of the existing subtree, as determined by calling'),
  Product('Apel', '42.000', 'Kg', 'assets/img6.png',
      'lorem ipsum The framework replaces the subtree below this widget with the widget returned by this method, either by updating the existing subtree or by removing the subtree and inflating a new subtree, depending on whether the widget returned by this method can update the root of the existing subtree, as determined by calling'),
];
