import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.light),
        darkTheme: ThemeData(brightness: Brightness.dark), // standard dark theme
        themeMode: ThemeMode.dark,
      home: Scaffold(
        body:OrientationBuilder(
          builder: (context, orientation)=>
          orientation == Orientation.portrait?
              const aboutMePort(): aboutMeLand()

        )

      )
    );
  }
}

class aboutMePort extends StatelessWidget {
  const aboutMePort({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 92.0),
              child: const Center(
                child: CircleAvatar(backgroundImage: AssetImage('assets/homeImage.jpeg'),
                  radius: 100.0,),
              ),
            ),
            const SizedBox(height: 30.0,),
            Container(
                margin: const EdgeInsets.only(left:10.0,right: 150.0),
                child: const Text("About Me",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 40.0,fontWeight: FontWeight.w500),
                )),
            const Padding(
                padding: EdgeInsets.only(left: 8.0,right: 8.0),
                child: Text(
                  'I\'m a flutter developer based in Abuja, Nigeria with 1 year of experience in mobile development(android). I am a team driven individual and able to contribute enormously when working in a team',textAlign: TextAlign.start,
                  style: TextStyle(fontFamily: 'Montserrat',fontSize: 20.0),
                )),
            const SizedBox(height: 20.0),
            Container(
              margin: const EdgeInsets.only(left: 10.0),
              child: const Text('Links',
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 40.0),),
            ),
            Card(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                  height: 50,
                  width: double.infinity,
                  child: ListTile(leading: const Icon(Icons.mail_outline_sharp),
                    title: const Text('Email'),
                    onTap: ()async{
                      const url = 'rayhanawojobi@gmail.com';
                      launchUrl(Uri.parse('mailto:$url'));
                    },

                  )
              ),
            ),
            Card(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                  height: 50,
                  width: double.infinity,
                  child: ListTile(leading: const Icon(Icons.flutter_dash),
                    title: const Text('Twitter'),
                    onTap: (){
                      const url = "https://twitter.com/rayhan__a";
                      launchUrl(Uri.parse(url));
                    },

                  )
              ),
            ),
            Card(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                  height: 50,
                  width: double.infinity,
                  child: ListTile(leading: const Icon(Icons.rss_feed_sharp),
                    title: const Text('Hashnode'),
                    onTap: ()async{
                      launchUrl(Uri.parse("https://rayhanawojobi.hashnode.dev"));
                    },

                  )
              ),
            ),
            Card(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                  height: 50,
                  width: double.infinity,
                  child: ListTile(leading: const Icon(Icons.link),
                    title: const Text('LinkedIn'),
                    onTap: ()async{
                      launchUrl(Uri.parse("https://ng.linkedin.com/in/rayhan-awojobi-9aa874149"));
                    },

                  )
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class aboutMeLand extends StatelessWidget {
  const aboutMeLand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 92.0),
              child: const Center(
                child: CircleAvatar(backgroundImage: AssetImage('assets/homeImage.jpeg'),
                  radius: 100.0,),
              ),
            ),
          ),
          Expanded(
              child: ListView(children: [
            const SizedBox(height: 30.0,),
            Container(
                margin: const EdgeInsets.only(left:10.0,right: 150.0),
                child: const Text("About Me",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 40.0,fontWeight: FontWeight.w500),
                )),
            const Padding(
                padding: EdgeInsets.only(left: 8.0,right: 8.0),
                child: Text(
                  'I\'m a flutter developer based in Abuja, Nigeria with 1 year of experience in mobile development(android). '
                      'I am a team driven individual and able to contribute enormously when working in a team',textAlign: TextAlign.start,
                  style: TextStyle(fontFamily: 'Montserrat',fontSize: 20.0),
                )),
            const SizedBox(height: 20.0),
            Container(
              margin: const EdgeInsets.only(left: 10.0),
              child: const Text('Links',
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 40.0),),
            ),
            Card(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                  height: 50,
                  width: double.infinity,
                  child: ListTile(leading: const Icon(Icons.mail_outline_sharp),
                    title: const Text('Email'),
                    onTap: ()async{
                      const url = 'rayhanawojobi@gmail.com';
                      launchUrl(Uri.parse('mailto:$url'));
                    },

                  )
              ),
            ),
            Card(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                  height: 50,
                  width: double.infinity,
                  child: ListTile(leading: const Icon(Icons.flutter_dash),
                    title: const Text('Twitter'),
                    onTap: (){
                      const url = "https://twitter.com/rayhan__a";
                      launchUrl(Uri.parse(url));
                    },

                  )
              ),
            ),
            Card(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                  height: 50,
                  width: double.infinity,
                  child: ListTile(leading: const Icon(Icons.rss_feed_sharp),
                    title: const Text('Hashnode'),
                    onTap: ()async{
                      launchUrl(Uri.parse("https://rayhanawojobi.hashnode.dev"));
                    },

                  )
              ),
            ),
            Card(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                  height: 50,
                  width: double.infinity,
                  child: ListTile(leading: const Icon(Icons.link),
                    title: const Text('LinkedIn'),
                    onTap: ()async{
                      launchUrl(Uri.parse("https://ng.linkedin.com/in/rayhan-awojobi-9aa874149"));
                    },

                  )
              ),
            ),
          ],))


        ],
      ),
    );
  }
}
