import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "resQfood",
            ),
            SizedBox(width: 8),
            Icon(Icons.restaurant_menu),
          ],
        ),
        backgroundColor: Colors.yellow.shade500,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: const Image(
                image: AssetImage("GG.png"),
              ),
            ),
            const Text(
              "Selamat Datang, resQfood",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              width: 20,
            ),
            const Text("Create an Account If You Dont Have!"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/accountpage');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(400, 50),
                backgroundColor: Colors.yellow.shade500,
              ),
              child: const Text(
                "Create Account",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 15), // Spacer
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/haveaccountpage');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(400, 50),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                side: const BorderSide(color: Colors.black, width: 1),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
