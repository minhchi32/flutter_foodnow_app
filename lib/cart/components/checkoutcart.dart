import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_foodnow_app/homepage/homepage.dart';
import 'package:flutter_foodnow_app/models/utilities.dart';

import '../../homepage/components/fragment/notification_fragment.dart';

class CheckOutCart extends StatelessWidget {
  double sum;
  CheckOutCart({required this.sum});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Sum:${sum}",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                  side: BorderSide(color: Colors.green),
                )),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextButton(
              onPressed: () {
                // Utilities.carts.add(cart);
                Navigator.pushNamed(context, HomePage.routeName);
              },
              child: Text(
                "Check out".toUpperCase(),
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                  side: BorderSide(color: Colors.green),
                )),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
            ),
          ),
        )
      ],
    );
  }
}
