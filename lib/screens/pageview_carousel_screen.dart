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
    "https://cafeselcriollo.com/wp-content/uploads/2022/01/beneficios-del-cafe-en-grano_.jpg",
    "https://i.blogs.es/9b5cc5/pan-facil-y-rapido-1/840_560.jpg",
    "https://cdn.elcocinerocasero.com/imagen/receta/1000/2022-07-03-14-12-38/cafe-bombon.jpeg",
    "https://s1.eestatic.com/2022/10/06/ciencia/nutricion/708689949_227786978_1024x576.jpg",
    "https://clubdelicatessen.com/wp-content/uploads/2022/04/frutas-tropicales-en-Espana.jpg",
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
            height: 300,
            child: PageView.builder(
                itemCount: images.length,
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
