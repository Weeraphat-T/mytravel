import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytravel/constants/colors.dart';
import 'package:mytravel/widgets/mybutton.dart';
import 'package:mytravel/widgets/mytextfield.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final pwdController = TextEditingController();
  final repwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColors,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        child: Form(
          child: Column(
            children: [
              //1
              Text(
                'Hello, ready to get started?',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                  color: primaryColors,
                ),
              ),
              //2
              const SizedBox(
                height: 20,
              ),
              Text(
                '\nplease sign in your email and password\n',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  color: primaryColors,
                ),
              ),
              //3
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: emailController,
                labelText: 'Email',
                hintText: 'Enter your email.',
                obsecureText: false,
              ),
              //4
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: pwdController,
                labelText: 'Password',
                hintText: 'Enter your password.',
                obsecureText: true,
              ),
              //5
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.poppins(
                        color: primaryColors,
                      ),
                  )),
                ],
              ),
              //6
              const SizedBox(
                height: 30,
              ),
              MyButton(
                onTap: () {},
                labelText: 'Sign in',
              ),
              //8
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have a member?', style: GoogleFonts.poppins(color: Colors.amber),),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign in.',
                        style: GoogleFonts.poppins(
                          color: primaryColors,
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
