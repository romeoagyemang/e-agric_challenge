import 'package:agricapp/pages/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ));

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          width: 5, // Set the desired width
          height: 5, // Set the desired height
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFBDE4CF), // Set your desired color here
          ),
          child: IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Image.asset(
                "assets/logo.png",
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: const Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: const Text(
                "Login to your account",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontFamily: "Poppins",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.fromLTRB(13, 2.5, 13, 0),
                  child: TextFormField(
                    textInputAction: TextInputAction.done,
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "Email",
                      contentPadding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                      labelStyle: const TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(13, 2.5, 13, 0),
                  child: TextFormField(
                    textInputAction: TextInputAction.done,
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "Password",
                      contentPadding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                      labelStyle: const TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                        letterSpacing: 0.5,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Image.asset(
                          'assets/ant-design_eye-invisible-filled.png',
                          width: 30,
                        ), // Replace with your image path
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 2.5, 13, 0),
              child: Row(
                children: [
                  Theme(
                    data: ThemeData(
                      checkboxTheme: CheckboxThemeData(
                        checkColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white), // Color of the checkmark
                        fillColor: MaterialStateColor.resolveWith((states) =>
                            const Color(
                                0xFF22A45D)), // Fill color of the checkbox
                        overlayColor: MaterialStateColor.resolveWith((states) =>
                            const Color(0xFF22A45D).withOpacity(
                                0.2)), // Color of the checkbox when pressed
                        side: const BorderSide(
                            color: Color(
                                0xFF22A45D)), // Border color of the checkbox
                      ),
                    ),
                    child: Checkbox(
                      value: true, // Set the initial value of the checkbox
                      onChanged: (value) {
                        // Handle checkbox value change here
                      },
                    ),
                  ),
                  const Text(
                    'Remember me',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      fontSize: 12.0,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                        fontSize: 12.0,
                        letterSpacing: 0.5,
                        color:
                            Color(0xFF22A45D), // Customize the color as desired
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: const Size(330, 60),
                  backgroundColor: const Color(0xFF22A45D),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Dashboard(),
                    ),
                  );
                },
                child: const Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    color: Color(0xFF22A45D),
                  ),
                ),
                Text(
                  "    OR    ",
                  style: TextStyle(fontSize: 30, color: Color(0xFF22A45D)),
                ),
                Expanded(
                  child: Divider(
                    color: Color(0xFF22A45D),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Image.asset(
                "assets/fingerprint 4.png",
                width: 80,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Row(
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                      fontFamily: "Poppins",
                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Create An Account",
                      style: TextStyle(
                        color: Color(0xFFBDE4CF),
                        fontFamily: "Poppins",
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
