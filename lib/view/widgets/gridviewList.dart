import 'package:all_in_one/model/modelData.dart';
import 'package:all_in_one/provider/homeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/flutterADS.dart';

class GrideViewList extends StatefulWidget {
  const GrideViewList({Key? key}) : super(key: key);

  @override
  State<GrideViewList> createState() => _GrideViewListState();
}

class _GrideViewListState extends State<GrideViewList> {
  HomeProvider? HPT;
  HomeProvider? HPF;

  void initState() {
    super.initState();
    rewardADS();
  }

  @override
  Widget build(BuildContext context) {
    HomeProvider HPT = Provider.of<HomeProvider>(context, listen: true);
    HomeProvider HPF = Provider.of<HomeProvider>(context, listen: false);

    return GridView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: HPT.BusDetailList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              'detail',
              arguments: HPF.model = ModelClass(
                  url: "${HPF.BusDetailList[index].url}",
                  name: "${HPF.BusDetailList[index].name}"),
            );
            if (rewardedAd != null) {
              rewardedAd!.show(onUserEarnedReward: (ad, reward) {
                reward.amount;
              });
              rewardADS();
            } else {
              print("intitial null");
            }
          },
          child: Card(
            elevation: 30,
            color: Colors.black26,
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.red, Colors.white54, Colors.blueGrey])),
              child: ClipRect(
                child: Image.asset(
                  "${HPF.BusDetailList[index].image}",
                  height: 200,
                  width: 200,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
