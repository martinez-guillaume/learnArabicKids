import 'package:flutter/material.dart';

class TermsOfServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8ACDEA), // Couleur de fond
      appBar: AppBar(
        backgroundColor: Color(0xFF8ACDEA), // Couleur de fond de l'AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity, // Prendre toute la largeur de l'écran
            decoration: BoxDecoration(
              color: Colors.white, // Couleur de fond du conteneur
              borderRadius: BorderRadius.circular(8.0), // Coins arrondis
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // Déplacement de l'ombre
                ),
              ],
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Conditions d\'utilisation',
              
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Veuillez noter que ces Conditions d\'utilisation ont été révisées pour la dernière fois le 18 décembre 2024.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Général',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Les applications (“Applications mobiles, Applications Web”) sont exploités par Learn Arabic Kids, Inc. (“Learn Arabic Kids,” “nous” ou “notre”). L\'accès et l\'utilisation du Service sont soumis aux présentes Conditions d\'utilisation. En accédant ou en utilisant une partie quelconque du Service, vous déclarez avoir lu, compris et accepté d\'être lié par ces Conditions d\'utilisation, y compris toute modification future. Learn Arabic Kids peut modifier, mettre à jour ou changer ces Conditions d\'utilisation. Si nous le faisons, nous publierons un avis indiquant que nous avons apporté des modifications à ces Conditions d\'utilisation sur les Sites Web pendant au moins 7 jours après la publication des modifications et indiquerons en bas des Conditions d\'utilisation la date à laquelle ces conditions ont été révisées pour la dernière fois. Toute révision de ces Conditions d\'utilisation entrera en vigueur à la première des dates suivantes : (i) la fin de cette période de 7 jours ou (ii) la première fois que vous accédez ou utilisez le Service après ces modifications. Si vous n\'acceptez pas de respecter ces Conditions d\'utilisation, vous n\'êtes pas autorisé à utiliser, accéder ou participer au Service.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'VEUILLEZ NOTER QUE CES CONDITIONS D\'UTILISATION CONTIENNENT UNE CLAUSE D\'ARBITRAGE OBLIGATOIRE DES LITIGES QUI EXIGE L\'UTILISATION DE L\'ARBITRAGE SUR UNE BASE INDIVIDUELLE POUR RÉSOUDRE LES LITIGES DANS CERTAINES CIRCONSTANCES, PLUTÔT QUE DES PROCÈS JURYS OU DES ACTIONS COLLECTIVES. VOIR CES CONDITIONS ICI.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Description du Site Web et du Service',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Le Service permet aux utilisateurs d\'accéder et d\'utiliser une variété de services éducatifs, y compris l\'apprentissage ou la pratique de la langue arabe. Learn Arabic Kids peut, à sa seule discrétion et à tout moment, mettre à jour, changer, suspendre, améliorer ou interrompre tout aspect du Service, temporairement ou définitivement.',
              style: TextStyle(fontSize: 16),
             ),
             SizedBox(height: 16),
            Text(
              'Utilisation acceptable des Services',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Vous êtes responsable de votre utilisation des Services et de toute utilisation des Services effectuée avec votre compte. Notre objectif est de créer une expérience utilisateur positive, utile et sûre. Pour promouvoir cet objectif, nous interdisons certains types de comportements qui peuvent être nuisibles à d\'autres utilisateurs ou à nous. Lorsque vous utilisez les Services, vous devez respecter nos Directives communautaires.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Conditions supplémentaires',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Certains de nos Services ont des conditions et modalités supplémentaires (“Conditions supplémentaires”). Lorsque des Conditions supplémentaires s\'appliquent à un Service, nous les mettrons à votre disposition pour que vous puissiez les lire lors de votre utilisation de ce Service. En utilisant ce Service, vous acceptez les Conditions supplémentaires.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Inscription',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Dans le cadre de l\'inscription et de l\'utilisation du Service, vous acceptez (i) de fournir des informations précises, actuelles et complètes vous concernant et/ou votre organisation, comme demandé par Learn Arabic Kids ; (ii) de maintenir la confidentialité de votre mot de passe et d\'autres informations liées à la sécurité de votre compte ; (iii) de maintenir et de mettre à jour rapidement toute information d\'inscription que vous fournissez à Learn Arabic Kids, afin de garder ces informations précises, actuelles et complètes ; et (iv) d\'être entièrement responsable de toute utilisation de votre compte et de toute action qui se produit par le biais de votre compte.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Vos déclarations et garanties',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Vous déclarez et garantissez à Learn Arabic Kids que votre accès et votre utilisation du Service seront conformes à ces Conditions d\'utilisation et à toutes les lois, règles et réglementations applicables de France, des États-Unis et de toute autre juridiction pertinente, y compris celles concernant la conduite en ligne ou le contenu acceptable, et celles concernant la transmission de données ou d\'informations exportées et/ou de la juridiction dans laquelle vous résidez. Vous déclarez également et garantissez que vous avez créé ou possédez tout matériel que vous soumettez via le Service (y compris les Matériaux d\'activité et le Contenu) et que vous avez le droit, le cas échéant, de nous accorder une licence pour utiliser ce matériel comme indiqué ci-dessus ou le droit de nous céder ce matériel comme indiqué ci-dessous.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Vous déclarez et garantissez que vous n\'êtes pas : (1) organisé en vertu des lois d\'un pays ou d\'un territoire qui fait l\'objet de sanctions économiques ou commerciales complètes (c\'est-à-dire un embargo) ; (2) identifié sur une liste de personnes interdites ou restreintes, ou (3) autrement la cible de sanctions.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Soumission de Contenu',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'En tant que condition de soumission de toute évaluation, avis, information, données, texte, photographies, clips audio, œuvres audiovisuelles, traductions, cartes mémoire ou autres matériaux sur le Service (collectivement, “Contenu”), vous accordez par la présente à Learn Arabic Kids une licence entièrement payée, libre de redevances, perpétuelle, irrévocable, mondiale, non exclusive, transférable et sous-licenciable pour utiliser, reproduire, copier, adapter, modifier, fusionner, distribuer, afficher publiquement et créer des œuvres dérivées à partir du Contenu ; incorporer le Contenu dans d\'autres œuvres ; et sous-licencier le Contenu à travers plusieurs niveaux. Vous reconnaissez que cette licence ne peut pas être résiliée par vous une fois que votre Contenu est soumis au Service. Vous déclarez que vous possédez ou avez sécurisé tous les droits légaux nécessaires pour que le Contenu soumis par vous soit utilisé par vous, Learn Arabic Kids et d\'autres comme décrit et autrement envisagé dans ces Conditions d\'utilisation. Vous comprenez que d\'autres utilisateurs auront accès au Contenu et qu\'aucun d\'eux ni Learn Arabic Kids n\'a d\'obligation envers vous ou quiconque d\'autre de maintenir la confidentialité du Contenu.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Vous ne téléchargerez, n\'afficherez, ni ne fournirez autrement sur ou à travers le Service tout Contenu qui : (i) est diffamatoire, abusif, menaçant, harcelant, haineux, offensant, ou viole autrement toute loi ou enfreint les droits de tout tiers (y compris les droits d\'auteur, de marque, de vie privée, de publicité ou d\'autres droits personnels ou de propriété) ; (ii) qui, à l\'unique jugement de Learn Arabic Kids, est inacceptable, restreint ou empêche toute autre personne d\'utiliser le Service, ou peut exposer Learn Arabic Kids ou ses utilisateurs à tout dommage ou responsabilité de quelque nature que ce soit ; ou (iii) qui viole les Directives communautaires de Learn Arabic Kids.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Indemnisation de Learn Arabic Kids',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Vous acceptez de défendre, d\'indemniser et de dégager de toute responsabilité Learn Arabic Kids et ses directeurs, dirigeants, employés, entrepreneurs, agents, fournisseurs, concédants de licence, successeurs et ayants droit, de et contre toutes pertes, réclamations, causes d\'action, obligations, responsabilités et dommages de toute nature, y compris les frais d\'avocat, découlant de ou liés à votre accès ou utilisation du Service, toute fausse déclaration faite à notre égard (dans le cadre de ces Conditions d\'utilisation ou autrement), votre violation de l\'une de ces Conditions d\'utilisation, ou toute réclamation selon laquelle toute traduction que nous vous fournissons est inexacte, inappropriée ou défectueuse de quelque manière que ce soit.',
              style: TextStyle(fontSize: 16),
            ),
                        SizedBox(height: 16),
            Text(
              'Avis concernant les réclamations de violations de droits d\'auteur et agent pour les avis',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Si vous êtes propriétaire de droits d\'auteur et que vous avez des raisons de croire de bonne foi que tout matériel disponible via le Service enfreint vos droits d\'auteur, vous pouvez soumettre une notification de violation de droits d\'auteur à Learn Arabic Kids conformément à la Loi sur le droit d\'auteur du millénaire numérique en nous fournissant les informations suivantes par écrit :',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              '• Une signature électronique ou physique du propriétaire des droits d\'auteur ou de la personne autorisée à agir au nom du propriétaire de l\'intérêt en droits d\'auteur ;\n'
              '• Une description de l\'œuvre protégée par des droits d\'auteur que vous prétendez avoir été enfreinte ;\n'
              '• Une description de l\'emplacement du matériel que vous prétendez enfreindre sur le Service, avec suffisamment de détails pour que nous puissions le trouver sur le Service ;\n'
              '• Votre adresse, numéro de téléphone et adresse e-mail ;\n'
              '• Une déclaration de votre part indiquant que vous avez des raisons de croire de bonne foi que l\'utilisation contestée n\'est pas autorisée par le propriétaire des droits d\'auteur, son agent ou la loi ; et\n'
              '• Une déclaration de votre part, faite sous peine de parjure, que les informations ci-dessus dans votre avis sont exactes et que vous êtes le propriétaire des droits d\'auteur ou êtes autorisé à agir au nom du propriétaire des droits d\'auteur.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Veuillez consulter votre conseiller juridique pour plus de détails. L\'agent de Learn Arabic Kids pour les avis de réclamations de violations de droits d\'auteur peut être contacté comme suit :',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Par courrier : Rue Juliette Demory, Batiment D2 13140 Miramas\n'
              'Par e-mail : guillaume1313@laposte.net',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Pour plus de clarté, seuls les avis de violations de droits d\'auteur doivent être envoyés à notre agent des droits d\'auteur. Vous reconnaissez que si vous ne respectez pas toutes les exigences de cette section, votre avis peut ne pas être valide.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Si vous croyez que le contenu qui a été supprimé (ou auquel l\'accès a été désactivé) n\'enfreint pas, ou que vous avez l\'autorisation du propriétaire des droits d\'auteur, de l\'agent du propriétaire des droits d\'auteur, ou en vertu de la loi, de publier et d\'utiliser ce contenu, vous pouvez soumettre un contre-avis à l\'adresse indiquée ci-dessus contenant les informations suivantes :',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              '• Votre signature physique ou électronique ;\n'
              '• Identification du contenu qui a été supprimé ou auquel l\'accès a été désactivé et l\'emplacement où le contenu apparaissait avant qu\'il ne soit supprimé ou désactivé ;\n'
              '• Une déclaration que vous avez des raisons de croire de bonne foi que le contenu a été supprimé ou désactivé à la suite d\'une erreur ou d\'une identification erronée du contenu ; et\n'
              '• Votre nom, adresse physique, numéro de téléphone et adresse e-mail, une déclaration que vous consentez à la juridiction du tribunal fédéral dans le district judiciaire dans lequel vous résidez, ou si vous résidez en dehors des États-Unis, alors du tribunal fédéral à Pittsburgh, en Pennsylvanie, et une déclaration que vous accepterez la signification des actes de procédure de la personne qui a fourni la notification.',
            ),
            SizedBox(height: 16),
            Text(
              'Résolution des litiges et arbitrage',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'TOUTE DISPUTE OU RÉCLAMATION RELATIVE À CES CONDITIONS D\'UTILISATION OU AU SERVICE ET RECHERCHANT UN RECOUVREMENT MONÉTAIRE SERA RÉSOLUE PAR ARBITRAGE OBLIGATOIRE SUR UNE BASE INDIVIDUELLE CONFORMÉMENT À CETTE SECTION.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Avant d\'initier tout arbitrage, la partie cherchant l\'arbitrage (“Demandeur”) doit d\'abord envoyer un avis écrit de réclamation à l\'autre partie (“Répondant”) par e-mail ou par courrier certifié. Cet avis doit contenir le nom, l\'adresse et les coordonnées du Demandeur ; l\'identité de l\'avocat (le cas échéant) ; la nature et la base de la réclamation ; et le recours spécifique demandé. Dans les trente (30) jours suivant la réception de l\'avis, les parties doivent participer à au moins une conférence de règlement de bonne foi par téléphone ou par vidéoconférence. Une partie individuelle doit être présente personnellement à cette conférence de règlement, et une partie entité doit être présente à cette conférence de règlement par l\'intermédiaire d\'un employé ayant le pouvoir de règlement, bien que les deux parties puissent également amener un avocat. L\'arbitrage ne sera initié que si aucun règlement ne peut être atteint lors de cette conférence de règlement.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Si vous ne souhaitez pas arbitrer les litiges avec Learn Arabic Kids et que vous êtes un individu, vous pouvez vous retirer de cet accord d\'arbitrage en envoyant un e-mail à guillaume1313@laposte.net dans les 30 jours suivant le jour où vous accédez ou utilisez pour la première fois le Service.',
              style: TextStyle(fontSize: 16),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}