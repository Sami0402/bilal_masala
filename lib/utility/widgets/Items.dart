import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/constants/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  Items({super.key});

  final List<String> masalaName = [
    'Lal Mirchi Powder',
    'Kasmiri Mirchi',
    'Rasgulla Mirichi',
    'Haldi Powder',
    'Garam Masala',
    'Dhaniya Powder',
    'Aamchur Powder',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: masalaName.length,
      itemBuilder: (context, index) {
        return Card(
          color: AppColor.cardBg,
          child: ListTile(
            title: Text(masalaName[index], style: TypographyPoppins.medium),
            subtitle: Row(
              children: [
                Container(
                  height: 25,
                  width: 70,
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(color: AppColor.clightred),
                  child: Text("100g-45rs"),
                ),
                Container(
                  height: 25,
                  width: 70,
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(color: AppColor.clightred),
                  child: Text("250g-100rs"),
                ),
                Container(
                  height: 25,
                  width: 70,
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(color: AppColor.clightred),
                  child: Text("500g-190rs"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
