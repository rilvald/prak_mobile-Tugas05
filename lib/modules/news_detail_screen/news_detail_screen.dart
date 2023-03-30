import 'package:flutter/material.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    super.key,
    required this.id,
  });
  final String id;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  int jumlahLike = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            "https://picsum.photos/500/300",
            width: double.infinity,
          ),
          Column(
            children: [
              const SizedBox(height: 10),
              const Text(
                'Detail News Yang Anda Pencet',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                  textAlign: TextAlign.justify),
              Row(
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 10),
                  Text('Like : $jumlahLike')
                ],
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              jumlahLike++;
            });
            print('jumlahlike');
          },
          child: const Icon(Icons.favorite)),
    );
  }
}
