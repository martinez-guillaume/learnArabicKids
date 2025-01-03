import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'lesson_selection.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:learnarabickids/widgets/typewriter_text.dart';
import 'letter_arabic_lesson.dart';
import 'letter_writing_lesson.dart';

class LearningSelectionPage extends StatefulWidget {
  const LearningSelectionPage({super.key});

  @override
  _LearningSelectionPageState createState() => _LearningSelectionPageState();
}

class _LearningSelectionPageState extends State<LearningSelectionPage> {
  bool isWritingSelected = false;
  bool isReadingSelected = false;
  bool isVocabularySelected = false;
  bool isDictationSelected = false; 

  @override
  void initState() {
    super.initState();
  }

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
          double buttonWidth =
              constraints.maxWidth > 800 ? 500 : constraints.maxWidth * 0.9;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Image et bulle côte à côte
                Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Alignement en haut
                  children: [
                    // Image
                    Image.asset(
                      'assets/images/monsieur_alif_with_bubble.png',
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10), // Espacement entre l'image et la bulle
                    // Bulle
                    Expanded(
                      child: ChatBubble(
                        clipper: ChatBubbleClipper2(
                            type: BubbleType
                                .receiverBubble), // Type de bulle (flèche à gauche)
                        alignment: Alignment.topLeft, // Position de la bulle
                        margin: EdgeInsets.only(top: 15),
                        backGroundColor: Colors.white,
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width *
                                0.7, // Limite de largeur de la bulle
                          ),
                          child: TypewriterText(
                            text:
                                "Hey !!! Que souhaites-tu étudier aujourd'hui ?",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 70),

                // Boutons Lecture, Écriture, Vocabulaire et Dictée
                Center(
                  child: Column(
                    children: [
                      // Bouton Lecture
                      SizedBox(
                        width: buttonWidth,
                        child: ElevatedButton(
                          onPressed: () {
                            isReadingSelected = true;
                            isWritingSelected = false;
                            isVocabularySelected = false;
                            isDictationSelected = false;
                            updateContinueButtonState();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isReadingSelected
                                ? Color(0xFFFAFFD8)
                                : Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  4), // Shape du bouton moins arrondi
                            ),
                          ),
                          child: Text(
                            'Lecture',
                            style: GoogleFonts.robotoCondensed(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),

                      // Bouton Écriture
                      SizedBox(
                        width: buttonWidth,
                        child: ElevatedButton(
                          onPressed: () {
                            isWritingSelected = true;
                            isReadingSelected = false;
                            isVocabularySelected = false;
                            isDictationSelected = false;
                            //updateContinueButtonState();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LetterArabicLessonPage()), // Navigue vers la page de connexion
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isWritingSelected
                                ? Color(0xFFFAFFD8)
                                : Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Text(
                            'Écriture',
                            style: GoogleFonts.robotoCondensed(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),

                      // Bouton Vocabulaire
                      SizedBox(
                        width: buttonWidth,
                        child: ElevatedButton(
                          onPressed: () {
                            isVocabularySelected = true;
                            isReadingSelected = false;
                            isWritingSelected = false;
                            isDictationSelected = false;
                            //updateContinueButtonState();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LetterWritingLessonPage()), // Navigue vers la page de connexion
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isVocabularySelected
                                ? Color(0xFFFAFFD8)
                                : Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Text(
                            'Vocabulaire',
                            style: GoogleFonts.robotoCondensed(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),

                      // Bouton Dictée
                      SizedBox(
                        width: buttonWidth,
                        child: ElevatedButton(
                          onPressed: () {
                            isDictationSelected = true;
                            isReadingSelected = false;
                            isWritingSelected = false;
                            isVocabularySelected = false;
                            updateContinueButtonState();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isDictationSelected
                                ? Color(0xFFFAFFD8)
                                : Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Text(
                            'Dictée',
                            style: GoogleFonts.robotoCondensed(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),

                Spacer(), // Pousse le bouton "Continuer" vers le bas

                // Bouton Continuer
                Center(
                  child: SizedBox(
                    width: buttonWidth,
                    child: ElevatedButton(
                      onPressed: (isWritingSelected ||
                              isReadingSelected ||
                              isVocabularySelected ||
                              isDictationSelected)
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LessonSelectionPage()),
                              );
                            }
                          : null, // Désactive le bouton si aucun choix n'est fait
                      style: ElevatedButton.styleFrom(
                        backgroundColor: (isWritingSelected ||
                                isReadingSelected ||
                                isVocabularySelected ||
                                isDictationSelected)
                            ? Color(0xFFE9717D)
                            : Colors.grey,
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
