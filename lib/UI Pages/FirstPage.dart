import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tempconverter/UI%20Pages/MainPage.dart';
import 'package:tempconverter/UI%20Pages/MainPageTwo.dart';
import 'package:tempconverter/main.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.redAccent,
        title: Text(
          "Temperature Converter",
          style: TextStyle(
              fontSize: 20, color: primaryColor, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              SystemNavigator.pop();
            },
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 172, 204, 219).withOpacity(0.3)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainPage()));
                },
                child: Card(
                  child: SizedBox(
                    height: 150,
                    width: 380,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius: 70,
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/fah.png"),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ),
                        const Text(
                          "Celsius to Fahrenheit",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainPageTwo()));
                },
                child: Card(
                  child: SizedBox(
                    height: 150,
                    width: 380,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius: 70,
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/celsius.png"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Fahrenheit to Celsius",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
