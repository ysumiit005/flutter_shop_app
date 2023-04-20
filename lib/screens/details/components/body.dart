import 'package:flutter/material.dart';
import 'package:ysdev_retailapp_april23/constants.dart';
import 'package:ysdev_retailapp_april23/models/Product.dart';
import 'package:ysdev_retailapp_april23/screens/details/components/add_to_cart.dart';
import 'package:ysdev_retailapp_april23/screens/details/components/cart_counter.dart';
import 'package:ysdev_retailapp_april23/screens/details/components/color_and_size.dart';
import 'package:ysdev_retailapp_april23/screens/details/components/counter_with_fav_btn.dart';
import 'package:ysdev_retailapp_april23/screens/details/components/description.dart';
import 'package:ysdev_retailapp_april23/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({key, this.product});

  @override
  Widget build(BuildContext context) {
    //provides total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                  top: size.height * 0.12,
                  left: kDefaultPaddin,
                  right: kDefaultPaddin,
                ),
                // height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    ColorAndSize(product: product),
                    SizedBox(height: kDefaultPaddin / 2),
                    Description(product: product),
                    SizedBox(height: kDefaultPaddin / 2),
                    CounterWithFavBtn(),
                    SizedBox(height: kDefaultPaddin / 2),
                    AddToCart(product: product)
                  ],
                ),
              ),
              ProductTitleWithImage(product: product)
            ],
          ),
        ),
      ],
    ));
  }
}
