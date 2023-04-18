import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'dart:ui' as ui;

class FireDetector extends StatefulWidget {
  const FireDetector({super.key});

  @override
  State<FireDetector> createState() => _FireDetectorState();
}

class _FireDetectorState extends State<FireDetector>
    with SingleTickerProviderStateMixin {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/image/background.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          margin: const EdgeInsets.only(top: 16, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "FIRE DETECTOR PAGE",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ui.Color.fromARGB(255, 8, 30, 48),
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                "Fire Detecor with Flame Sensor ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ui.Color.fromARGB(255, 8, 30, 48),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 5),
                    CircularPercentIndicator(
                      radius: 120,
                      lineWidth: 5,
                      percent: 1.0,
                      progressColor: isChecked ? Colors.red : Colors.green,
                      center: isChecked
                          ? Image.asset(
                              'assets/image/house1.png',
                              height: 190,
                              width: 160,
                            )
                          : Image.asset(
                              'assets/image/house3.png',
                              height: 190,
                              width: 160,
                            ),
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        isChecked ? 'FIRE \n DETECTED' : 'FIRE \n NOT-DETECTED',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isChecked ? Colors.red.shade800 : Colors.green,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8), // Add spacing between image and text
              Text(
                isChecked
                    ? 'Authorized access.\n Welcome to your safe workplace!'
                    : 'Security breach detected.\n Please verify your identity !',
                textAlign: TextAlign.center, // Add your text here
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: size.height * 0.04),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/image/Tunisie-Telecom.jpg', // Replace with your image file path
                  height: 130,
                  width: 120,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _roundedButton({
    required String title,
    bool isActive = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
      decoration: BoxDecoration(
        color: isActive ? Colors.indigo : Colors.transparent,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.indigo),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
