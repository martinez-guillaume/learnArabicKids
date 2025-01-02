import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:learnarabickids/widgets/typewriter_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'quiz.dart';

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
          double buttonWidth =
              constraints.maxWidth > 800 ? 500 : constraints.maxWidth * 0.9;

          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Image et bulle côte à côte
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            type: BubbleType.receiverBubble), // Type de bulle (flèche à gauche)
                        alignment: Alignment.topLeft, // Position de la bulle
                        margin: EdgeInsets.only(top: 15),
                        backGroundColor: Colors.white,
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width *
                                0.7, // Limite de largeur de la bulle
                          ),
                          child: TypewriterText(
                            text: "Et quelle leçon souhaites-tu suivre ?",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                // Contenu défilant pour les boutons des leçons
                Expanded(
                  child: SingleChildScrollView(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4), // Ajout d'arrondis aux angles
                      child: Container(
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 5), // Espace avant le premier bouton
                              for (int i = 1; i <= 10; i++) ...[
                                Container(
                                  width: buttonWidth,
                                  margin: EdgeInsets.only(
                                      bottom: 16), // Espacement entre les boutons
                                  child: ElevatedButton(
                                    onPressed: () {
                                      selectedLesson = i; // Met à jour la leçon sélectionnée
                                      updateContinueButtonState();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: selectedLesson == i
                                          ? Color(0xFFFAFFD8)
                                          : Colors.white,
                                      padding: EdgeInsets.symmetric(vertical: 16),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4), // Coins arrondis pour les boutons
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 16.0), 
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          // Texte du bouton
                                          Text(
                                            'Leçon $i ( ث , ت , ب , أ )',
                                            style: GoogleFonts.robotoCondensed(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          // Affiche l'icône de coupe jaune uniquement pour la leçon 1 en attendant la dynamique
                                          if (i == 1)
                                            FaIcon(
                                              FontAwesomeIcons.trophy,
                                              color: Colors.yellow[700],
                                              size: 20,
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30),

                // Bouton Continuer
                Center(
                  child: Container(
                    width: buttonWidth,
                    child: ElevatedButton(
                      onPressed: selectedLesson != null
                          ? () {
                               // Action pour le bouton "Continuer"
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      QuizPage()), // Navigue vers la page de quiz à modifier en dynamique
                            );
                            }
                          : null, // Désactive le bouton si aucune leçon n'est sélectionnée
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedLesson != null
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
