import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:learnarabickids/widgets/typewriter_text.dart';

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
                      borderRadius: BorderRadius.circular(
                          4), // Ajout d'arrondis aux angles
                      child: Container(
                        //color: Color.fromARGB(255, 199, 235, 252), // Couleur de fond pour la zone défilante
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                  height: 5), // Espace avant le premier bouton
                              for (int i = 1; i <= 10; i++) ...[
                                Container(
                                  width: buttonWidth,
                                  margin: EdgeInsets.only(
                                      bottom:
                                          16), // Espacement entre les boutons
                                  child: ElevatedButton(
                                    onPressed: () {
                                      selectedLesson =
                                          i; // Met à jour la leçon sélectionnée
                                      updateContinueButtonState();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: selectedLesson == i
                                          ? Color(0xFFFAFFD8)
                                          : Colors.white,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 16),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            4), // Coins moins arrondis pour les boutons
                                      ),
                                    ),
                                    child: Text(
                                      'Leçon $i',
                                      style: GoogleFonts.robotoCondensed(
                                        color: Colors.black,
                                        fontSize: 16,
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
                              // Action pour continuer
                              Navigator.pushNamed(context,
                                  '/nextPage'); // Navigue vers la page suivante
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
