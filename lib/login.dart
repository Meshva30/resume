import 'package:flutter/material.dart';
import 'package:resume/homescreen.dart';
import 'package:resume/utils/page.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtPassword = TextEditingController();
    String email = "";
    GlobalKey<FormState> resumeKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF4E869),
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_outlined,color: Colors.black),
          title: Text('LoginScreen',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25)),
          backgroundColor: Color(0xffF4E869),
          centerTitle: true,
        ),
        body: Center(
          child: Form(
            key: resumeKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: txtEmail,
                    validator: (value) =>
                        value!.isEmpty ? "enter your email addresss" : null,
                    keyboardType: TextInputType.name,
                    autocorrect: true,
                    cursorColor: Colors.yellow,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow,
                          width: 2.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      prefixIcon: Icon(Icons.email),

                      labelText: 'Email',
                      hintText: 'abc@email.com',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: txtPassword,
                    validator: (value) =>
                        value!.isEmpty ? "enter your password" : null,
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.number,
                    autocorrect: true,
                    cursorColor: Colors.yellow,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow,
                          width: 2.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      prefixIcon: Icon(Icons.lock),

                      labelText: 'Password',
                      hintText: '12345678',
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: (
                        ) {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(),));
                      UserData.email = txtEmail.text;
                      UserData.password = int.parse(txtPassword.text);
                      print(UserData.email);
                      print(UserData.password);
                    },
                    child: Text(' Submit ',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
