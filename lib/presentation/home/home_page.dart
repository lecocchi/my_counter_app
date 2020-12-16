import 'package:flutter/material.dart';
import 'package:my_counter_app/models/picsum_model.dart';
import 'package:my_counter_app/presentation/home/home_controller.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final homeBloc = Provider.of<HomeBloc>(context);

    return ChangeNotifierProvider(
      create: (_) => HomeBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Consumer<HomeBloc>(
            builder: (_, homeController, __) => FutureBuilder(
              future: homeController.getAllPicsum(),
              builder: (_, AsyncSnapshot<List<PicsumModel>> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data[index].id),
                        subtitle: Text(snapshot.data[index].author),
                      );
                    },
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
