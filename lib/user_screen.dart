import 'package:flutter/material.dart';

class UserModel {
  int id;
  String name;
  String phone;
  UserModel({required this.id, required this.name, required this.phone});
}

class UserScreen extends StatelessWidget {
  UserScreen({Key? key}) : super(key: key);

  List<UserModel> userModel = [
    UserModel(id: 1, name: "Hadia Hani", phone: "+972597015245"),
    UserModel(id: 2, name: "Ameera Hani", phone: "+454510"),
    UserModel(id: 3, name: "Sondos Hani", phone: "+54545422"),
    UserModel(id: 4, name: "Soso Hani", phone: "+4545421245"),
    UserModel(id: 5, name: "Maria Hani", phone: "+445456765"),
    UserModel(id: 6, name: "Maha Hani", phone: "+4545421"),
    UserModel(id: 7, name: "Abed Hani", phone: "+975497015245"),
    UserModel(id: 8, name: "Hani Hani", phone: "+975497015245"),
    UserModel(id: 9, name: "Ola Hani", phone: "+975497015245"),
    UserModel(id: 10, name: "Alaa Hani", phone: "+975497015245"),
    UserModel(id: 11, name: "Rawan Hani", phone: "+975497015245"),
    UserModel(id: 12, name: "Dania Hani", phone: "+975497015245"),
    UserModel(id: 13, name: "Marwa Hani", phone: "+975497015245"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Users"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => BuildUserItem(userModel[index]),
            separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20.0),
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                ),
            itemCount: userModel.length));
  }

  Widget BuildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text("${user.id}"),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(user.phone,
                    style: const TextStyle(
                      color: Colors.grey,
                    )),
              ],
            )
          ],
        ),
      );
}
