import 'package:all_in_one/model/modelData.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  ModelClass? model;
  List<ModelClass> BusDetailList = [
    ModelClass(
        image: "assets/image/GSRTC-removebg-preview.png",
        name: "GSRTC",
        url: "https://gsrtc.in/site/"),
    ModelClass(
        image: "assets/image/download (1).png",
        name: "VIA",
        url: "https://in.via.com/"),
    ModelClass(
        image: "assets/image/download-removebg-preview (1).png",
        name: "RED BUS",
        url: "https://www.redbus.in/"),
    ModelClass(
        image: "assets/image/download-removebg-preview (2).png",
        name: "ABHI BUS",
        url: "https://www.abhibus.com/"),
    ModelClass(
        image: "assets/image/download-removebg-preview (5).png",
        name: "YATRA",
        url: "https://www.yatra.com/"),
    ModelClass(
        image: "assets/image/download-removebg-preview (4).png",
        name: "TRAVELYARI",
        url: "https://www.travelyaari.com/"),
    ModelClass(
        image: "assets/image/travelguru_logo-removebg-preview.png",
        name: "TRAVELGURU",
        url: "https://www.travelguru.com/"),
    ModelClass(
        image: "assets/image/mmtLogoWhite.png",
        name: "MAKE MYtrip",
        url: "https://www.makemytrip.com/"),
  ];
  List sliderList = [
    "https://gj-media.thebetterindia.com/2021/11/Track-Your-Bus-1.jpg",
    "https://assets.mediamodifier.com/mockups/58c51a721eba98eedb159d3a/outdoor-bus-advertisement-mockup-template.jpg",
    "https://cdn.zoutons.com/images/originals/blog/1643948155720.jpg_1643948158.png",
    "https://i.ytimg.com/vi/ObdjszPY71g/maxresdefault.jpg",
    "https://images.freekaamaal.com/post_images/1582184879.png",
    "https://www.adgully.com/img/800/68501_ty_brand-ad-1_final-1.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/6/65/Travelguru_Logo.png",
    "https://newspaperads.ads2publish.com/wp-content/uploads/2017/11/make-my-trip-grand-travel-sale-ad-hyderabad-times-8-11-2017-642x1024.jpg",
  ];
}
