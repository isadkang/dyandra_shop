import 'package:dyandra_shop/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String imageUrl;
  final String benefitDesc;

  const DetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.benefitDesc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgPrimary,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.brown,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 600;

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: isMobile
                  ? Stack(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(imageUrl),
                              const SizedBox(height: 16),
                              ..._buildProductDetails(),
                            ]),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image Section
                        Expanded(
                          flex: 1,
                          child: Image.asset(imageUrl),
                        ),
                        const SizedBox(width: 20),
                        // Product Details Section
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: _buildProductDetails(),
                          ),
                        ),
                      ],
                    ),
            ),
          );
        },
      ),
      // Bottom Buttons
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        decoration: BoxDecoration(
          color: accentColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
        child: Row(
          children: [
            // Buy Now Button
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
                label: const Text("Beli Sekarang",
                    style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: accentColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shadowColor: Colors.transparent,
                ),
              ),
            ),
            const SizedBox(
              width: 16,
              height: 60,
              child: VerticalDivider(
                color: Colors.black,
                thickness: 1,
                width: 20,
              ),
            ),
            // Add to Favorite Button
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border, color: Colors.black),
                label: const Text(
                  "Tambah Favorite",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: accentColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shadowColor: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildProductDetails() {
    return [
      Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.brown,
        ),
      ),
      const SizedBox(height: 8),
      Text(
        price,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 8),
      Text(
        description,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black87,
        ),
      ),
      const SizedBox(height: 16),

      // Benefit Section
      const Text(
        "Benefit:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 8),
      Text(
        benefitDesc,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black87,
        ),
      ),
    ];
  }
}
