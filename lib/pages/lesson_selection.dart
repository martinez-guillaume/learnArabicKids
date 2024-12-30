import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonSelectionPage extends StatefulWidget {
  @override
  _LessonSelectionPageState createState() => _LessonSelectionPageState();
}

class _LessonSelectionPageState extends State<LessonSelectionPage> {
  int? selectedLesson; // Pour suivre la leçon sélectionnée

  void updateContinueButtonState() {
    setState(() {});
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
          // Calcul de la largeur des boutons
          double buttonWidth = constraints.maxWidth > 800 ? 500 : constraints.maxWidth * 0.9;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Image en haut à gauche
                Row(
                  children: [
                    Image.asset(
                      'assets/images/launch5.png', 
                      height: 200, 
                      fit: BoxFit.cover,
                    ),
                    // Espacement entre l'image et le texte
                    Expanded(
                      child: Text(
                        'Quelle leçon souhaites-tu étudier ?',
                        style: GoogleFonts.robotoCondensed(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFE9717D),
                        ),
                      ),
                    ),
                  ],
                ),
                // Contenu défilant pour les boutons des leçons
                Expanded(
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: [
                          for (int i = 1; i <= 10; i++) ...[
                            Container(
                              width: buttonWidth,
                              margin: EdgeInsets.only(bottom: 16), // Espacement entre les boutons
                              child: ElevatedButton(
                                onPressed: () {
                                  selectedLesson = i; // Met à jour la leçon sélectionnée
                                  updateContinueButtonState();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: selectedLesson == i ? Color(0xFFFAFFD8) : Colors.white,
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4), // Coins moins arrondis
                                  ),
                                ),
                                child: Text(
                                  'Leçon $i',
                                  style: GoogleFonts.robotoCondensed(color: Colors.black), // Couleur du texte
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 50), // Espacement

                // Bouton Continuer
                Center(
                  child: Container(
                    width: buttonWidth,
                    child: ElevatedButton(
                      onPressed: selectedLesson != null
                          ? () {
                              // Action pour continuer
                              Navigator.pushNamed(context, '/nextPage'); // Navigue vers la page suivante
                            }
                          : null, // Désactive le bouton si aucune leçon n'est sélectionnée
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedLesson != null ? Color(0xFFE9717D) : Colors.grey, // Couleur du bouton
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
              ],
            ),
          );
        },
      ),
    );
  }
}
