import 'package:flutter/material.dart';
import 'package:le_minh_vuong_flutter_10/bai_kiem_tra/resources/image_app.dart';

import 'bai2_giaodien.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String userName = 'leminhvuong';
  String passWord = '03/07/2002';
  int dem = 0;
  bool isVisibility = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'LOGIN',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImageApp.imageLogin),
                const SizedBox(
                  height: 20,
                ),
                //  Text('Username',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Username không được bỏ trống!';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      hintText: 'Username',
                      prefixIcon: const Icon(Icons.account_circle),
                      filled: true,
                      fillColor: const Color(0xFFF7F7F7),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Text('Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: !isVisibility,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password không được bỏ trống';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isVisibility = !isVisibility;
                            });
                          },
                          child: isVisibility == false
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off)),
                      filled: true,
                      fillColor: const Color(0xFFF7F7F7),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          if (usernameController.text == userName &&
                              passwordController.text == passWord) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const GiaoDien()));
                          } else {
                            dem++;
                            if (dem >= 3) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Nhập sai mật khẩu')));
                            }
                          }
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {}, child: const Text('Quên mật khẩu')),
                    TextButton(onPressed: () {}, child: const Text('Đăng ký')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
