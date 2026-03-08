## PluginAdmob + MagicUI

This plugin exposes AdMob actions, events, and views for MagicUI XML screens.

## 1) Configure `Info.plist`

Add your AdMob app ID:

```xml
<key>GADApplicationIdentifier</key>
<string>ca-app-pub-3940256099942544~1458002511</string>
```

Reference:
- https://goo.gle/ad-manager-ios-update-plist

If you see SKAdNetwork warnings, follow:
- https://goo.gle/enable-skadnetwork

## 2) Test ad unit IDs

- Banner: `ca-app-pub-3940256099942544/2934735716`
- Interstitial: `ca-app-pub-3940256099942544/4411468910`
- Rewarded: `ca-app-pub-3940256099942544/5224354917`
- Rewarded Interstitial: `ca-app-pub-3940256099942544/5354046379`

## 3) MagicUI usage example (`Screen.xml`)

### Banner

```xml
<admobbanner adUnitID="$bannerAdTest1"/>
<admobbanner adUnitID="$bannerAdTest1" adSize="320x50"/>
<admobbanner adUnitID="$bannerAdTest1" adSize="AdSizeLeaderboard"/>
<admobbanner adUnitID="$bannerAdTest1" adSize="width:360;height:50"/>
```

Supported `adSize` formats in the example:
- Fixed size: `300x250`, `320x100`, `320x50`
- Named size: `AdSizeFullBanner`, `AdSizeLeaderboard`
- Custom size: `width:360;height:50`

### Interstitial actions

```xml
<button action="loadInterstitialAd:$interstitialAdTest1">loadInterstitialAd</button>
<button action="showInterstitialAd">showInterstitialAd</button>
<button action="loadAndShowInterstitialAd:$interstitialAdTest1">loadAndShowInterstitialAd</button>
```

### Rewarded actions

```xml
<button action="loadRewardedAd:$rewardedAdTest1">loadRewardedAd</button>
<button action="showRewardedAd">showRewardedAd</button>
<button action="loadAndShowRewardedAd:$rewardedAdTest1">loadAndShowRewardedAd</button>
```

### Define reusable test IDs

```xml
<setDefault key="bannerAdTest1" type="string" value="ca-app-pub-3940256099942544/2934735716"/>
<setDefault key="interstitialAdTest1" type="string" value="ca-app-pub-3940256099942544/4411468910"/>
<setDefault key="rewardedAdTest1" type="string" value="ca-app-pub-3940256099942544/5224354917"/>
```

### Listen to ad events

```xml
<event onAdLoaded="ca-app-pub-3940256099942544/4411468910" action="presentAlert:alertOnAdLoaded"/>
<event onAdLoadFailed="ca-app-pub-3940256099942544/4411468910" action="presentAlert:alertOnAdLoadFailed"/>

<event onAdLoaded="ca-app-pub-3940256099942544/5224354917" action="presentAlert:alertOnRewardedAdLoaded"/>
<event onAdLoadFailed="ca-app-pub-3940256099942544/5224354917" action="presentAlert:alertOnRewardedAdLoadFailed"/>
<event onAdRewardGranted="ca-app-pub-3940256099942544/5224354917" action="presentAlert:alertOnRewardedAdReward"/>
```
