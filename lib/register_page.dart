import 'package:first_project/home_page.dart';
import 'package:flutter/material.dart';

var firstName = TextEditingController();
var lastName = TextEditingController();
var phoneNumber = TextEditingController();
var emailR = TextEditingController();
var passwordR = TextEditingController();

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 10.0,
          backgroundColor: Colors.pink,
          title: Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('Register',
                        style: TextStyle(fontSize: 40.0, color: Colors.white))),
                const SizedBox(height: 10.0),
                Text(
                  'Enter Your First Name:',
                  style: TextStyle(fontSize: 20.0),
                ),
                const SizedBox(height: 10.0),
                TextFormField(
                  controller: firstName,
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                      labelText: 'First Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Enter Last Name:',
                  style: TextStyle(fontSize: 20.0),
                ),
                const SizedBox(height: 10.0),
                TextFormField(
                  controller: lastName,
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                      labelText: 'Last Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Enter Your Phone Number:',
                  style: TextStyle(fontSize: 20.0),
                ),
                const SizedBox(height: 10.0),
                TextFormField(
                  controller: phoneNumber,
                  keyboardType: TextInputType.phone,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                      labelText: 'Phone Number',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Enter Your Email Address:',
                  style: TextStyle(fontSize: 20.0),
                ),
                const SizedBox(height: 10.0),
                TextFormField(
                  controller: emailR,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Enter Your Password:',
                  style: TextStyle(fontSize: 20.0),
                ),
                const SizedBox(height: 10.0),
                TextFormField(
                  controller: passwordR,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isPassword,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      print(firstName.text);
                      print(lastName.text);
                      print(phoneNumber.text);
                      print(emailR.text);
                      print(passwordR.text);
                      Navigator.pop(context);
                    },
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have account ?',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
