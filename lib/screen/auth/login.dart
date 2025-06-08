import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predia/utils/color.dart';
import 'package:get/get.dart';
import 'package:predia/widget/reusableSubmitButton.dart';
import 'package:predia/widget/reusableTextInput.dart';
import 'package:predia/widget/reusablecontenttopauth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background_phone.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(height: 200, color: Colors.black.withOpacity(0.5)),
          const ReusableContentTopAuth(),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 220, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Haii Sobat Predia',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Silahkan masuk yah',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 45),
                  ReusableTextInput(
                    label: 'E-mail',
                    hintText: 'masukkan e-mail',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 18),
                  ReusableTextInput(
                    label: 'Password',
                    hintText: 'masukkan password',
                    obscureText: true,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Lupa Password?',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  ReusableSubmitButton(text: 'Masuk', onPressed: () {}),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('atau masuk dengan'),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [socialButton('assets/images/google.png')],
                  ),

                  const SizedBox(height: 30),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'apakah tidak punya akun? ',
                        style: TextStyle(color: Colors.grey[600]),
                        children: [
                          TextSpan(
                            text: 'Daftar',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.offAllNamed('/register');
                                  },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget socialButton(String asset) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 45,
        height: 45,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Image.asset(asset),
      ),
    );
  }
}
