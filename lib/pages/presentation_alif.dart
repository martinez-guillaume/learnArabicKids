import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learnarabickids/pages/pages.dart';
import 'learning_selection.dart';

class PresentationAlifPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8ACDEA), // Couleur de fond
      appBar: AppBar(
        backgroundColor: Color(0xFF8ACDEA), // Couleur de fond de l'AppBar
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Calculer la largeur pour le bouton et le texte
          double contentWidth = constraints.maxWidth > 800 ? 500 : constraints.maxWidth * 0.9;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                // Image de Monsieur Alif
                Image.asset(
                  'assets/images/monsieur_alif.png',
                  height: 270,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 90), // Espacement entre l'image et le texte
                // Présentation de Monsieur Alif
                SizedBox(
                  width: contentWidth, // Largeur dynamique
                  child: Text(
                    'Bonjour ! Je suis Monsieur Alif, votre guide dans cette aventure. Je suis ici pour vous aider à découvrir la langue arabe de manière amusante. Prêt à commencer ?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed( // police Roboto de Google Fonts
                      fontSize: 18,
                      color: const Color(0xFFE9717D), // Couleur du texte
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Spacer(), //pousser le bouton vers le bas
                // Bouton Continuer
                Center(
                  child: SizedBox(
                    width: contentWidth, // Largeur dynamique
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LearningSelectionPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFFE9717D), // Couleur du bouton
                        padding: EdgeInsets.symmetric(vertical: 14),
                        textStyle: TextStyle(fontSize: 20),
                      ),
                      child: Text(
                        'Continuer',
                        style: GoogleFonts.robotoCondensed(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                  SizedBox(height: 10), 
              ],
            ),
          );
        },
      ),
    );
  }
}
