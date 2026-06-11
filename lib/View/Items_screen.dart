import 'package:bilal_masala/View/billing_screen.dart';
import 'package:bilal_masala/utility/constants/routes.dart';
import 'package:bilal_masala/utility/helpers/size_config.dart';
import 'package:bilal_masala/utility/widgets/Items.dart';
import 'package:bilal_masala/utility/widgets/custom_category_button.dart';
import 'package:bilal_masala/utility/widgets/search_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        children: [
          SizedBox(height: 8),

          // SEARCH
          SearchItems(),

          // CATEGORY
          SizedBox(height: 24),
          CustomCategoryButton(),

          // LIST OF ITEMS
          SizedBox(height: 20),
          ItemsList(),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
