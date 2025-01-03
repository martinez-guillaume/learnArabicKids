import 'package:flutter/material.dart';
import 'pages/pages.dart'; 

final routes = <String, WidgetBuilder>{
  '/': (context) => HomeScreen(), // Page d'accueil
  '/login': (context) => LoginPage(), 
  '/privacy': (context) => PrivacyPolicyPage(), 
  '/terms': (context) => TermsOfServicePage(),
  '/presentation': (context) => PresentationAlifPage(),
  '/learningselection': (context) => LearningSelectionPage(),
  '/lessonselection': (context) => LessonSelectionPage(),
  '/quiz': (context) => QuizPage(),
  '/lessonarabicletter': (context) =>LetterArabicLessonPage(),
  '/lessonwritingletter': (context) =>LetterWritingLessonPage()
};