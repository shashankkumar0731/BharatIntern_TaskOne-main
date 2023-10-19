import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController tempController = TextEditingController();
  String result = "0";

  void converter() {
    double celsius = double.tryParse(tempController.text) ?? 0.0;
    double fahrenheit = (celsius * 9 / 5) + 32;
    setState(() {
      result = fahrenheit.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.redAccent.shade200,
            ]),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Let's Convert",
                    style: GoogleFonts.signikaNegative(
                        fontSize: 30,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/images/thermo.png"),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 18),
                  child: SizedBox(
                    width: 350,
                    child: TextField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(5),
                      ],
                      style: const TextStyle(color: Colors.white),
                      controller: tempController,
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(

                        hintText: "Please enter the value",
                        hintStyle: const TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(
                            (20),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.redAccent,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 160,
                  width: 380,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 28),
                    child: Center(
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                            child: Text(
                          "Temperature is $result Degree Fahrenheit",
                          style: GoogleFonts.signikaNegative(
                              fontSize: 18, color: Colors.redAccent.shade200),
                        )),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.redAccent),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            iconSize: const MaterialStatePropertyAll(90),
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.white)),
                        onPressed: converter,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Convert",
                            style: TextStyle(fontSize: 20, color:Colors.redAccent),
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
