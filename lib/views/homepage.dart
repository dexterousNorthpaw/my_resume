import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark), // standard dark theme
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: OrientationBuilder(
          builder: (context, orientation)=>
            orientation== Orientation.portrait?
            const HomepagePort(): const HomepageLand()


        )
      ),
    );
  }
}


class HomepagePort extends StatelessWidget {
  const HomepagePort({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
          children:[
            Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/homeImage.jpeg"),
                      fit: BoxFit.cover)
              ),
            ),
            Positioned(
                top: 400.0, left: 15.0,right: 50.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedTextKit(
                      //pause: const Duration(milliseconds: 7000),
                      repeatForever: true,
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        TyperAnimatedText('Hello, ',
                            //speed: Duration(seconds: 5),
                            textStyle: const TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                                fontSize: 30,
                                backgroundColor: Colors.black
                            )),
                      ],
                      onTap: () {
                      },
                    ),
                    const SizedBox(height: 5,),
                    AnimatedTextKit(
                      //pause: const Duration(milliseconds: 7000),
                        repeatForever: true,
                        isRepeatingAnimation: true,
                        animatedTexts: [
                          TyperAnimatedText('I\'m Rayhan',
                              //speed: Duration(seconds: 5),
                              textStyle: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white,
                                  fontSize: 30,
                                  backgroundColor: Colors.black
                              ))]),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text("- Mobile Developer",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 30.0,color: Colors.white,backgroundColor: Colors.black),)
                  ],
                )
            )
          ]
      ),
    );
  }
}

class HomepageLand extends StatelessWidget {
  const HomepageLand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
          children:[
            Expanded(
              flex: 2,
              child: Container(
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/homeImage.jpeg"),
                        fit: BoxFit.cover)
                ),
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedTextKit(
                        //pause: const Duration(milliseconds: 7000),
                        repeatForever: true,
                        isRepeatingAnimation: true,
                        animatedTexts: [
                          TyperAnimatedText('Hello, ',
                              //speed: Duration(seconds: 5),
                              textStyle: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 30,
                                  backgroundColor: Colors.black
                              )),
                        ],
                        onTap: () {null;
                        },
                      ),
                      const SizedBox(height: 5,),
                      AnimatedTextKit(
                        //pause: const Duration(milliseconds: 7000),
                          repeatForever: true,
                          isRepeatingAnimation: true,
                          animatedTexts: [
                            TyperAnimatedText('I\'m Rayhan',
                                //speed: Duration(seconds: 5),
                                textStyle: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontStyle: FontStyle.normal,
                                    color: Colors.white,
                                    fontSize: 30,
                                    backgroundColor: Colors.black
                                ))]),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text("- Mobile Developer",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 30.0,color: Colors.white,backgroundColor: Colors.black),)
                    ],
                  ),
                ))
          ]
      ),
    );
  }
}
