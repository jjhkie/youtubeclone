import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [_thumbnail(), _simpleDetailinfo()],
      ),
    );
  }

  Widget _thumbnail() {
    return Container(height: 250, color: Colors.grey.withOpacity(0.5));
  }

  Widget _simpleDetailinfo() {
    return Container(
      padding: const EdgeInsets.only(left:10,bottom:20),
        child: Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey.withOpacity(0.5),
          backgroundImage: Image.network(
                  "https://yt3.ggpht.com/yti/APfAmoE0adlTq1W1j6O0yB2UC15ILnkhW5KknvHVsA=s48-c-k-c0x00ffffff-no-rj")
              .image,
        ),
        SizedBox(width:15),
        Expanded(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("[iOS, Xcode, ERROR] 폰 빌드 에러 - Unable to prepare DEVICE for development, Failed to prepare device for development ERROR 해결법",maxLines: 2,)),
                IconButton(
                  alignment: Alignment.topCenter,
                    icon: Icon(Icons.more_vert, size: 18), onPressed: () {})
              ],
            ),
            Row(
              children: [
                Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "조회수 1,000 회",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "2022-06-24",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6),
                  ),
                )
              ],
            )
          ],
        ))
      ],
    ));
  }
}
