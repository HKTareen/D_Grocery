import 'package:d_grocery/views/home/components/categories_list.dart';
import 'package:d_grocery/views/home/components/coupons_list.dart';
import 'package:d_grocery/views/home/components/popular_products.dart';
import 'package:flutter/material.dart';

import 'components/home_greetings.dart';
import 'components/home_header.dart';
import 'components/home_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              HomeHeader(),
              Greetings(),
              SearchBar(),
              CouponsListHorizontal(),
              CategoriesListHorizontal(),
              PopularProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
