import 'package:flutter/material.dart';
import 'package:material3_show_case/widgets/btn_change_material.dart';

class PageViewCarousel extends StatelessWidget {
  const PageViewCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carousel Slider"),
      ),
      floatingActionButton: const BtnChangeMaterial(),
      body: const CarouselExample(),
    );
  }
}

class CarouselExample extends StatefulWidget {
  const CarouselExample({super.key});

  @override
  State<CarouselExample> createState() => _CarouselExampleState();
}

class _CarouselExampleState extends State<CarouselExample> {
  int activePage = 0;

  late PageController _pageController;

  List<String> images = [
    "https://images.pexels.com/photos/14534676/pexels-photo-14534676.jpeg",
    "https://images.pexels.com/photos/14320924/pexels-photo-14320924.jpeg",
    "https://images.pexels.com/photos/14534676/pexels-photo-14534676.jpeg",
    "https://images.pexels.com/photos/14320924/pexels-photo-14320924.jpeg",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> imageIndicator(imagesLength, currentIndex) {
      final ThemeData themeData = Theme.of(context);
      return List<Widget>.generate(imagesLength, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: currentIndex == index
                ? themeData.primaryColor
                : themeData.disabledColor,
            shape: BoxShape.circle,
          ),
        );
      });
    }

    return Column(
      children: [
        const SizedBox(height: 150, width: 1),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 350,
            child: PageView.builder(
                itemCount: images.length,
                // pageSnapping: true,
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() => activePage = page);
                },
                itemBuilder: (context, pagePosition) {
                  bool active = pagePosition == activePage;
                  return slider(images, pagePosition, active);
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageIndicator(images.length, activePage),
          ),
        ),
      ],
    );
  }
}

// Animated container widget
Widget slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    // padding:const  EdgeInsets.symmetric(horizontal:12),
    duration: const Duration(milliseconds: 500),
    child: FadeInImage(
      placeholder: const AssetImage('assets/jar-loading.gif'),
      image: NetworkImage(images[pagePosition]),
      fit: BoxFit.cover,
    ),
  );
}
