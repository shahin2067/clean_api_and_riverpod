import 'package:clean_api_and_riverpod/application/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GetUserScreen extends HookConsumerWidget {
  const GetUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.delayed(const Duration(milliseconds: 100), () {
        ref.read(userProvider.notifier).usermodel();
      });
      return null;
    }, []);

    //ref.read(userProvider.notifier).usermodel();
    final state = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('(Get) clean_api'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: state.user.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(state.user[index].first_name),
              //title: const Text('Title'),
              subtitle: const Text('subtitle'),
              leading: ClipOval(
                child: CircleAvatar(
                  child: Image.network(
                      'https://images.pexels.com/photos/60597/dahlia-red-blossom-bloom-60597.jpeg?cs=srgb&dl=pexels-pixabay-60597.jpg&fm=jpg'),
                ),
              ),
            );
          }),
    );
  }
}
