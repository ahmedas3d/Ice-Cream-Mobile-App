import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ice_cream_mobile/main.dart';
import 'package:ice_cream_mobile/ui/screens/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final _formLoginKey = GlobalKey<FormState>();
  bool rememberPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildHeader(),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildLoginForm(context),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/banner_login.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xff8A19D6),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                const Text(
                  "Ice Cream Parlor",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Log in to access the area\nadministration of the ice cream shop.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: SingleChildScrollView(
          child: Form(
            key: _formLoginKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40.0),
                _buildTextField(
                  controller: email,
                  label: 'Email',
                  hint: 'Enter Email',
                ),
                const SizedBox(height: 25.0),
                _buildTextField(
                  controller: password,
                  label: 'Password',
                  hint: 'Enter Password',
                  obscureText: true,
                ),
                const SizedBox(height: 25.0),
                _buildForgotPasswordLink(context),
                const SizedBox(height: 25.0),
                _buildSignInButton(context),
                const SizedBox(height: 30),
                _buildSignUpWithDivider(),
                _buildSocialSignInButton(),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    bool obscureText = false,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      obscuringCharacter: '*',
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black26),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(25),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }

  Widget _buildForgotPasswordLink(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          child: const Text(
            'Forget password?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff8A19D6),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (e) => const WelcomeScreen(),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildSignInButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
          backgroundColor: const Color(0xff8A19D6),
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          if (_formLoginKey.currentState!.validate()) {
            print('Email: ${email.text}');
            print('Password: ${password.text}');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (e) => const BottomBar(),
              ),
            );
          }
        },
        child: const Text(
          'Sign in',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpWithDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            thickness: 0.7,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Sign up with',
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 0.7,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
      ],
    );
  }

  Widget _buildSocialSignInButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(FontAwesomeIcons.google),
          SizedBox(width: 8),
          Text(
            "Google",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
