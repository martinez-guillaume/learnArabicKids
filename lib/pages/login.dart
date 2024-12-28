// import 'package:flutter/material.dart';
// import 'terms_of_service.dart'; 
// import 'privacy_policy.dart';
// import 'package:flutter/gestures.dart'; 

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool _obscureText = true; // Pour masquer le mot de passe

//   void _togglePasswordVisibility() {
//     setState(() {
//       _obscureText = !_obscureText;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Connexion'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: _passwordController,
//               obscureText: _obscureText,
//               decoration: InputDecoration(
//                 labelText: 'Mot de passe',
//                 border: OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     _obscureText ? Icons.visibility : Icons.visibility_off,
//                   ),
//                   onPressed: _togglePasswordVisibility,
//                 ),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Logique de connexion ici
//               },
//               child: Text('SE CONNECTER'),
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               'En te connectant à Learn Arabic Kids, tu acceptes nos ',
//               textAlign: TextAlign.center,
//             ),
//             RichText(
//               text: TextSpan(
//                 children: [
//                   TextSpan(
//                     text: 'Conditions d\'utilisation',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blue,
//                     ),
//                     recognizer: TapGestureRecognizer()
//                       ..onTap = () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => TermsOfServicePage(),
//                           ),
//                         );
//                       },
//                   ),
//                   TextSpan(text: ' et '),
//                   TextSpan(
//                     text: 'Politique de confidentialité',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blue,
//                     ),
//                     recognizer: TapGestureRecognizer()
//                       ..onTap = () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => PrivacyPolicyPage(),
//                           ),
//                         );
//                       },
//                   ),
//                   TextSpan(text: '.'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import 'terms_of_service.dart'; // Assurez-vous d'importer votre page de Conditions d'utilisation
import 'privacy_policy.dart'; // Assurez-vous d'importer votre page de Politique de confidentialité

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
        title: Text('Connexion', style: GoogleFonts.robotoCondensed(color: Color.fromARGB(255, 0, 0, 0))), // Couleur du texte de l'AppBar
        backgroundColor: Color(0xFF8ACDEA), // Couleur de fond de l'AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150.0), 
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle:  GoogleFonts.robotoCondensed(color: Color(0xFFE9717D)), // Couleur du label
                filled: true, // Remplissage activé
                fillColor: Colors.white, // Couleur de remplissage (blanc)
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                labelStyle: GoogleFonts.robotoCondensed(color: Color(0xFFE9717D)), // Couleur du label
                filled: true, // Remplissage activé
                fillColor: Colors.white, // Couleur de remplissage (blanc)
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Color(0xFFE9717D), // Couleur de l'icône
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
              ),
            ),
            SizedBox(height: 40.0),
            SizedBox(
                  width: double.infinity, // Prendre toute la largeur disponible
                  child: ElevatedButton(
                    onPressed: () {
                      // Logique de connexion ici
                    },
                    child: Text('SE CONNECTER', style: GoogleFonts.robotoCondensed(color: Colors.white)), // Couleur du texte du bouton
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE9717D),
                    ),
                  ),
            ),
            SizedBox(height: 200.0),
            Text(
              'En te connectant à Learn Arabic Kids, tu acceptes nos ',
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoCondensed(color: Color(0xFFE9717D)), // Couleur du texte
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Conditions d\'utilisation',
                    style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFE9717D), // Couleur du texte
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
                  TextSpan(text: ' et ', style: TextStyle(color: Color(0xFFE9717D))), // Couleur du texte
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
                  TextSpan(text: '.', style: TextStyle(color: Color(0xFFE9717D))), // Couleur du texte
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}