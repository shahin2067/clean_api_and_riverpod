import 'package:clean_api_and_riverpod/presentation/get_user_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clean Api and Riverpod'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.brown[200],
            child: ListTile(
              title: const Text('(Get) Clean API'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const GetUserScreen()));
              },
            ),
          ),
          Card(
            color: Colors.orange[200],
            child: ListTile(
              title: const Text('(Post) Clean API'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (_) => const GetUserScreen()));
              },
            ),
          )
        ],
      ),
    );
  }
}
