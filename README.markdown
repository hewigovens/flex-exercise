## About

This is an example Cydia Substrate tweak exercise for [FLEX](https://github.com/Flipboard/FLEX#learning-from-other-apps).

FLEX (Flipboard Explorer) is a set of in-app debugging and exploration tools for iOS development. 

This tweak allows you to inspect some internals of Apple's Mail.app

## Folder Structures
```
├── README.markdown // this file
├── builds
│   └── in.fourplex.flextweak_0.0.1-5_iphoneos-arm.deb  // example deb file
│── misc // something you may need
└── src
    ├── Tweak.xm  //tweak for Mail.app
    ├── Tweak2.xm //tweak for SpringBoard
    ├── include
    │   └── FLEX  //FLEX Header files 
    └── lib
       └── libflex.a //FLEX static library

```

## Demo

* show FLEX after application started
* 3 fingers, tap twice to activate it.

![image](docs/mail_demo.gif)

## How it works?

MobileLoader(a Cydia Substrate component) will first load itself into the run application using DYLD_INSERT_LIBRARIES environment variable. Then it looks for all dynamic libraries in the directory /Library/MobileSubstrate/DynamicLibraries/, and dlopen them.

You can find it more details [here](http://iphonedevwiki.net/index.php/MobileSubstrate) and I also summarized a wiki page all about this [kind of stuff](https://github.com/hewigovens/hewigovens.github.com/wiki/Hook-%26-Inject-methods). Go and checkout them if you like, :).


## How to build

* install [theos](https://github.com/rpetrich/theos), rpetrich's fork
* `brew install dpkg coreutils gnu-tar`
* make package && make install (You need a jailbroken device)