import 'package:flutter/material.dart';
import 'package:nike_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
         Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25.0),
  child: Image.asset(
    'assets/images/nike.png',
    height: 240,
    package: null, // or specify the package if it's not in the main package
  ),
),
            const SizedBox(height: 48),
            
            // Title
        
            const Text('Just Do It',
               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),         
            ),
        

        const SizedBox(height: 28),
            // Sub title
        
          const Text('Brand New Snickers Made And Custom Kicks made with premium quality. ',
               style: TextStyle(fontSize: 16, color: Colors.grey,),   
               textAlign: TextAlign.center,      
            ),
            
         const SizedBox(height: 48),

        // start now
        GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(25),
            child: const Center(
              child: Text('Shop Now', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16,),
              ),
            ),
          ),
        )

        
            ],
          ),
        ),
      ),
    );
  }
} 