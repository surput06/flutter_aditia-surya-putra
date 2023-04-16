import 'package:flutter/material.dart';

//Membuat class product
class Product {
  final String nama;
  final String harga;
  final String imageUrl;

  Product({
    required this.nama,
    required this.harga,
    required this.imageUrl,
  });
}

//Membuat List dari class product
List<Product> product = [
  Product(
    nama: 'The Statue of Her Excellency Raiden Shogun',
    harga: "\$ 79.99",
    imageUrl: 'https://genshin.global/wp-content/uploads/2022/10/raiden-shogun-statue-almighty-excellency-official-merch.webp',
  ),
  Product(
    nama: 'The Statue of Her Excellency Raiden Shogun',
    harga: "\$ 79.99",
    imageUrl: 'https://genshin.global/wp-content/uploads/2022/10/raiden-shogun-statue-almighty-excellency-official-merch.webp',
  ),
  Product(
    nama: 'The Statue of Her Excellency Raiden Shogun',
    harga: "\$ 79.99",
    imageUrl: 'https://genshin.global/wp-content/uploads/2022/10/raiden-shogun-statue-almighty-excellency-official-merch.webp',
  ),
  Product(
    nama: 'The Statue of Her Excellency Raiden Shogun',
    harga: "\$ 79.99",
    imageUrl: 'https://genshin.global/wp-content/uploads/2022/10/raiden-shogun-statue-almighty-excellency-official-merch.webp',
  ),
  Product(
    nama: 'The Statue of Her Excellency Raiden Shogun',
    harga: "\$ 79.99",
    imageUrl: 'https://genshin.global/wp-content/uploads/2022/10/raiden-shogun-statue-almighty-excellency-official-merch.webp',
  ),
];

//membuat widget List Product
class ListProduct extends StatelessWidget {
  const ListProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: product.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          final products = product[index];
          return Card(
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Expanded(
                child: Image.network(
                  products.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(products.nama),
                    const SizedBox(height: 20),
                    Text(products.harga),
                  ],
                ),
              ),
            ]),
          );
        });
  }
}
