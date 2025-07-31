import 'package:chat_apk/components/auth_form.dart';
import 'package:chat_apk/core/models/auth_form_data.dart';
import 'package:chat_apk/core/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);  

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool _isLoading = false;

  Future<void> _handleSubmit(AuthFormData formData) async {
    try{
      setState(() => _isLoading = true);
      print('AuthPage...');

      print(formData.image);
      print(formData.email);
      print(formData.name);

      if (formData.isLogin) {
        // Login
        await AuthService().login(
          formData.email,
          formData.password,
        );
      }else {
        // Signup
        print('signup');
        await AuthService().signup(
          formData.name,
          formData.email,
          formData.password,
          formData.image,
        );
      }

    }catch(err){
      print(err);
    }finally{
      setState(() => _isLoading = false);
    }    
  }

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: AuthForm(onSubmit: _handleSubmit),
            ),
          ),
          if(_isLoading)
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.5)
            ),
            child: Center(
              child: CircularProgressIndicator(),
            )
          )
        ],
      )
    );
  }
}