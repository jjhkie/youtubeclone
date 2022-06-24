import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_logo(), _actions()],
      ),
    );
  }

  Widget _logo() {
    return Container(
        child: Image.network(
            "https://static.wikia.nocookie.net/pocketants/images/d/d1/YouTube_Logo.jpg/revision/latest/scale-to-width-down/262?cb=20220103144800",
            width: 130));
  }

  Widget _actions() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 23,
            height: 23,
            child: SvgPicture.asset("assets/svg/icons/bell.svg"),
          ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 30,
            height: 30,
            child: SvgPicture.asset("assets/svg/icons/search.svg"),
          ),
        ),
        SizedBox(width: 20),
        CircleAvatar(
          backgroundColor: Colors.grey.withOpacity(0.5),
          backgroundImage: Image.network(
                  "https://yt3.ggpht.com/yti/APfAmoE0adlTq1W1j6O0yB2UC15ILnkhW5KknvHVsA=s48-c-k-c0x00ffffff-no-rj")
              .image,
        )
      ],
    );
  }
}
