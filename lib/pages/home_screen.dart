import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8ACDEA), // Couleur de fond
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0), // Padding en haut et en bas
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Image en haut, centrée
            Container(
              margin: EdgeInsets.only(top: 50), // Marge en haut
              child: Center(
                child: Image.asset(
                  'assets/images/home_screen_picture.png', // Remplacez par le chemin de votre image
                  height: 300, // Ajustez la hauteur de l'image
                  fit: BoxFit.contain, // Ajuste l'image pour qu'elle s'adapte à la taille
                ),
              ),
            ),
            // Espace au-dessus du texte
            SizedBox(height: 20), // Espace au-dessus du texte
            // Texte sous l'image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0), // Marge horizontale
              child: Center(
                child: SizedBox(
                  width: 350,
                  child: Text(
                    "La méthode gratuite, fun et efficace pour apprendre l'arabe en s'amusant !",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed( // Utilisation de la police Roboto de Google Fonts
                      fontSize: 18, // Taille de la police
                      color: const Color(0xFFE9717D), // Couleur du texte
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            // Espace vide pour centrer les boutons
            SizedBox(height: 20), // Ajustez la taille selon vos besoins
            // Boutons en bas, centrés
            Column(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0), // Padding horizontal pour le premier bouton
                    child: SizedBox(
                      width: double.infinity, // Prendre toute la largeur disponible
                      child: ElevatedButton(
                        onPressed: () {
                          // Action pour le bouton "C'est parti !"
                          print("C'est parti !");
                        },
                        child: Text("C'est parti !"),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFFE9717D), // Couleur du texte
                          padding: EdgeInsets.symmetric(vertical: 14), // Ajustez la hauteur
                          textStyle: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Espace entre les boutons
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0), // Padding horizontal pour le deuxième bouton
                    child: SizedBox(
                      width: double.infinity, // Prendre toute la largeur disponible
                      child: ElevatedButton(
                        onPressed: () {
                          // Action pour le bouton "J'ai déjà un compte"
                          print("J'ai déjà un compte");
                        },
                        child: Text("J'ai déjà un compte"),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Color(0xFFE9717D),
                          backgroundColor: Colors.white, // Couleur du texte
                          padding: EdgeInsets.symmetric(vertical: 14), // Ajustez la hauteur
                          textStyle: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Espace en bas
            //SizedBox(height: 20), // Marge en bas
          ],
        ),
      ),
    );
  }
}