import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube :)',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: YouTubeHomePage(),
    );
  }
}

class YouTubeHomePage extends StatelessWidget {
  final List<String> videoTitles = [
    'Velada 4?',
    'Why Sundays Are so Depressing?',
    'How to use Nets.js?',
    // Add more video titles as needed
  ];

  final List<Map<String, String>> videoChannels = [
    {
      'name': 'Ibai',
      'views': '500k views',
      'date': '2 days ago',
    },
    {
      'name': 'The Strokes',
      'views': '1M views',
      'date': '1 week ago',
    },
    {
      'name': 'berserkTEBAN',
      'views': '5M views',
      'date': '1 month ago',
    },
    // Add more channel information as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YouTube :)'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add search functionality
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Add home page navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.subscriptions),
              title: Text('Subscriptions'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('History'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: videoTitles.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.videocam),
              ),
              title: Text(videoTitles[index]),
              subtitle: Text(
                '${videoChannels[index]['name']} • ${videoChannels[index]['views']} • ${videoChannels[index]['date']}',
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
