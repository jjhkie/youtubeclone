import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class YoutubeDetail extends StatelessWidget {
  const YoutubeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(height: 250, color: Colors.grey.withOpacity(0.5)),
            Expanded(child: _description())
          ],
        ));
  }

  Widget get line => Container(height: 1, color: Colors.black.withOpacity(0.1));

  Widget _ownerZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.5),
            backgroundImage: Image.network(
                    "https://yt3.ggpht.com/yti/APfAmoE0adlTq1W1j6O0yB2UC15ILnkhW5KknvHVsA=s48-c-k-c0x00ffffff-no-rj")
                .image,
          ),
          SizedBox(width:15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('youtube Test Name', style: TextStyle(fontSize: 18)),
                Text(
                  '구독자 10,000',
                  style: TextStyle(
                      fontSize: 14, color: Colors.black.withOpacity(0.6)),
                )
              ],
            ),
          ),
          GestureDetector(
            child: Text(
              "구독",
              style: TextStyle(color: Colors.red, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }

  Widget _description() {
    return SingleChildScrollView(
        child: Column(
      children: [
        _titleZone(),
        line,
        Container(
          height: 1,
          color: Colors.black.withOpacity(0.1),
        ),
        _descriptionZone(),
        _buttonZone(),
        SizedBox(height: 20),
        line,
        _ownerZone()
      ],
    ));
  }

  Widget _buttonOne(String iconPath, String text) {
    return Column(
      children: [
        SvgPicture.asset("assets/svg/icons/$iconPath.svg"),
        Text(text)
      ],
    );
  }

  Widget _buttonZone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buttonOne("like", "1000"),
        _buttonOne("dislike", "0"),
        _buttonOne("share", "공유"),
        _buttonOne("save", "저장")
      ],
    );
  }

  Widget _descriptionZone() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Text(
        '안녕하세요 youtube 테스트 중입니다.',
        style: TextStyle(fontSize: 14),
      ),
    );
  }

  Widget _titleZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "유튭 화면 만들기 중입니다.",
            style: TextStyle(fontSize: 15),
          ),
          Row(
            children: [
              Text(
                "조회수 1,000회",
                style: TextStyle(
                    fontSize: 13, color: Colors.black.withOpacity(0.5)),
              ),
              SizedBox(width: 10),
              Text("2022-06-22",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black.withOpacity(0.5),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
