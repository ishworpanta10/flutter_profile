import 'package:flutter/material.dart';

import '../../model/api_user.dart';
import '../../services/api_service.dart';

class ApiDataScreen extends StatefulWidget {
  const ApiDataScreen({Key? key}) : super(key: key);

  @override
  _ApiDataScreenState createState() => _ApiDataScreenState();
}

class _ApiDataScreenState extends State<ApiDataScreen> {
  Future<void> _onRefresh() async {
    await ApiService().getApiUsers();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api User List"),
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: FutureBuilder<List<ApiUserModel>?>(
          future: ApiService().getApiUsers(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final userList = snapshot.data;
              if (userList != null) {
                return ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    final apiUserModel = userList[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          apiUserModel.name.substring(0, 1),
                        ),
                      ),
                      title: Text(apiUserModel.name),
                      subtitle: Text(apiUserModel.email),
                      trailing: Text(apiUserModel.username ?? "-"),
                    );
                  },
                );
              }
            } else if (snapshot.hasError) {
              return Center(
                child: Column(
                  children: [
                    const Icon(Icons.error_outline),
                    TextButton(
                      onPressed: () => _onRefresh,
                      child: const Text('Retry'),
                    )
                  ],
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
