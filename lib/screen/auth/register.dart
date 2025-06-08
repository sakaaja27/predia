import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predia/utils/color.dart';
import 'package:get/get.dart';
import 'package:predia/widget/reusableSubmitButton.dart';
import 'package:predia/widget/reusableTextInput.dart';
import 'package:predia/widget/reusablecontenttopauth.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _tanggalLahirController = TextEditingController();
  String? _selectedGender;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000, 1, 1),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _tanggalLahirController.text =
            "${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}";
      });
    }
  }

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
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ReusableContentTopAuth(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
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
                      'Buat akun dulu yah',
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 45),
                    ReusableTextInput(
                      label: 'Nama lengkap',
                      hintText: 'masukkan nama lengkap',
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(height: 18),
                    ReusableTextInput(
                      label: 'E-mail',
                      hintText: 'masukkan e-mail',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 18),
                    ReusableTextInput(
                      label: 'Nomor Telepon',
                      hintText: 'masukkan nomor telepon',
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: ReusableTextInput(
                            label: 'Tanggal Lahir',
                            hintText: '12/01/2004',
                            controller: _tanggalLahirController,
                            keyboardType: TextInputType.datetime,
                            readOnly: true,
                            onTap: () => _selectDate(context),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Jenis Kelamin',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 6),
                              DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: inputFillColor,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                value: _selectedGender,
                                items: const [
                                  DropdownMenuItem(
                                    value: 'Laki-laki',
                                    child: Text('Laki-laki'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Perempuan',
                                    child: Text('Perempuan'),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    _selectedGender = value;
                                  });
                                },
                                hint: const Text('Pilih gender'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    ReusableTextInput(
                      label: 'Password',
                      hintText: 'masukkan password',
                      obscureText: true,
                    ),
                    const SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Harus 8 karakter atau lebih',
                        style: TextStyle(color: greyTextColor, fontSize: 10),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ReusableSubmitButton(text: 'Daftar', onPressed: () {}),
                    const SizedBox(height: 30),
                    Row(
                      children: const [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('atau daftar dengan'),
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
                          text: 'apakah sudah punya akun? ',
                          style: TextStyle(color: Colors.grey[600]),
                          children: [
                            TextSpan(
                              text: 'Masuk',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              recognizer:
                                  TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.offAllNamed('/login');
                                    },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
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
