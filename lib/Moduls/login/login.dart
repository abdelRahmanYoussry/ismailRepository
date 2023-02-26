import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        toolbarHeight: 70,
        title: Text(
          'Login',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 60),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Login Now To Our App',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: TextStyle(),
                  decoration: InputDecoration(
                      prefix: Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.teal, width: 3),
                      ),
                      label: Text(
                        'UserName',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: TextStyle(),
                  decoration: InputDecoration(
                      suffix: Icon(Icons.remove_red_eye),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.teal, width: 3),
                      ),
                      label: Text(
                        'Password',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                // Spacer(),
                ElevatedButton(onPressed: () {}, child: Text('Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
