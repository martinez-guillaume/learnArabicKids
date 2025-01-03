import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class LetterWritingLessonPage extends StatefulWidget {
  const LetterWritingLessonPage({super.key});

  @override
  _LetterWritingLessonPageState createState() =>
      _LetterWritingLessonPageState();
}

class _LetterWritingLessonPageState extends State<LetterWritingLessonPage> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    // Initialisation du contrôleur vidéo avec le chemin de la vidéo
    _videoPlayerController = VideoPlayerController.asset('assets/videos/videotest.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    // Initialisation du contrôleur Chewie
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      showControls: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8ACDEA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8ACDEA),
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Détection de l'appareil (ordinateur, tablette, téléphone)
          double maxWidth;
          double height;

          if (constraints.maxWidth > 1200) {
            // Grand écran (ordinateur)
            maxWidth = constraints.maxWidth * 0.4; // 50% de la largeur
          } else if (constraints.maxWidth > 800) {
            // Écran moyen (tablette)
            maxWidth = constraints.maxWidth * 0.5; // 70% de la largeur
          } else {
            // Petit écran (téléphone)
            maxWidth = MediaQuery.of(context).size.width * 0.85; // 85% de la largeur
          }

          // Calcul de la hauteur selon le ratio vidéo
          double aspectRatio = _videoPlayerController.value.aspectRatio;
          height = maxWidth / aspectRatio;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),

                            // Titre "Vidéo"
              const Center(
                child: Text(
                  'Vidéo',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 20),


              // Affichage de la vidéo ou d'un loader pendant le chargement
              Center(
                child: _videoPlayerController.value.isInitialized
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: SizedBox(
                          height: height,
                          width: maxWidth,
                          child: Chewie(
                            controller: _chewieController,
                          ),
                        ),
                      )
                    : Container(
                        height: 185,
                        width: maxWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
              ),

              const SizedBox(height: 70),

              // Texte explicatif
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth > 800
                      ? constraints.maxWidth * 0.2
                      : 32.0,
                ),
                child: const Text(
                  'Voici une vidéo comment on écrit la lettre Alif. Entraîne-toi à refaire pareil à la maison en respectant bien les lignes horizontales. Fais cet exercice sur 2/3 lignes.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

              const Spacer(),

              // Bouton Continuer
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth > 800
                      ? constraints.maxWidth * 0.2
                      : 16.0,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Ajoutez ici la logique pour la validation
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE9717D),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text(
                    'Continuer',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          );
        },
      ),
    );
  }
}
