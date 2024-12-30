import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'lesson_selection.dart';

class LearningSelectionPage extends StatefulWidget {
  @override
  _LearningSelectionPageState createState() => _LearningSelectionPageState();
}

class _LearningSelectionPageState extends State<LearningSelectionPage> {
  bool isWritingSelected = false;
  bool isReadingSelected = false;
  bool isVocabularySelected = false;

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
                    Expanded(
                      child: Text(
                        'Que veux-tu apprendre ?',
                        style: GoogleFonts.robotoCondensed(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFE9717D),
                        ),
                      ),
                    ),
                  ],
                ),

                // Boutons Lecture, Écriture, et Vocabulaire
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: buttonWidth,
                        child: ElevatedButton(
                          onPressed: () {
                            isReadingSelected = true;
                            isWritingSelected = false;
                            isVocabularySelected = false;
                            updateContinueButtonState();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isReadingSelected ? Color(0xFFFAFFD8) : Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4), // Shape du bouton moins arrondi
                            ),
                          ),
                          child: Text(
                            'Lecture',
                            style: GoogleFonts.robotoCondensed(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 16), // Espacement entre les boutons

                      Container(
                        width: buttonWidth,
                        child: ElevatedButton(
                          onPressed: () {
                            isWritingSelected = true;
                            isReadingSelected = false;
                            isVocabularySelected = false;
                            updateContinueButtonState();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isWritingSelected ? Color(0xFFFAFFD8) : Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4), // //Shape du bouton moins arrondi
                            ),
                          ),
                          child: Text(
                            'Écriture',
                            style: GoogleFonts.robotoCondensed(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 16), // Espacement entre les boutons

                      // Bouton Vocabulaire
                      Container(
                        width: buttonWidth,
                        child: ElevatedButton(
                          onPressed: () {
                            isVocabularySelected = true;
                            isReadingSelected = false;
                            isWritingSelected = false;
                            updateContinueButtonState();
                          },
                          style: ElevatedButton.styleFrom(
                            //backgroundColor: isVocabularySelected ? const Color.fromARGB(255, 156, 226, 158) : Colors.white,
                            backgroundColor: isVocabularySelected ? Color(0xFFFAFFD8) : Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4), // Shape du bouton moins arrondi
                            ),
                          ),
                          child: Text(
                            'Vocabulaire',
                            style: GoogleFonts.robotoCondensed(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40), // Espacement

                Spacer(), // Pousse le bouton "Continuer" vers le bas

                // Bouton Continuer
                Center(
                  child: Container(
                    width: buttonWidth,
                    child: ElevatedButton(
                      onPressed: (isWritingSelected || isReadingSelected || isVocabularySelected)
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LessonSelectionPage()),
                              );
                            }
                          : null, // Désactive le bouton si aucun choix n'est fait
                      style: ElevatedButton.styleFrom(
                        backgroundColor: (isWritingSelected || isReadingSelected || isVocabularySelected)
                            ? Color(0xFFE9717D)
                            : Colors.grey, // Couleur du bouton
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
