import 'package:flutter/material.dart';
import 'package:ysdev_retailapp_april23/constants.dart';
import 'package:ysdev_retailapp_april23/models/Product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorDot(
                    mycolor: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(mycolor: Color(0xFFF8C078)),
                  ColorDot(mycolor: Color(0xFFA29B9B)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
            style: TextStyle(
              color: kTextColor,
            ),
            children: [
              TextSpan(
                text: "Size",
              ),
              TextSpan(
                text: "${product.size}",
                style: Theme.of(context).textTheme.headlineMedium.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          )),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color mycolor;
  final bool isSelected;

  const ColorDot({
    Key key,
    this.mycolor,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: kDefaultPaddin / 4,
          right: kDefaultPaddin / 2,
        ),
        padding: EdgeInsets.all(2.5),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelected ? Color(0xff356c95) : Colors.transparent,
            )),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color(0xff356c95),
            shape: BoxShape.circle,
          ),
        ));
  }
}
