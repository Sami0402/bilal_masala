import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              // width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFF851F00),
                    Color(0xFFA53200),
                    Color(0xFFC24A00),
                  ],
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: AppColor.white,
                    size: 32,
                  ),
                  Text(
                    'Bilal Masala',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.white,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(width: 100),
                  Text(
                    'Todays date',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(color: AppColor.darkGrey),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          fillColor: AppColor.charcoal,
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.purple[200],
                          ),
                          hintText: 'Custumer Name(Optional)',
                          border: OutlineInputBorder(),
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
    );
  }
}
