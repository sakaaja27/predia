import 'package:flutter/material.dart';
import 'package:predia/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:predia/widget/reusableBottomNav.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hai, Saka',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Semangat cegah diabetes',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/google.png',
                    width: 48,
                    height: 48,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(
              top: 120,
              left: 24,
              right: 24,
              bottom: 24,
            ),
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          color: customGreenColor.withOpacity(0.7),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Pengingat Cerdas',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            Icon(Icons.settings, color: Colors.white, size: 20),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 16,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                        child: const Text(
                          'Belum isi cek harian, nih! Yuk bantu PreDia jaga pola hidup sehatmu.',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: greenAnalisis.withOpacity(0.3),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: -20,
                            bottom: -30,
                            child: Image.asset(
                              'assets/images/luka_scan.png',
                              width: 100,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Analisa Luka',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Menganalisis untuk\nmengindikasikan risiko diabetes',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    height: 1.4,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: infoColor.withOpacity(0.5),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: -20,
                            bottom: -30,
                            child: Image.asset(
                              'assets/images/scan_makanan.png',
                              width: 100,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Analisa Makanan',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'dapatkan informasi tentang\ntingkat gula darah ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    height: 1.4,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(currentIndex: 0),
      floatingActionButton: Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: InkWell(
          onTap: () => Get.offAllNamed('/scan_luka'),
          borderRadius: BorderRadius.circular(999),
          child: const Icon(
            Icons.workspace_premium_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
