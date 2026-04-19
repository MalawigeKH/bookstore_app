import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String coverImagePath;
  final String title;
  final String author;
  final double price;

  const Book({
    super.key,
    required this.coverImagePath,
    required this.title,
    required this.author,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          // Display title and author above the cover image
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(author, style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          // Display cover image
          Image.asset(
            coverImagePath, // Ensure this path is correct
            fit: BoxFit.cover, // Optional: Adjusts the image to cover the area
          ),
          // Display price and button in a single row below the cover image, centered
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the row content
              children: [
                Text('Rs. $price', style: TextStyle(fontSize: 16)),
                const SizedBox(width: 8), // Add some space between the price and button
                ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('Add to Cart'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}