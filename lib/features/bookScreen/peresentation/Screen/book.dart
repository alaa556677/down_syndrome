import 'package:d_syndrame/constants/assets.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  BookScreen({super.key});
  List<String> images = [
    Assets.resourceImagesBook1,
    Assets.resourceImagesBook2,
    Assets.resourceImagesBook3,
    Assets.resourceImagesBook4,
  ];
  List<String> images2 = [
    Assets.resourceImagesBook5,
    Assets.resourceImagesBook6,
    Assets.resourceImagesBook7,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffd5deef),
        centerTitle: true,
        title: const TextWidget(
          text: "كتب عن متلازمة داون",
          color: Color(0xff395C86),
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
      ),
      backgroundColor: const Color(0xffd5deef),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(right: 25.0),
                child: TextWidget(
                  text: "view all",
                  color: Color(0xff0b8c7c),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          FeatuerdBooksListView(imageUrls: images),
          const SizedBox(height: 40),
          FeatuerdBooksListViewHorizontal(
            image: images2,
          ),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.fontWeight,
      required this.fontSize});
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.end,
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decoration: TextDecoration.underline,
      ),
    );
  }
}

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}

class FeatuerdBooksListView extends StatelessWidget {
  const FeatuerdBooksListView({super.key, required this.imageUrls});
  final List<String> imageUrls;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomListViewItem(
              imageUrl: imageUrls[index],
            ),
          );
        },
      ),
    );
  }
}

class ImageItemHorzonital extends StatelessWidget {
  const ImageItemHorzonital({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2 / 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    "متلازمة داون حقائق وارشادات",
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                      children: [
                        TextSpan(
                          text: " مؤلف",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                          ),
                        ),
                        TextSpan(text: ": "),
                        TextSpan(
                          text: "ضيدان بن محمد آل مسفر",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xff6ea8b1),
                        ),
                        child: const Text(
                          "تفاصيل",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeatuerdBooksListViewHorizontal extends StatelessWidget {
  const FeatuerdBooksListViewHorizontal({super.key, required this.image});
  final List<String> image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: image.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return ImageItemHorzonital(
            image: image[index],
          );
        },
      ),
    );
  }
}
