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
              const SizedBox(height: 100,),
              Text('Welcome $str'),
              const SizedBox(height: 100,),
              Form(
                key: fromKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 35),
                      child: TextFormField(
                        decoration: const InputDecoration(
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
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap: (){
                          fromKey.currentState!.validate();
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          alignment: Alignment.center,
                          child: const Text(
                              'Login',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600
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
