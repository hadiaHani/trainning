import 'package:flutter/material.dart';
import 'package:login_train/loginScreen.dart';

class AppBarTr extends StatelessWidget {
  const AppBarTr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "": (context) => const LoginScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "category ", icon: Icon(Icons.category))
        ]),
        appBar: AppBar(
          elevation: .2,
          backgroundColor: Colors.teal,
          title: const Text("App Bar"),
          centerTitle: true,
          // leading: const Icon(Icons.menu),
          actions: [
            const Icon(Icons.search),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            )
          ],
        ),
        drawer: const Drawer(
            /*

          child: ListTile(
            title: Text("Hadia"),
            subtitle: Text("data"),
            leading: Icon(Icons.menu),
            trailing: Icon(Icons.one_x_mobiledata),
          ),*/
            child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Icon(
                    Icons.person,
                  ),
                ),
                accountName: Text("Hadia Alewady"),
                accountEmail: Text("Sun220@outlook.com"))),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Click here")),
            RaisedButton(
                color: Colors.blue,
                onPressed: () {},
                child: const Text("Click here")),
          ],
        )),
      ),
    );
  }
}
