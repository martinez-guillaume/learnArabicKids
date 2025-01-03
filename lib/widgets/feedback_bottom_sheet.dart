// Animation modale selon que la réponse est correcte ou incorrecte. 
// Ce widget apparaîtra avec une animation depuis le bas de l'écran lorsque l'utilisateur valide une réponse.

import 'package:flutter/material.dart';

class FeedbackBottomSheet extends StatelessWidget {
  final bool isCorrect;
  final int correctAnswer;
  final VoidCallback onContinue;

  const FeedbackBottomSheet({super.key, 
    required this.isCorrect,
    required this.correctAnswer,
    required this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      decoration: BoxDecoration(
        color: isCorrect ? Color(0xFFD7FFB8) : Color(0xFFFFDFE0),
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Icône et texte principal dans une ligne
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                isCorrect ? Icons.check_circle : Icons.cancel,
                color: isCorrect ? Colors.green : Colors.red,
                size: 40,
              ),
              SizedBox(width: 12), 
              Text(
                isCorrect ? 'Super !' : 'Incorrect',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: isCorrect ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
          if (!isCorrect)
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'La bonne réponse était : alif ',// $correctAnswer
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          SizedBox(height: 24),
          // Bouton principal
          ElevatedButton(
            onPressed: onContinue,
            style: ElevatedButton.styleFrom(
              backgroundColor: isCorrect ? Colors.green : Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              isCorrect ? 'Continuer' : "D'accord",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


