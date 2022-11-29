import 'package:google_mobile_ads/google_mobile_ads.dart';

BannerAd? bannerAd;
InterstitialAd? interstitialAd;
RewardedAd? rewardedAd;
AppOpenAd? appOpenAd;

void bannerADS() {
  bannerAd = BannerAd(
    size: AdSize.banner,
    adUnitId: "ca-app-pub-3940256099942544/6300978111",
    listener: const BannerAdListener(),
    request: const AdRequest(),
  );
  bannerAd!.load();
}

void interADS() {
  InterstitialAd.load(
    adUnitId: "ca-app-pub-3940256099942544/1033173712",
    request: const AdRequest(),
    adLoadCallback: InterstitialAdLoadCallback(
      onAdLoaded: (ad) {
        interstitialAd = ad;
      },
      onAdFailedToLoad: (error) {},
    ),
  );
}

void rewardADS() {
  RewardedAd.load(
    adUnitId: "ca-app-pub-3940256099942544/5224354917",
    request: const AdRequest(),
    rewardedAdLoadCallback: RewardedAdLoadCallback(
      onAdLoaded: (ad) {
        rewardedAd = ad;
      },
      onAdFailedToLoad: (error) {
        print("RewardedAD Error");
      },
    ),
  );
}

void openADS() {
  AppOpenAd.load(
      adUnitId: "ca-app-pub-3940256099942544/3419835294",
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(onAdLoaded: (ad) {
        appOpenAd = ad;
      }, onAdFailedToLoad: (error) {
        print("AppOpenAd Error");
      }),
      orientation: AppOpenAd.orientationPortrait);
}
