import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojekcloneapp/components/header.blade.dart';
import 'package:gojekcloneapp/data/icons.blade.dart';
import 'package:gojekcloneapp/theme.blade.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: const Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFAFAFA),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: const Color(0xFFE8E8E8))),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            '/icons/search.svg',
                            colorFilter:
                                ColorFilter.mode(dark1, BlendMode.srcIn),
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Cari makanan, layanan, & tujuan  '),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35 / 2)),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset('/images/avatar.png'),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35 / 2),
                              color: const Color(0xFFD1E7EE),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: SvgPicture.asset(
                              'icons/goclub.svg',
                              colorFilter:
                                  ColorFilter.mode(blue1, BlendMode.srcIn),
                            ),
                          ))
                    ]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                    color: blue1, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                                color: const Color(0xFFBBBBBB),
                                borderRadius: BorderRadius.circular(1)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(1)),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Container(
                            height: 11,
                            width: 118,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(8)),
                                color: Color(0xFF9CCDDB)),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Container(
                            height: 68,
                            width: 127,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'images/gopay.png',
                                  height: 14,
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Rp.14.231',
                                  style: bold16.copyWith(color: dark1),
                                ),
                                Text(
                                  'Klik & cek riwayat',
                                  style: bold16.copyWith(color: green1),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    ...gopayIcons.map((icon) => Flexible(
                          fit: FlexFit.tight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: SvgPicture.asset(
                                  'icons/${icon.icon}.svg',
                                  colorFilter:
                                      ColorFilter.mode(blue1, BlendMode.srcIn),
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                icon.title,
                                style: semibold14.copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
