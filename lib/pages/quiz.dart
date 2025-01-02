import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:learnarabickids/widgets/feedback_bottom_sheet.dart';


class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int? selectedOption; // Stocke l'option sélectionnée (null si aucune)
  final int correctAnswer = 1; // La première réponse est correcte

  /// Affiche la feuille de retour d'information
  void showFeedback(bool isCorrect) {
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      builder: (_) => FeedbackBottomSheet(
        isCorrect: isCorrect,
        correctAnswer: correctAnswer,
        onContinue: () {
          Navigator.pop(context); // Ferme la modal
          // Ajoutez ici la logique pour passer à la page suivante
          print('Continuer ou passer à la page suivante');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8ACDEA), // Couleur de fond principale
      appBar: AppBar(
        backgroundColor: Color(0xFF8ACDEA),
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Détecte si l'appareil est une tablette ou un ordinateur (largeur > 600)
          bool isWide = constraints.maxWidth > 600;

          double horizontalPadding = isWide ? constraints.maxWidth * 0.2 : 16.0;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 40), 

              // Lettre "أ" affichée en grand avec un fond arrondi
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(16), 
                  ),
                  padding: EdgeInsets.all(16), 
                  width: isWide
                      ? constraints.maxWidth * 0.5
                      : MediaQuery.of(context).size.width * 0.75,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40), 
                      child: Text(
                        'أ',
                        style: TextStyle(
                          fontSize: 110,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Spacer(),

              // Texte "Choisis la bonne réponse"
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Text(
                  'Choisis la bonne réponse :',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(height: 35),

              // Zone des boutons
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Premier bouton
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedOption = 1; // Option 1 sélectionnée
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: selectedOption == 1
                                  ? Color(0xFFFAFFD8)
                                  : Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: Text(
                              'alif',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        // Deuxième bouton
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedOption = 2; // Option 2 sélectionnée
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: selectedOption == 2
                                  ? Color(0xFFFAFFD8)
                                  : Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: Text(
                              'ba',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16), // Espacement entre les lignes de boutons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Troisième bouton
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedOption = 3; // Option 3 sélectionnée
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: selectedOption == 3
                                  ? Color(0xFFFAFFD8)
                                  : Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: Text(
                              'ta',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        // Quatrième bouton
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedOption = 4; // Option 4 sélectionnée
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: selectedOption == 4
                                  ? Color(0xFFFAFFD8)
                                  : Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: Text(
                              'tha',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 35),

              // Bouton Valider
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: ElevatedButton(
                  onPressed: selectedOption == null
                      ? null // Désactive le bouton si aucune option n'est sélectionnée
                      : () {
                          bool isCorrect = selectedOption == correctAnswer;
                          showFeedback(isCorrect);
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE9717D), // Couleur du bouton
                    padding: EdgeInsets.symmetric(vertical: 14),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text(
                    'Valider',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30), 
            ],
          );
        },
      ),
    );
  }
}

