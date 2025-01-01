// import 'dart:async';
// import 'package:flutter/material.dart';

// class TypewriterText extends StatefulWidget {
//   final String text;
//   final Duration speed; 
//   final TextStyle? textStyle; // Nouveau paramètre pour le style
//   final TextAlign? textAlign; // Nouveau paramètre pour l'alignement du texte

//   // Constructeur mis à jour
//   const TypewriterText({
//     Key? key,
//     required this.text,
//     this.speed = const Duration(milliseconds: 50),
//     this.textStyle,
//     this.textAlign,
//   }) : super(key: key);

//   @override
//   _TypewriterTextState createState() => _TypewriterTextState();
// }

// class _TypewriterTextState extends State<TypewriterText> {
//   String currentText = ""; // Texte affiché au fur et à mesure
//   int letterIndex = 0; // Index de la lettre en cours d'affichage

//   // Fonction pour afficher les lettres une par une
//   void displayLetters() {
//     Timer.periodic(widget.speed, (timer) {
//       if (letterIndex < widget.text.length) {
//         setState(() {
//           currentText += widget.text[letterIndex]; 
//         });
//         letterIndex++;
//       } else {
//         timer.cancel(); // Arrête l'animation quand toutes les lettres sont affichées
//       }
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     displayLetters(); // Démarre l'animation dès que le widget est initialisé
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       currentText, // Texte qui se met à jour au fur et à mesure
//       style: widget.textStyle ?? TextStyle(
//         fontSize: 18,
//         fontWeight: FontWeight.bold,
//         color: Colors.black,
//       ),
//       textAlign: widget.textAlign ?? TextAlign.center,
//     );
//   }
// }


// en attente de vaildation vis à vis du design possible changements
import 'dart:async';
import 'package:flutter/material.dart';

class TypewriterText extends StatefulWidget {
  final String text;
  final Duration speed; 
  final TextStyle? textStyle; 
  final TextAlign? textAlign; 
  final Color backgroundColor; 
  final double borderRadius; 
  final EdgeInsetsGeometry padding; 

  // Constructeur
  const TypewriterText({
    Key? key,
    required this.text,
    this.speed = const Duration(milliseconds: 45),
    this.textStyle,
    this.textAlign,
    this.backgroundColor = Colors.white, // Fond blanc par défaut
    this.borderRadius = 12.0, // Bord arrondi par défaut
    this.padding = const EdgeInsets.all(0),
  }) : super(key: key);

  @override
  _TypewriterTextState createState() => _TypewriterTextState();
}

class _TypewriterTextState extends State<TypewriterText> {
  String currentText = ""; // Texte affiché au fur et à mesure
  int letterIndex = 0; // Index de la lettre en cours d'affichage

  // Fonction pour afficher les lettres une par une
  void displayLetters() {
    Timer.periodic(widget.speed, (timer) {
      if (letterIndex < widget.text.length) {
        setState(() {
          currentText += widget.text[letterIndex]; 
        });
        letterIndex++;
      } else {
        timer.cancel(); // Arrête l'animation quand toutes les lettres sont affichées
      }
    });
  }

  @override
  void initState() {
    super.initState();
    displayLetters(); // Démarre l'animation dès que le widget est initialisé
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding, // Espacement autour du texte
      decoration: BoxDecoration(
        color: widget.backgroundColor, // Couleur de fond
        borderRadius: BorderRadius.circular(widget.borderRadius), // Bords arrondis
      ),
      child: Text(
        currentText, // Texte qui se met à jour au fur et à mesure
        style: widget.textStyle ?? TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        textAlign: widget.textAlign ?? TextAlign.center,
      ),
    );
  }
}

