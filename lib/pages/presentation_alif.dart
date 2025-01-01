// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:learnarabickids/pages/pages.dart';
// // import 'learning_selection.dart';
// // import 'package:learnarabickids/widgets/typewriter_text.dart';

// // class PresentationAlifPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Color(0xFF8ACDEA), // Couleur de fond
// //       appBar: AppBar(
// //         backgroundColor: Color(0xFF8ACDEA), // Couleur de fond de l'AppBar
// //       ),
// //       body: LayoutBuilder(
// //         builder: (context, constraints) {
// //           // Calculer la largeur pour le bouton et le texte
// //           double contentWidth = constraints.maxWidth > 800 ? 500 : constraints.maxWidth * 0.9;

// //           return Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               children: [

// //                 // Gif de Monsieur Alif
// //                 Image.asset(
// //                   'assets/images/monsieur_alif.gif',
// //                   height: 270,
// //                   fit: BoxFit.cover,
// //                 ),

// //                 // image en dessous du GIF
// //                 Image.asset(
// //                   'assets/images/monsieur_alif_writing.png',
// //                   height: 50,
// //                   fit: BoxFit.cover,
// //                 ), // Espacement entre l'image et le texte
// //                 SizedBox(height: 50),
// //                 // Présentation de Monsieur Alif
// //                 SizedBox(
// //                   width: contentWidth, // Largeur dynamique
// //                   child: Text(
// //                     'Salam alaykoum ! Je suis Monsieur Alif, votre guide dans cette aventure. Je suis ici pour vous aider à découvrir la langue arabe de manière amusante. Prêt à commencer ?',
// //                     textAlign: TextAlign.center,
// //                     style: GoogleFonts.robotoCondensed(
// //                       fontSize: 18,
// //                       color: const Color(0xFFE9717D),
// //                       fontWeight: FontWeight.w600,
// //                     ),
// //                   ),
// //                 ),
// //                 Spacer(), //pousser le bouton vers le bas

// //                 // Bouton Continuer
// //                 Center(
// //                   child: SizedBox(
// //                     width: contentWidth, // Largeur dynamique
// //                     child: ElevatedButton(
// //                       onPressed: () {
// //                         Navigator.push(
// //                           context,
// //                           MaterialPageRoute(builder: (context) => LearningSelectionPage()),
// //                         );
// //                       },
// //                       style: ElevatedButton.styleFrom(
// //                         foregroundColor: Colors.white,
// //                         backgroundColor: Color(0xFFE9717D),
// //                         padding: EdgeInsets.symmetric(vertical: 14),
// //                         textStyle: TextStyle(fontSize: 20),
// //                       ),
// //                       child: Text(
// //                         'Continuer',
// //                         style: GoogleFonts.robotoCondensed(color: Colors.white),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                   SizedBox(height: 10),
// //               ],
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

//ci dessus autre PresentationAlifPage du a une hésitation vis à vis du design
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learnarabickids/pages/pages.dart';
import 'learning_selection.dart';
import 'package:learnarabickids/widgets/typewriter_text.dart';
import 'package:learnarabickids/widgets/triangle_painter.dart';

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
          // largeur pour le texte et les boutons
          double contentWidth =
              constraints.maxWidth > 800 ? 500 : constraints.maxWidth * 0.9;

          return Stack(
            children: [
              // Gif de Monsieur Alif
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 140), // Décalage vers le haut
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/monsieur_alif.gif',
                        height: 270,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 25), // Espacement entre les images
                      Image.asset(
                        'assets/images/monsieur_alif_writing.png',
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),

              // Bulle avec le texte animé et le triangle
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Bulle avec le texte
                      Container(
                        width: contentWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        padding: EdgeInsets.all(16),
                        child: TypewriterText(
                          text:
                              'Salam alaykoum !\n Je suis Monsieur Alif, votre guide dans cette aventure. Je suis ici pour vous aider à découvrir la langue arabe de manière amusante. Prêt à commencer ?',
                          textStyle: GoogleFonts.robotoCondensed(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // Triangle inversé centré sous la bulle, utilisation du widget TriangleWidget
                      TriangleWidget(
                          color: Colors
                              .white), 
                    ],
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(), // Pousse le bouton vers le bas

                    // Bouton "Continuer"
                    SizedBox(
                      width: contentWidth,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LearningSelectionPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFFE9717D),
                          padding: EdgeInsets.symmetric(vertical: 14),
                          textStyle: TextStyle(fontSize: 20),
                        ),
                        child: Text(
                          'Continuer',
                          style:
                              GoogleFonts.robotoCondensed(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 25), // Espacement sous le bouton
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
