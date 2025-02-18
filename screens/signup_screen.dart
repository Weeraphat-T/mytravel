import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytravel/widgets/mybutton.dart';
import 'package:mytravel/widgets/mytextfield.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final pwdController = TextEditingController();
  final repwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        child: Form(
          child: Column(
            children: [
              //1
              Text(
                'Welcome to our community.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                ),
              ),
              //2
              const SizedBox(
                height: 20,
              ),
              Text(
                '\nTo get started, please provide your infomation and create an account.\n',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
              //3
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: nameController,
                labelText: 'Name',
                hintText: 'Enter your name.',
                obsecureText: false,
              ),
              //4
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: emailController,
                labelText: 'Email',
                hintText: 'Enter your email.',
                obsecureText: false,
              ),
              //5
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: pwdController,
                labelText: 'Password',
                hintText: 'Enter your password.',
                obsecureText: true,
              ),
              //6
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: repwdController,
                labelText: 'Re-password',
                hintText: 'Enter your password again.',
                obsecureText: true,
              ),
              //7
              const SizedBox(
                height: 30,
              ),
              MyButton(
                onTap: () {},
                labelText: 'Sign up',
              ),
              //8
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Not a member?'),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, route)
                      },
                      child: Text(
                        'Register now.',
                        style: GoogleFonts.poppins(
                          color: Colors.blue,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
