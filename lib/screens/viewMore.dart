import 'package:flutter/material.dart';

// Dummy model for category items
class CategoryItem {
  final String name;
  final String description;
  final double originalPrice;
  final double discountPrice;
  final String imageUrl;

  CategoryItem({
    required this.name,
    required this.description,
    required this.originalPrice,
    required this.discountPrice,
    required this.imageUrl,
  });
}

// Dummy data for category items
final List<CategoryItem> electronicsItems = [
  CategoryItem(
    name: 'Smartphone',
    description: 'High-performance smartphone with latest features.',
    originalPrice: 1200,
    discountPrice: 999,
    imageUrl: 'assets/smartphone.jpeg',
  ),
  CategoryItem(
    name: 'Laptop',
    description: 'Thin and powerful laptop for all your computing needs.',
    originalPrice: 1800,
    discountPrice: 1499,
    imageUrl: 'assets/laptop.jpg',
  ),
  // Add more items as needed
];

class CategoryItemsPage extends StatelessWidget {
  final String categoryName;
  final List<CategoryItem> items;

  const CategoryItemsPage({
    Key? key,
    required this.categoryName,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    items[index].imageUrl,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: Text(items[index].name),
                    subtitle: Text(items[index].description),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '\₹${items[index].originalPrice.toStringAsFixed(2)}',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '\₹${items[index].discountPrice.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ButtonBar(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Add to cart functionality
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Added to Cart')),
                          );
                        },
                        child: const Text('Add to Cart'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.teal.shade700,
                          textStyle: const TextStyle(fontFamily: 'Roboto'),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Buy now functionality
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Order Placed')),
                          );
                        },
                        child: const Text('Buy Now'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.orange.shade700,
                          textStyle: const TextStyle(fontFamily: 'Roboto'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  final List<String> categories = [
    'Electronics',
    'Fashion',
    'Home Appliances',
    'Books',
    'Toys',
    'Groceries',
    'Beauty',
    'Sports',
    'Automotive',
    'Jewelry',
  ];

  final List<String> categoryImages = [
    'assets/electronics.jpeg',
    'assets/fashion.jpeg',
    'assets/home.jpg',
    'assets/books.jpeg',
    'assets/toys.jpeg',
    'assets/groceries.jpeg',
    'assets/beauty.jpeg',
    'assets/sports.jpeg',
    'assets/automotive.jpg',
    'assets/jwellery.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.amber[100],
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Container(
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  child: InkWell(
                    onTap: () {
                      // Navigate to category items page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryItemsPage(
                            categoryName: categories[index],
                            items:
                                electronicsItems, // Replace with respective category items
                          ),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          categoryImages[index],
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          categories[index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
