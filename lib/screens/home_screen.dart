import 'package:flutter/material.dart';
import 'package:bashorts_news_app/screens/general_screen.dart';
import 'package:bashorts_news_app/screens/health_screen.dart';
import 'package:bashorts_news_app/screens/science_screen.dart';
import 'package:bashorts_news_app/screens/technology_screen.dart';
import 'package:bashorts_news_app/screens/top_headlines_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../aboutUS.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),
              const SizedBox(width: 10),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'B',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                    TextSpan(
                      text: 'A ',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'S',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    TextSpan(
                      text: 'horts',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: const Color.fromARGB(255, 226, 223, 223),
            ),
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.red,
            indicatorColor: Colors.black,
            tabs: const [
              Tab(text: "General"),
              Tab(text: "Health"),
              Tab(text: "Technology"),
              Tab(text: "Science"),
              Tab(text: "Top headlines"),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.black45],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                padding: const EdgeInsets.only(top: 40, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Welcome to Menu',
                      style: TextStyle(
                        fontFamily: 'Oswald',
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: GestureDetector(
                  onTap: () async {
                    const url = "https://www.instagram.com/the_business_aura/";
                    if (await canLaunchUrl(url as Uri)) {
                      await launchUrl(url as Uri);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Icon(FontAwesomeIcons.instagram),
                ),
                title: GestureDetector(
                  onTap: () async {
                    const url = "https://www.instagram.com/the_business_aura/";
                    if (await canLaunchUrl(url as Uri)) {
                      await launchUrl(url as Uri);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text('www.instagram.com/the_business_aura/'),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: GestureDetector(
                  onTap: () async {
                    const url =
                        "https://www.facebook.com/groups/255778156763786";
                    if (await canLaunchUrl(url as Uri)) {
                      await launchUrl(url as Uri);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Icon(FontAwesomeIcons.facebook),
                ),
                title: GestureDetector(
                  onTap: () async {
                    const url =
                        "https://www.facebook.com/groups/255778156763786";
                    if (await canLaunchUrl(url as Uri)) {
                      await launchUrl(url as Uri);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text('www.facebook.com/groups/aura world news'),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: GestureDetector(
                  onTap: () {
                    launchUrl(
                        'https://www.youtube.com/@aura_world_news' as Uri);
                  },
                  child: const Icon(FontAwesomeIcons.youtube),
                ),
                title: GestureDetector(
                  onTap: () {
                    launchUrl(
                        'https://www.youtube.com/@aura_world_news' as Uri);
                  },
                  child: const Text('www.youtube.com/@aura_world_news'),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: GestureDetector(
                  onTap: () {
                    launchUrl('https://www.thebusinessaura.com' as Uri);
                  },
                  child: const Icon(Icons.language),
                ),
                title: GestureDetector(
                  onTap: () {
                    launchUrl('https://www.thebusinessaura.com' as Uri);
                  },
                  child: const Text('www.thebusinessaura.com'),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('About US'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            GeneralScreen(),
            HealthScreen(),
            TechnologyScreen(),
            ScienceScreen(),
            TopHeadlinesScreen(),
          ],
        ),
      ),
    );
  }
}
