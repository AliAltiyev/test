import 'package:core_ui/core_ui.dart';

class AppCarousel extends StatelessWidget {
  final double height;
  final double viewportFraction;
  final double aspectRatio;
  final bool? autoPlay;
  final Widget Function(
    BuildContext,
    int,
    int,
  ) itemBuilder;
  final int itemCount;

  const AppCarousel({
    required this.height,
    required this.viewportFraction,
    required this.aspectRatio,
    this.autoPlay,
    required this.itemBuilder,
    required this.itemCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: itemCount,
        itemBuilder: itemBuilder,
        options: CarouselOptions(
          height: height,
          aspectRatio: aspectRatio,
          viewportFraction: viewportFraction,
          initialPage: Dimensions.size_0.toInt(),
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          autoPlayAnimationDuration: const Duration(milliseconds: 1000),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: Dimensions.size_0_3,
          scrollDirection: Axis.horizontal,
        ));
  }
}
