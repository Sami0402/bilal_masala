import 'package:bilal_masala/Controllers/home_controller.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/custom_App_Bar.dart';
import 'package:bilal_masala/utility/widgets/search_items.dart';
import 'package:bilal_masala/utility/widgets/top_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.darkGrey,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                children: [

                  SizedBox(height: SizeConfig.screenHeight * 0.15),
                  TopCard(),

                  // SEARCH
                  SearchItems(),

                  // CATEGORY

                  // LIST OF ITEMS
                ],
              ),
            ),

            // HEADER
            CustomAppBar(controller: controller),
          ],
        ),
      ),
    );
  }
}






