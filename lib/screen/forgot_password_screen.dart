
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instinct_exercise/screen/verrification_code_screen.dart';

import 'login_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              Text(
                "Forgot \nPassword?",
                style: GoogleFonts.montserrat(
                    fontSize: 27, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 50,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "EMAIL",
                  hintText: "Enter email",
                  suffixIcon: Icon(Icons.email_outlined),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                  "Please provide your email to reset your password,please don't share any data to other people",
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VerificationCodeScreen()));
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 0,
                    backgroundColor: Colors.orangeAccent,
                  ),
                  child: const Text(
                    "Reset Password",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Remember now?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context )=> const LoginScreen()));
                    },
                    child: const Text(
                      "Login here",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 270,
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Need help?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
