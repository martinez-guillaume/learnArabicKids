import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'presentation_alif.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8ACDEA), // Couleur de fond
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Calculer la largeur des boutons
          double contentWidth =
              constraints.maxWidth > 800 ? 500 : constraints.maxWidth * 0.9;

          return Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 20.0), // Padding en haut et en bas
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Image en haut de l'écran
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Image.asset(
                      'assets/images/home_screen_picture.png',
                      height: 330,
                      fit: BoxFit
                          .contain, // pour que l'image s'adapte à la taille
                    ),
                  ),
                ),

                SizedBox(height: 15),

                // Texte sous l'image
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Center(
                    child: SizedBox(
                      width: contentWidth, // Largeur dynamique
                      child: Text(
                        "La méthode gratuite, fun et efficace pour apprendre l'arabe en s'amusant !",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoCondensed(
                          fontSize: 18,
                          color: const Color(0xFFE9717D),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Boutons en bas de la page
                Column(
                  children: <Widget>[
                    Center(
                      child: SizedBox(
                        width: contentWidth, // Largeur dynamique
                        child: ElevatedButton(
                          onPressed: () {
                            // Action pour le bouton "C'est parti !"
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PresentationAlifPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color(0xFFE9717D),
                            padding: EdgeInsets.symmetric(vertical: 14),
                            textStyle: TextStyle(fontSize: 20),
                          ),
                          child: Text("C'est parti !"),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Espace entre les boutons
                    Center(
                      child: SizedBox(
                        width: contentWidth, // Largeur dynamique
                        child: ElevatedButton(
                          onPressed: () {
                            // Action pour le bouton "J'ai déjà un compte"
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LoginPage()), // Navigue vers la page de connexion
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Color(0xFFE9717D),
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 14),
                            textStyle: TextStyle(fontSize: 20),
                          ),
                          child: Text("J'ai déjà un compte"),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
