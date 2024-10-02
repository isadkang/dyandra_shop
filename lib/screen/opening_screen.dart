import 'package:dyandra_shop/constant/color.dart';
import 'package:flutter/material.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    final isMobile = size.width <
        600; 

    return Scaffold(
      backgroundColor: bgPrimary,
      body: Center(
        
        child: Container(
          width: isMobile
              ? size.width
              : 500, 
          padding: EdgeInsets.symmetric(
              horizontal:
                  isMobile ? 16.0 : 0), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Image.asset(
                'images/opening.png',
                width: isMobile
                    ? size.width * 0.7
                    : 300, 
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20), 
              
              const Text(
                'Cari Furniture Terbaik Untuk Rumah Kesayangan Anda',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30), 
              
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 80),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  side: const BorderSide(
                    color: accentColor,
                    width: 2,
                  ),
                ),
                child: const Text(
                  'Beli Sekarang',
                  style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.w600,
                    color: primaryColor,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
