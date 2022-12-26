import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instinct_exercise/screen/home_page_screen.dart';

class GetStartScreen extends StatefulWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 140,
              ),
              Text(
                "Password \nChanged!",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 280,
                width: 330,
                child: Image(
                  image: AssetImage(
                    "assets/img/img3.png",
                  ),
                ),
              ),
              const SizedBox(
                height: 160,
              ),
              SizedBox(
                width: 180,
                height: 46,
                child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60)),
                    elevation: 0,
                    backgroundColor: Colors.orangeAccent,
                  ),
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  child: const Text(
                    "Get started",
                    style: TextStyle(color: Colors.black,fontSize: 16),
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
