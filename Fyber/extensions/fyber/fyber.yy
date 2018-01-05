{
    "id": "ff77cd91-31c9-40e2-9f84-1658ecd1eb30",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "fyber",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        "android.permission.INTERNET",
        "android.permission.ACCESS_WIFI_STATE",
        "android.permission.ACCESS_NETWORK_STATE"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "fyber",
    "androidinject": "<activity android:name=\"com.fyber.ads.videos.RewardedVideoActivity\"\\u000a   android:configChanges=\"screenSize|orientation\"\\u000a   android:hardwareAccelerated=\"true\"\/>",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
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
            "copyToTargets": 12,
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
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "version": "8.19.0"
}