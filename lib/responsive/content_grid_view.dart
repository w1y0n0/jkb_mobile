import 'package:flutter/material.dart';
import 'package:jkb_mobile/acara.dart';
import 'package:jkb_mobile/berita_terbaru.dart';
import 'package:jkb_mobile/constants.dart';
import 'package:jkb_mobile/informasi.dart';
import 'package:jkb_mobile/program_studi.dart';

class ContentGridView extends StatelessWidget {
  const ContentGridView({
    super.key,
    this.crossAxisCount = 2,
  });

  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.0,
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 25,
      ),
      itemCount: imgData.length,
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            if (index == 0) {
              // print('Program Studi');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProgramStudi()),
              );
            } else if (index == 1) {
              // print('Informasi');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Informasi()),
              );
            } else if (index == 2) {
              // print('Event');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Acara()),
              );
            } else {
              // print('Berita Terbaru');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BeritaTerbaru()),
              );
            }
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 1,
                  blurRadius: 6,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  imgData[index],
                ),
                Text(
                  title[index],
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
