import 'package:agricapp/pages/farmerpanelone.dart';
import 'package:agricapp/pages/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    ));

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF22A45D),
        leading: IconButton(
          color: Colors.white,
          icon: Image.asset(
            'assets/Menu.png',
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Login(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color:
                    Color(0xFF22A45D), // Set your desired background color here
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "poppins",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  const Padding(padding: EdgeInsets.all(10)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Farmerpanelone(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage(
                          'https://randomuser.me/api/portraits/men/78.jpg'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF22A45D),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.black54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon:
                      const Icon(Icons.search, color: Color(0xFF22A45D)),
                  suffixIconConstraints: const BoxConstraints(
                    minWidth: 24,
                    minHeight: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/99.png', // Replace with your image asset path
                width: 330,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/one.png', // Replace with your image asset path
                width: 330,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/two.png', // Replace with your image asset path
                width: 330,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/three.png', // Replace with your image asset path
                width: 330,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/four.png', // Replace with your image asset path
                width: 330,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/five.png', // Replace with your image asset path
                width: 330,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/six.png', // Replace with your image asset path
                width: 330,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/seven.png', // Replace with your image asset path
                width: 330,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/eight.png', // Replace with your image asset path
                width: 330,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
