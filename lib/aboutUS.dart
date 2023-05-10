// ignore: file_names
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Set the background color
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(text: 'A', style: TextStyle(color: Colors.red)),
              TextSpan(text: 'bout '),
              TextSpan(text: 'U', style: TextStyle(color: Colors.red)),
              TextSpan(text: 's'),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 20),
            Text(
              "Welcome to Business Aura",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "The Business Aura is a digital news channel that covers business news from around the world. We provide entrepreneurs with an opportunity to share their success stories, branding, and news, allowing them to reach a wider audience and generate greater business and brand awareness.\n\nOur platform is dedicated to keeping our readers informed about the latest news and trends in the business world. With the world moving towards digitization, it's more important than ever to stay up-to-date with the latest business news and stories from across the globe.\n\nJoin us and be a part of the business community that is shaping the world!",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  height: 1.5, // controls the line spacing
                  color: Colors.black, // sets the text color
                  fontWeight: FontWeight.normal, // sets the font weight
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Since the world is moving towards digitization, there is a need of getting updated about the news in business, to know and read stories across the globe. This platform gives entrepreneurs across the globe an opportunity to share their success stories, branding, ads & news. to reach out to the industry audience generating higher business and greater brand awareness.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  height: 1.5,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "As this magazine circulates across all digital platforms and also targeted emails of businesses and readership, no matter what you do and what is your domain. Business Aura promotes you and the business with our comprehensive media platform & global reach.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 18, height: 1.5, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Our Team",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Our team is made up of skilled professionals who bring a wealth of experience and expertise to our company. We value teamwork, creativity, and integrity, and we strive to create a positive and inclusive work environment that fosters personal and professional growth.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 18, height: 1.5, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Software Developer Alisher Rain (alisher08090@gmail.com)",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 18, height: 1.5, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Software Model Designer Nikki Mehta (nikkimehata20@gmail.com) ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 18, height: 1, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Contact Us",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Thank you for considering My Company for your needs. If you have any questions or would like to learn more about our company, please don't hesitate to contact us at ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 18, height: 1.5, fontWeight: FontWeight.normal),
              ),
            ),
            Text(
              "Businessauranews@gmail.com",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
