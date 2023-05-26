import 'package:agricapp/pages/dashboard.dart';
import 'package:agricapp/pages/farmerpanelone.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Farmerpanel(),
    ));

class Farmerpanel extends StatefulWidget {
  const Farmerpanel({super.key});

  @override
  State<Farmerpanel> createState() => _FarmerpanelState();
}

class _FarmerpanelState extends State<Farmerpanel> {
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
                builder: (context) => const Dashboard(),
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
                          "Farmer's Panel",
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Farmerpanelone(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/ff.png',
                  width: 330,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Farmerpanelone(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/ff1.png',
                  width: 1290,
                  height: 1200,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
