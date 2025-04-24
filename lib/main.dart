import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube to MP3',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const YoutubeHomePage(),
    );
  }
}

class YoutubeHomePage extends StatefulWidget {
  const YoutubeHomePage({super.key});

  @override
  State<YoutubeHomePage> createState() => _YoutubeHomePageState();
}

class _YoutubeHomePageState extends State<YoutubeHomePage> {
  final TextEditingController _controller = TextEditingController();
  String _statusMessage = '';

  void _convertToMp3() {
    setState(() {
      _statusMessage = 'Trying to convert you Video!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YouTube to MP3'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Enter YouTube Link:'),
            const SizedBox(height: 10),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'https://youtube.com/...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertToMp3,
              child: const Text('Convert to MP3'),
            ),
            const SizedBox(height: 20),
            Text(_statusMessage),
          ],
        ),
      ),
    );
  }
}
