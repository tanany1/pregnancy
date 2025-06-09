import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isPasswordVisible = false;
  String name = 'Guest';
  String email = '';
  String password = '';
  String dob = '';
  String phone = '';
  String pregnancyWeek = '';

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? 'Guest';
      email = prefs.getString('email') ?? '';
      password = prefs.getString('password') ?? '';
      dob = prefs.getString('dob') ?? '';
      phone = prefs.getString('phone') ?? '';
      pregnancyWeek = prefs.getString('pregnancyWeek') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink[100]!, Colors.orange[50]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Profile Information',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[800],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.pink[100],
                        child: Icon(Icons.person, size: 80, color: Colors.pink[800]),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.pink[100]?.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            TextFormField(
                              initialValue: name,
                              decoration: const InputDecoration(
                                labelText: 'Name',
                                labelStyle: TextStyle(color: Colors.white70),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(vertical: 15),
                              ),
                              style: const TextStyle(color: Colors.white),
                              enabled: false,
                            ),
                            const Divider(color: Colors.white70, thickness: 1),
                            const SizedBox(height: 20),
                            TextFormField(
                              initialValue: email,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Colors.white70),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(vertical: 15),
                              ),
                              style: const TextStyle(color: Colors.white),
                              enabled: false,
                            ),
                            const Divider(color: Colors.white70, thickness: 1),
                            const SizedBox(height: 20),
                            TextFormField(
                              initialValue: password,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: const TextStyle(color: Colors.white70),
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                    color: Colors.white70,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  },
                                ),
                              ),
                              style: const TextStyle(color: Colors.white),
                              obscureText: !_isPasswordVisible,
                              enabled: false,
                            ),
                            const Divider(color: Colors.white70, thickness: 1),
                            const SizedBox(height: 20),
                            TextFormField(
                              initialValue: dob,
                              decoration: const InputDecoration(
                                labelText: 'Birth Date',
                                labelStyle: TextStyle(color: Colors.white70),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(vertical: 15),
                              ),
                              style: const TextStyle(color: Colors.white),
                              enabled: false,
                            ),
                            const Divider(color: Colors.white70, thickness: 1),
                            const SizedBox(height: 20),
                            TextFormField(
                              initialValue: phone,
                              decoration: const InputDecoration(
                                labelText: 'Phone',
                                labelStyle: TextStyle(color: Colors.white70),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(vertical: 15),
                              ),
                              style: const TextStyle(color: Colors.white),
                              enabled: false,
                            ),
                            const Divider(color: Colors.white70, thickness: 1),
                            const SizedBox(height: 20),
                            TextFormField(
                              initialValue: pregnancyWeek.isEmpty ? 'Not specified' : pregnancyWeek,
                              decoration: const InputDecoration(
                                labelText: 'Pregnancy Week',
                                labelStyle: TextStyle(color: Colors.white70),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(vertical: 15),
                              ),
                              style: const TextStyle(color: Colors.white),
                              enabled: false,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}