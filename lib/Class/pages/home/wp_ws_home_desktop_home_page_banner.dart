import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class WPWSHomeDesktopHomePageBanner extends StatelessWidget {
  const WPWSHomeDesktopHomePageBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final images = [
      "images/banner/banner_1.jpg",
      "images/banner/banner_2.jpg",
      "images/banner/banner_3.jpg"
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 30),
      child: SizedBox(
          width: width * 0.6,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Swiper(
                outer: true,
                onTap: (value) {},
                autoplay: true,
                itemBuilder: (c, i) {
                  return Card(
                    color: Colors.white,
                    shadowColor: Colors.grey.withOpacity(0.2),
                    child: Image.asset(
                      images[i],
                      fit: BoxFit.cover,
                    ),
                  );
                },
                pagination: SwiperPagination(
                    margin: const EdgeInsets.only(top: 15),
                    builder: SwiperCustomPagination(builder: (context, config) {
                      return Align(
                        alignment: Alignment.center,
                        child: const DotSwiperPaginationBuilder(
                                color: Color(0xfff1f1f1),
                                activeColor: Color(0x721CDEC9),
                                size: 8.0,
                                activeSize: 8.0)
                            .build(context, config),
                      );
                    })),
                itemCount: images.length),
          )),
    );
  }
}
