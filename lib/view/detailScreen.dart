import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../provider/homeProvider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  HomeProvider? HPT;
  HomeProvider? HPF;
  @override
  Widget build(BuildContext context) {
    HomeProvider HPT = Provider.of<HomeProvider>(context, listen: true);
    HomeProvider HPF = Provider.of<HomeProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          title: Text(
            "${HPF.model!.name}",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: WebView(
          zoomEnabled: true,
          initialUrl: "${HPF.model!.url}",
        ),
      ),
    );
  }
}
