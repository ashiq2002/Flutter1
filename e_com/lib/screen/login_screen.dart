import 'package:e_com/util/route_names.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String str = '';
  final fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/image/login.png'),),
              const SizedBox(height: 10,),
              const Text('Welcome', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
              const SizedBox(height: 10,),
              Form(
                key: fromKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          label: Text('Email'),
                          border: OutlineInputBorder(

                          )
                        ),
                        onChanged: (value){
                          setState(() {
                            str = value;
                          });
                        },
                        validator: (value)=> value!.isEmpty? "field should not empty":null
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      child: TextFormField(
                        obscureText: true,
                          decoration: const InputDecoration(
                              label: Text('Password'),
                              border: OutlineInputBorder(

                              )
                          ),
                          onChanged: (value){
                            setState(() {
                              str = value;
                            });
                          },
                          validator: (value)=> value!.isEmpty? "field should not empty":
                          value.length < 6? "length must > 6":null
                      ),
                    ),

                    Material(
                      elevation: 5,
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap: (){
                          if(fromKey.currentState!.validate()){
                            Navigator.pushNamed(context, RouteNames.homeScreen);
                          }
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          alignment: Alignment.center,
                          child: const Text(
                              'Login',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
