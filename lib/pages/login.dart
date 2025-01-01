import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import 'terms_of_service.dart';
import 'privacy_policy.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true; // Pour masquer le mot de passe

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8ACDEA), // Couleur de fond
      appBar: AppBar(
        backgroundColor: Color(0xFF8ACDEA), // Couleur de fond de l'AppBar
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Calcul de la largeur des boutons et des champs
          double elementWidth =
              constraints.maxWidth > 800 ? 500 : constraints.maxWidth * 0.9;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 130.0),
                // Champ Email
                Center(
                  child: Container(
                    width: elementWidth,
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: GoogleFonts.robotoCondensed(
                            color: Color(0xFFE9717D)), // Couleur du label
                        filled: true, // Remplissage activé
                        fillColor: Colors.white, // Couleur de remplissage
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Arrondi léger
                          borderSide: BorderSide(
                              color: Colors.black), // Couleur de la bordure
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                // Champ Mot de passe
                Center(
                  child: Container(
                    width: elementWidth,
                    child: TextField(
                      controller: _passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: 'Mot de passe',
                        labelStyle: GoogleFonts.robotoCondensed(
                            color: Color(0xFFE9717D)), // Couleur du label
                        filled: true, // Remplissage activé
                        fillColor: Colors.white, // Couleur de remplissage
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Arrondi léger
                          borderSide: BorderSide(
                              color: Colors.black), // Couleur de la bordure
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Color(0xFFE9717D), // Couleur de l'icône
                          ),
                          onPressed: _togglePasswordVisibility,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50.0),
                // Bouton Se connecter
                Center(
                  child: Container(
                    width: elementWidth,
                    child: ElevatedButton(
                      onPressed: () {
                        // Logique de connexion ici
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFE9717D),
                        foregroundColor: Colors.white, // Couleur du texte
                        padding: EdgeInsets.symmetric(vertical: 14),
                        textStyle: TextStyle(fontSize: 20),
                      ),
                      child: Text('SE CONNECTER',
                          style:
                              GoogleFonts.robotoCondensed(color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(height: 200.0),
                // Texte d'information
                Text(
                  'En te connectant à Learn Arabic Kids, tu acceptes nos ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.robotoCondensed(
                      color: Color(0xFFE9717D)), // Couleur du texte
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Conditions d\'utilisation',
                        style: GoogleFonts.robotoCondensed(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFE9717D),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TermsOfServicePage(),
                              ),
                            );
                          },
                      ),
                      TextSpan(
                          text: ' et ',
                          style: TextStyle(color: Color(0xFFE9717D))),
                      TextSpan(
                        text: 'Politique de confidentialité',
                        style: GoogleFonts.robotoCondensed(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFE9717D), // Couleur du texte
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PrivacyPolicyPage(),
                              ),
                            );
                          },
                      ),
                      TextSpan(
                          text: '.',
                          style: TextStyle(color: Color(0xFFE9717D))),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
