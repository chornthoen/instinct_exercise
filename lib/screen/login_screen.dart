import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instinct_exercise/screen/home_page_screen.dart';

import 'forgot_password_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  var username = " ";
  var password = " ";
  //
  // @override
  // void initState() {
  //   super.initState();
  //   controllerName = TextEditingController();
  //   controllerPassword = TextEditingController();
  // }

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
                height: 70,
              ),
              Text(
                "Login to \nfind the best food",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration:  const InputDecoration(

                  labelText: "EMAIL",
                  hintText: "Enter email",
                  suffixIcon: Icon(Icons.email_outlined),
                  floatingLabelStyle: TextStyle(
                    color: Colors.grey,


                  ),
                ),

                controller: controllerName,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                  fillColor: Colors.black,
                  labelText: "Password",
                  hintText: "Enter password",
                  suffixIcon: Icon(Icons.lock_outline),
                ),
                controller: controllerPassword,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordScreen()));
                    },
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  HomePage(
                          name: controllerName.text,
                          password: controllerPassword.text,
                        ),
                      ),
                    );
                    print("controllerName: ${controllerName.text}");
                    print("controllerPassword: ${controllerPassword.text}");
                  },
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      elevation: 0,
                      backgroundColor: Colors.orangeAccent),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Text("Username: $username"),
              // Text("Password: $password"),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Image(
                    image: AssetImage("assets/img/fb.png"),
                    width: 25,
                    height: 20,
                  ),
                  label: const Text(
                    "Sign up with Facebook",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
