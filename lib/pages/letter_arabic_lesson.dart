import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class LetterArabicLessonPage extends StatefulWidget {
  const LetterArabicLessonPage({super.key});

  @override
  _LetterArabicLessonPageState createState() => _LetterArabicLessonPageState();
}

class _LetterArabicLessonPageState extends State<LetterArabicLessonPage> {
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _playAudioOnLoad(); // Joue l'audio au chargement
  }

  @override
  void dispose() {
    _audioPlayer.dispose(); // Libère les ressources
    super.dispose();
  }

  /// Lecture de l'audio au chargement
  Future<void> _playAudioOnLoad() async {
    await _audioPlayer.play(AssetSource('audios/alif.mp3'));
  }

  /// Relance l'audio lorsqu'on appuie sur le bouton
  Future<void> _replayAudio() async {
    await _audioPlayer.stop(); // Arrête tout audio en cours
    await _audioPlayer.play(AssetSource('audios/alif.mp3')); // Rejoue l'audio
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
          bool isWide = constraints.maxWidth > 600;
          double horizontalPadding = isWide ? constraints.maxWidth * 0.2 : 16.0;
          double horizontalPaddingText = isWide ? constraints.maxWidth * 0.2 : 32.0;

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

              SizedBox(height: 100),

              // Texte "Voici la lettre Alif..."
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPaddingText),
                child: Text(
                  'Voici la lettre Alif , elle se prononce Alif , c\'est la première lettre de l\'alphabet qui se compose de 28 lettres.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(height: 20),

              // Bouton pour rejouer l'audio
              Center(
                child: IconButton(
                  icon: Icon(Icons.volume_up, size: 36, color: Colors.black),
                  onPressed: _replayAudio,
                ),
              ),

              Spacer(),

              // Bouton Continuer
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: ElevatedButton(
                  onPressed: () {
                    // Ajoutez ici la logique pour la validation
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE9717D), // Couleur du bouton
                    padding: EdgeInsets.symmetric(vertical: 14),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text(
                    'Continuer',
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
