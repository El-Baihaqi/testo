import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Colors.cyanAccent,
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/loginhome');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("MM.png")),
            SizedBox(height: 30),
            SizedBox(
              width: 400,
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 400,
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  prefixIcon: Icon(Icons.key),
                ),
              ),
            ),
            Text(
              "Forget Password?",
              textAlign: TextAlign.right,
            ),
            SizedBox(height: 15),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/homepageapp');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(400, 50),
                backgroundColor: Colors.yellow,
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            Text("Or"),
            Divider(
              color: Colors.black,
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Add your Google login logic here
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(400, 50),
                primary: Colors.white,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.black),
                ),
              ),
              icon: Icon(Icons.g_mobiledata),
              label: Text('Sign in with Google'),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                // Add your Facebook login logic here
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(400, 50),
                primary: Colors.white,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.black),
                ),
              ),
              icon: Icon(Icons.facebook),
              label: Text('Sign in with Facebook'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/accountpage');
              },
              child: const Text(
                'Dont Have Account?',
                style: TextStyle(
                  color: Colors.black,
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
