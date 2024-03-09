// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class HomeContainer extends StatelessWidget {
  HomeContainer({
    super.key,
    required this.title,
    this.onTap,
    this.image,
  });
  String title;
  void Function()? onTap;
  String? image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: kIsWeb
            ? MediaQuery.of(context).size.height * 0.28
            : MediaQuery.of(context).size.height * 0.20,
        width: kIsWeb
            ? MediaQuery.of(context).size.width * 0.28
            : MediaQuery.of(context).size.width * 0.6,
        decoration: const BoxDecoration(
          color: blueColor,
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20), topEnd: Radius.circular(20)),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: kIsWeb
                      ? MediaQuery.of(context).size.height * 0.18
                      : MediaQuery.of(context).size.height * 0.13,
                  decoration: BoxDecoration(
                    color:
                        kIsWeb ? Colors.white.withOpacity(0.9) : Colors.white,
                    borderRadius: const BorderRadiusDirectional.only(
                        topStart: Radius.circular(20),
                        topEnd: Radius.circular(20)),
                  ),
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    image!,
                    height: kIsWeb
                        ? MediaQuery.of(context).size.height * 0.15
                        : MediaQuery.of(context).size.height * 0.1,
                    width: kIsWeb
                        ? MediaQuery.of(context).size.width * 0.15
                        : MediaQuery.of(context).size.width * 0.2,
                  ),
                )),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
