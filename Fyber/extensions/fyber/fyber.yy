{
    "id": "ff77cd91-31c9-40e2-9f84-1658ecd1eb30",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "fyber",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "fyber",
    "androidinject": "<activity android:name=\"com.fyber.ads.videos.RewardedVideoActivity\"\\u000a   android:configChanges=\"screenSize|orientation\"\\u000a   android:hardwareAccelerated=\"true\"\/>",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "fyber",
    "copyToTargets": 12,
    "date": "2017-18-29 05:12:42",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "65bac6fc-18f0-4fd5-b1e6-c5b5a219bf60",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 140,
            "filename": "fyber.ext",
            "final": "",
            "functions": [
                {
                    "id": "efd9a3a5-cd6a-45fb-a0d3-c8cf56d18a90",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "fyber_init",
                    "help": "fyber_init(app_id, security_token)",
                    "hidden": false,
                    "kind": 4,
                    "name": "fyber_init",
                    "returnType": 2
                },
                {
                    "id": "0fcce898-e3ed-41cd-8b7f-3a930942f9d8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "fyber_ad_request",
                    "help": "",
                    "hidden": false,
                    "kind": 4,
                    "name": "fyber_ad_request",
                    "returnType": 1
                },
                {
                    "id": "e450a16b-c8d9-4a3a-b021-a4835dc13987",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "fyber_ad_show",
                    "help": "",
                    "hidden": false,
                    "kind": 4,
                    "name": "fyber_ad_show",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                "efd9a3a5-cd6a-45fb-a0d3-c8cf56d18a90",
                "0fcce898-e3ed-41cd-8b7f-3a930942f9d8",
                "e450a16b-c8d9-4a3a-b021-a4835dc13987"
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "}\\u000d\\u000drepositories {\\u000d  maven {\\u000d    name \"Fyber's maven repo\"\\u000d    url \"https:\/\/fyber.bintray.com\/maven\"\\u000d  }\\u000d}\\u000dconfigurations {\\u000d  provided\\u000d}\\u000d\\u000ddependencies {\\u000dcompile 'com.fyber:fyber-sdk:8.19.0'\\u000dprovided 'com.fyber:fyber-annotations:1.3.0'\\u000dannotationProcessor 'com.fyber:fyber-annotations-compiler:1.4.0'\\u000d\\u000d\/\/ AdColony Mediation\\u000dcompile 'com.fyber.mediation:adcolony:3.2.1-r2@aar'\\u000d\\u000dcompile 'com.android.support:support-annotations:25.0.1'\\u000d\\u000d\/\/ AdMob Mediation\\u000dcompile 'com.fyber.mediation:admob:11.6.0-r1@aar'\\u000d\\u000d\\u000d\/\/ Chartboost Mediation\\u000dcompile 'com.fyber.mediation:chartboost:7.0.1-r1@aar'\\u000d\\u000d\/\/ Facebook Mediation\\u000dcompile 'com.fyber.mediation:facebook:4.27.0-r1@aar'\\u000d\/\/ Facebook Audience Network SDK dependencies\\u000dcompile 'com.android.support:support-v4:'\\u000dcompile 'com.android.support:recyclerview-v7:'\\u000d\\u000d\/\/ HyprMX Mediation\\u000dcompile 'com.fyber.mediation:hyprmx:4.2.0-r4@aar'\\u000d\\u000d\/\/ InMobi Mediation\\u000dcompile 'com.fyber.mediation:inmobi:7.0.0-r1@aar'\\u000dcompile 'com.squareup.picasso:picasso:2.5.2'\\u000dcompile 'com.android.support:recyclerview-v7:24.0.0'\\u000dcompile 'com.android.support:appcompat-v7:24.0.0'\\u000d\\u000d\\u000d\/\/ LoopMe Mediation\\u000dcompile ('com.fyber.mediation:loopme:5.2.6-r1@aar') {\\u000dtransitive = true\\u000d}\\u000d\\u000d\/\/ NativeX Mediation\\u000dcompile 'com.fyber.mediation:nativex:8.1.22-r1@aar'\\u000d\\u000d\/\/ MediaBrix Mediation\\u000dcompile 'com.fyber.mediation:mediabrix:1.8.2-r1@aar'\\u000dcompile 'com.android.support:appcompat-v7:25.1.0'\\u000d\\u000d\/\/ Tapjoy Mediation\\u000dcompile 'com.fyber.mediation:tapjoy:11.10.2-r1@aar'\\u000d\\u000d\/\/ UnityAds Mediation\\u000dcompile 'com.fyber.mediation:unityads:2.1.1-r1@aar'\\u000d\\u000d\/\/ Vungle Mediation\\u000dcompile 'com.fyber.mediation:vungle:5.3.0-r1@aar'\\u000d \\u000d\/\/ Vungle third-party dependencies\\u000dcompile 'com.google.dagger:dagger:2.7'\\u000dcompile 'javax.inject:javax.inject:1'\\u000dcompile 'de.greenrobot:eventbus:2.2.1'\\u000dcompile 'io.reactivex:rxjava:1.2.0'\\u000dcompile 'com.squareup.retrofit2:adapter-rxjava:2.2.0'\\u000dcompile 'com.squareup.retrofit2:converter-gson:2.2.0'\\u000dcompile 'com.squareup.retrofit2:retrofit:2.2.0'\\u000dcompile 'com.google.code.gson:gson:2.7'\\u000dcompile 'com.squareup.okhttp3:okhttp:3.6.0'\\u000dcompile 'com.squareup.okio:okio:1.11.0'\\u000d\\u000d\\u000dcompile 'com.google.android.gms:play-services:11.0.1'\\u000d\\u000d\/\/compile 'com.google.android.gms:play-services:8.4.0'\\u000d\/\/compile 'com.google.android.gms:play-services-ads:10.0.1' \\u000d\/\/compile 'com.google.android.gms:play-services-ads:11.6.0'\\u000d\/\/compile 'com.google.android.gms:play-services-basement:11.0.1'\\u000d\/\/compile 'com.google.android.gms:play-services-location:11.0.1'\\u000d\\u000d",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        {
            "id": "7b33c008-8edb-4fc0-9853-abaf783827e3",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AdSupport.framework",
            "weakReference": false
        },
        {
            "id": "85c063bd-7e1c-46ae-b2a0-bfdc410efef2",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AudioToolbox.framework",
            "weakReference": false
        },
        {
            "id": "67fa9b7f-29bb-4906-b9fe-587098b10e4e",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AVFoundation.framework",
            "weakReference": false
        },
        {
            "id": "426acbd7-4874-46ea-a3fe-c9194e923939",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CFNetwork.framework",
            "weakReference": false
        },
        {
            "id": "ed15e5c0-5d0a-43e3-aa1d-55573e13a9e7",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreGraphics.framework",
            "weakReference": false
        },
        {
            "id": "9f346831-baaa-4cd6-9ae5-2723b850f481",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreMedia.framework",
            "weakReference": false
        },
        {
            "id": "1730ccc6-91a0-40b8-8f9f-d874f137908e",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "Foundation.framework",
            "weakReference": false
        },
        {
            "id": "95f56c85-5af3-4f01-b8d2-44e1bc3d3edc",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "MediaPlayer.framework",
            "weakReference": false
        },
        {
            "id": "d09bad09-6460-431f-b0e5-91a2d2db1b95",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "QuartzCore.framework",
            "weakReference": false
        },
        {
            "id": "87311519-9f3c-4f93-a648-56244911aea1",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "StoreKit.framework",
            "weakReference": false
        },
        {
            "id": "6f86d20e-c343-4b37-a381-78f6ac489387",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "SystemConfiguration.framework",
            "weakReference": false
        },
        {
            "id": "0425a107-eda2-429e-96a6-40da5bb1d0e2",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "UIKit.framework",
            "weakReference": false
        },
        {
            "id": "bdb33878-2586-410b-baaa-d936140dec0f",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "WebKit.framework",
            "weakReference": false
        },
        {
            "id": "616141df-3b90-44af-ab7a-9b76626ba4e3",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreTelephony.framework",
            "weakReference": false
        },
        {
            "id": "18a0d6a5-6251-47df-9493-cf90a07a8d3b",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "EventKit.framework",
            "weakReference": false
        },
        {
            "id": "6435d3ee-58af-4afb-81b7-35bf5a67f497",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "JavaScriptCore.framework",
            "weakReference": false
        },
        {
            "id": "233f8a7d-936d-4382-96bd-e1aeb2aac63a",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "MessageUI.framework",
            "weakReference": false
        },
        {
            "id": "7b01f791-c015-48f2-a582-8164c2b34447",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "Social.framework",
            "weakReference": false
        },
        {
            "id": "b81a72a4-159a-4d25-b3c6-11e12f973763",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "WatchConnectivity.framework",
            "weakReference": false
        },
        {
            "id": "f80f5198-3e9b-46e7-a241-50add7044c27",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreMotion.framework",
            "weakReference": false
        },
        {
            "id": "4b030516-edb2-438c-acf0-8944ee8c63f2",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "Security.framework",
            "weakReference": false
        },
        {
            "id": "19af831d-3e93-47d4-8496-c81579cd2218",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreImage.framework",
            "weakReference": false
        },
        {
            "id": "13a45ebc-bef6-4336-884c-868dcb5c437d",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "SafariServices.framework",
            "weakReference": false
        },
        {
            "id": "5edc47b5-6f50-4160-8d66-fdca13a3a91c",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "VideoToolbox.framework",
            "weakReference": false
        },
        {
            "id": "93e9a6ac-c273-4f55-b220-f128af1267e3",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "EventKitUI.framework",
            "weakReference": false
        },
        {
            "id": "0ddee4e5-2058-4f81-a33a-9e715658d793",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "MobileCoreServices.framework",
            "weakReference": false
        },
        {
            "id": "7ae8d5a2-9982-4fff-bc80-5c858787c178",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreLocation.framework",
            "weakReference": false
        },
        {
            "id": "5f378238-9d15-476d-9188-7e01624cbd51",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "Accelerate.framework",
            "weakReference": false
        },
        {
            "id": "dbf1b184-5d53-4d97-90c9-1d0d05d9dc9c",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "ImageIO.framework",
            "weakReference": false
        },
        {
            "id": "a012ce1b-4f4e-4382-a9d6-ee64b7e02e50",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "MapKit.framework",
            "weakReference": false
        }
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "<key>NSAllowsArbitraryLoads<\/key>\\u000d<string>Used for Ad<\/string>\\u000d<key>NSAllowsArbitraryLoadsForMedia<\/key>\\u000d<string>Used for Ad<\/string>\\u000d<key>NSAllowsArbitraryLoadsInWebContent<\/key>\\u000d<string>Used for Ad<\/string>\\u000d<key>NSAllowsLocalNetworking<\/key>\\u000d<string>Used for Ad<\/string>",
    "license": "",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "version": "8.19.0"
}