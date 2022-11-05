import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark), // standard dark theme
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 50.0,bottom: 20.0),
                    child: Text("My Projects", style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 50.0),)),
                Container(

                  child: Text("Here is a list of projects I have embark on through out my learning process: ",
                  style: TextStyle(fontFamily: 'Montserrat',fontSize: 20),),
                ),
                SizedBox(height: 50.0,),
                Card(
                  child: Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                      //height: 50,
                      width: double.infinity,
                      child: ListTile(leading: Icon(Icons.link),
                        title: Text('Weather Cast'),
                        // subtitle: Text('https://github.com/dexterousNorthpaw/calculator'),
                        onTap: ()async{
                        launchUrl(Uri.parse('https://github.com/dexterousNorthpaw/weather_cast'));
                        },

                      )
                  ),
                ),
                Card(
                  child: Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                      //height: 50,
                      width: double.infinity,
                      child: ListTile(leading: Icon(Icons.link),
                        title: Text("BMI Calculator"),
                       onTap: (){
                        launchUrl(Uri.parse('https://github.com/dexterousNorthpaw/bmi_calculator'));
                       },

                      )
                  ),
                ),
                Card(
                  child: Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                      //height: 50,
                      width: double.infinity,
                      child: ListTile(leading: Icon(Icons.link),
                        title: Text('Xylophone App'),
                        onTap: (){
                        launchUrl(Uri.parse("https://github.com/dexterousNorthpaw/XylophoneApp"));
                        },

                      )
                  ),
                ),
                Card(
                  child: Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                    //  height: 50,
                      width: double.infinity,
                      child: ListTile(leading: Icon(Icons.link),
                        title: Text('Simple Calculator'),
                        onTap: (){
                        const url = 'https://github.com/dexterousNorthpaw/calculator';
                        launchUrl(Uri.parse(url));
                        },

                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
