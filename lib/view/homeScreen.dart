import 'package:all_in_one/provider/flutterADS.dart';
import 'package:all_in_one/provider/homeProvider.dart';
import 'package:all_in_one/view/widgets/gridviewList.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? HPT;
  HomeProvider? HPF;

  void initState() {
    super.initState();
    bannerADS();
  }

  @override
  Widget build(BuildContext context) {
    HomeProvider HPT = Provider.of<HomeProvider>(context, listen: true);
    HomeProvider HPF = Provider.of<HomeProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Online ticket booking App",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: 0.5,
                  image: AssetImage("assets/image/GSRTC.png"),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
                    elevation: 25,
                    child: Container(
                      decoration: BoxDecoration(),
                      child: CarouselSlider.builder(
                        itemCount: HPT.sliderList.length,
                        itemBuilder: (context, i, _) => Container(
                          child: Image.network("${HPT.sliderList[i]}",
                              fit: BoxFit.fill),
                        ),
                        options: CarouselOptions(
                          // onPageChanged: (value, _) {
                          // HPT!.changeSlider(value);
                          //},
                          autoPlay: true,
                          height: 200,
                          enlargeCenterPage: true,
                          aspectRatio: 1,
                          viewportFraction: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 400,
                    child: GrideViewList(),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: Container(
          alignment: Alignment.center,
          height: 100,
          child: AdWidget(ad: bannerAd!),
        ),
      ),
    );
  }
}
