import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instinct_exercise/screen/get_start_screen.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                "Change \nNew Password",
                style: GoogleFonts.montserrat(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const TextField(
                decoration: InputDecoration(
                    labelText: "NEW PASSWORD",
                    hintText: "New password",
                    suffixIcon: Icon(Icons.visibility_off_outlined)),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                    labelText: "NEW PASSWORD",
                    hintText: "Confirm password",
                    suffixIcon: Icon(Icons.visibility_off_outlined)),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Please provide your email to reset your password,please don't share any data to other people",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 46,
                width: double.infinity,
                child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 0,
                    backgroundColor: Colors.orangeAccent,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const GetStartScreen()));
                  },
                  child: const Text(
                    "Change Password",
                    style: TextStyle(color: Colors.black),
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
