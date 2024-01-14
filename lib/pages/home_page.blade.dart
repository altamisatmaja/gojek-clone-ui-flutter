import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojekcloneapp/components/header.blade.dart';
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
                            'assets/icons/search.svg',
                            // color: dark1,
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
                        child: Image.asset('assets/images/avatar.png'),
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
                        ), clipBehavior: Clip.hardEdge,
                        child: SvgPicture.asset('assets/icons/goclup.svg',),
                      ))
                    ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
