import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

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
              'Politique de Confidentialité',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Veuillez noter que la Politique de Confidentialité a été révisée pour la dernière fois le 28 décembre 2024.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Général',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Chez Learn Arabic Kids, nous tenons à cœur vos informations personnelles, c\'est pourquoi nous avons préparé cette Politique de Confidentialité pour expliquer comment nous les collectons, utilisons et partageons. Cette Politique de Confidentialité s\'applique aux applications et services associés de Learn Arabic Kids (“Service”). En utilisant le Service, vous acceptez la collecte, l\'utilisation et le partage de vos informations personnelles par Learn Arabic Kids conformément aux termes de cette Politique de Confidentialité.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Veuillez noter que Learn Arabic Kids teste et améliore constamment les fonctionnalités de notre produit. Toute fonctionnalité discutée dans cette Politique de Confidentialité peut ne pas être disponible pour tous les utilisateurs ou dans toutes les juridictions.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Informations que nous collectons',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Lorsque vous utilisez le Service, Learn Arabic Kids peut collecter les informations personnelles suivantes vous concernant.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'a. Inscription au compte\n'
              'Pour vous inscrire à un compte Learn Arabic Kids, vous pouvez nous fournir votre adresse e-mail.'
              'Vous pouvez également vous inscrire à un compte Learn Arabic Kids en utilisant certains identifiants sociaux, tels que Google et Facebook ( à venir ). Si vous vous inscrivez à Learn Arabic Kids en utilisant un identifiant social, Learn Arabic Kids peut recevoir des informations vous concernant de votre fournisseur d\'identifiant social, y compris votre adresse e-mail et vos contacts.\n\n'
              'Vous pouvez gérer votre compte Learn Arabic Kids et vos identifiants sociaux depuis vos Paramètres.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'b. Page de profil et contenu généré par l\'utilisateur\n'
              'Après vous être inscrit à votre compte Learn Arabic Kids, une page de profil sera créée pour vous (“Profil”). Votre Profil sera alimenté par les informations que vous soumettez, telles que votre nom d\'utilisateur, biographie. Votre numéro de téléphone et adresse e-mail ne sont pas inclus dans votre Profil public et ne sont pas considérés comme du Contenu Généré par l\'Utilisateur au sens de cette Politique de Confidentialité.\n\n'
              'Votre Profil inclura également des informations sur vos progrès d\'apprentissage, telles que vos statistiques d\'apprentissage et vos réalisations.\n\n'
              'Learn Arabic Kids peut scanner ou examiner tout Contenu Généré par l\'Utilisateur, ou partager votre Contenu Généré par l\'Utilisateur avec un fournisseur de services de modération de contenu tiers, pour garantir le respect de nos Directives Communautaires. Learn Arabic Kids peut restreindre ou supprimer le Contenu Généré par l\'Utilisateur s\'il viole nos Directives Communautaires ou pour toute autre raison.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'h. Cookies\n'
              'Lorsque vous accédez au site Web de Learn Arabic Kids, nous stockons certaines données de votre navigateur à l\'aide de cookies. Un cookie est un morceau de données stocké sur l\'ordinateur de l\'utilisateur lié à des données sur l\'utilisateur. Nous utilisons des cookies d\'ID de session pour confirmer que les utilisateurs sont connectés. Si vous ne souhaitez pas que vos données soient collectées par des cookies, il existe une procédure simple dans la plupart des navigateurs qui vous permet de refuser ou d\'accepter la fonctionnalité des cookies. Cependant, les cookies peuvent être nécessaires pour vous fournir certaines fonctionnalités disponibles sur le site Web (par exemple, des informations personnalisées). Vous pouvez trouver plus d\'informations sur les cookies et comment les gérer ici.\n\n'
              'Vous pouvez voir une liste de tous les cookies utilisés chez Learn Arabic Kids sur notre page Liste des Cookies et gérer vos cookies dans le Centre de Préférences de Confidentialité. Veuillez noter que nos cookies incluent des Cookies de Ciblage de Google, Facebook, Amazon et d\'autres entreprises, que ces entreprises peuvent utiliser pour suivre vos activités sur plusieurs sites Web afin de vous fournir des publicités personnalisées.\n\n'
              'i. Google Analytics\n'
              'Nous utilisons Google Analytics, qui est un outil d\'analyse Web qui nous aide à comprendre comment les utilisateurs interagissent avec notre site Web. Comme de nombreux services, Google Analytics utilise des cookies de première partie pour suivre les interactions des utilisateurs, comme dans notre cas, où ils sont utilisés pour collecter des informations sur la façon dont les utilisateurs utilisent notre site. Ces informations sont utilisées pour compiler des rapports et nous aider à améliorer notre site. Ces rapports divulguent les tendances du site Web sans identifier les visiteurs individuels. Vous pouvez vous désinscrire de Google Analytics en installant l\'extension de navigateur de Google disponible ici.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Comment nous traitons vos informations',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Learn Arabic Kids peut traiter vos informations personnelles selon les bases légales suivantes : fournir des produits ou services que vous demandez, promouvoir les intérêts légitimes de Learn Arabic Kids, se conformer aux obligations légales, et avec votre consentement. En particulier, Learn Arabic Kids peut traiter et partager vos informations personnelles de la manière suivante :\n\n'
              'a. Fournir et améliorer le Service\n'
              'Learn Arabic Kids traitera vos informations personnelles pour fournir et améliorer le Service. Par exemple, nous utiliserons les informations que vous fournissez pour maintenir votre Profil et vos progrès d\'apprentissage, personnaliser le contenu d\'apprentissage, détecter et corriger les bogues, effectuer des recherches et vous fournir un service client.\n\n'
              'Learn Arabic Kids peut partager des informations personnelles avec des tiers qui nous aident à fournir ou améliorer le Service, y compris des fournisseurs d\'hébergement tels qu\'Amazon Web Services, des fournisseurs de moteurs de recherche tels que Google, des fournisseurs d\'analytique tels que Crashlytics, des fournisseurs de support tels que ZenDesk, et des processeurs de paiement tels que Stripe. Learn Arabic Kids peut également partager vos informations avec des fournisseurs tiers qui soutiennent des fonctionnalités de produit telles que l\'IA, la reconnaissance vocale et la modération de contenu.\n\n'
              'b. Communication avec vous\n'
              'Learn Arabic Kids utilisera l\'adresse e-mail ou le numéro de téléphone que vous fournissez pour vous envoyer les types de messages suivants :\n\n'
              'Messages essentiels pour soutenir le fonctionnement du Service.\n'
              'Messages pour soutenir la méthodologie d\'enseignement de Learn Arabic Kids et renforcer votre apprentissage, tels que des conseils d\'apprentissage, des rappels de pratique et des rapports de progression.\n'
              'Annonces concernant des changements apportés au Service ou aux produits.\n'
              'Annonces de nouveaux produits, services, offres ou opportunités de recherche de Learn Arabic Kids.\n'
              'c. Conformité à la loi et prévention des activités nuisibles\n'
              'Learn Arabic Kids peut traiter et partager des informations personnelles si nécessaire pour se conformer à des demandes légales, telles que des assignations à comparaître ou des ordonnances judiciaires. Learn Arabic Kids peut partager des informations personnelles lorsque nous croyons qu\'il est nécessaire de se conformer à la loi, de protéger nos intérêts ou notre propriété, de prévenir la fraude ou d\'autres activités illégales, d\'aider les forces de l\'ordre ou de prévenir un préjudice imminent. Cela peut inclure le partage d\'informations avec d\'autres entreprises, avocats, agents ou agences gouvernementales.\n\n'
              'd. Publicité personnalisée\n'
              'Learn Arabic Kids peut traiter et partager vos informations personnelles dans le but de vous fournir de la publicité personnalisée. Pour fournir de la publicité personnalisée, nous travaillons avec divers réseaux publicitaires tiers, des fournisseurs de services d\'analytique marketing et des entreprises d\'analyse de sites Web, tels que Google, Facebook, Oath et Unity. Ces fournisseurs de services publicitaires tiers collectent et utilisent des informations personnelles concernant vos visites et votre utilisation du Service, ainsi que d\'autres sites Web, afin de vous servir des publicités et du contenu adaptés à vos préférences et intérêts probables, et de mieux comprendre l\'efficacité des publicités. Des données démographiques agrégées et des données d\'intérêt seront également utilisées à des fins de recherche de marché.\n\n'
              'Vous pouvez vous désinscrire de la réception de publicités personnalisées dans vos Paramètres. Vous pouvez également être en mesure de vous désinscrire de la réception de publicités personnalisées de la part d\'annonceurs et de réseaux publicitaires qui sont membres de l\'Initiative de Publicité Réseau ou qui suivent les Principes d\'Auto-Régulation de la DAA pour la Publicité Comportementale en Ligne en utilisant leurs outils de désinscription respectifs. De plus, vos appareils mobiles peuvent offrir des paramètres qui vous permettent de faire des choix concernant la collecte, l\'utilisation et le transfert d\'informations d\'applications mobiles pour des publicités personnalisées (par exemple, l\'ID de Publicité d\'Apple iOS et l\'ID de Publicité de Google Android). Les utilisateurs dans certaines juridictions (y compris l\'Union Européenne et le Royaume-Uni) sont désinscrits de la publicité personnalisée par défaut, mais peuvent s\'inscrire.\n\n'
              'Veuillez noter que se désinscrire de la publicité personnalisée ne prévient pas l\'affichage de toutes les publicités pour vous. Certains abonnements à Learn Arabic Kids peuvent offrir une expérience sans publicité.\n\n'
              'e. Informations anonymes\n'
              'Learn Arabic Kids peut traiter des informations agrégées, dépersonnalisées ou autrement anonymes à toute fin. Ces informations ne sont pas considérées comme des informations personnelles.\n\n'
              'Vos droits en tant que sujet de données\n'
              'Vous avez également les droits suivants concernant les informations personnelles que nous détenons à votre sujet, en plus de tout autre droit requis par la loi applicable :\n\n'
              'Savoir quelles informations personnelles nous avons collectées à votre sujet.\n'
              'Accéder à une copie des informations personnelles que nous détenons à votre sujet.\n'
              'Savoir quelles informations personnelles vous concernant nous avons partagées avec des tiers.\n'
              'Vous opposer au partage de vos informations personnelles avec des tiers.\n'
              'Vous opposer à notre traitement de vos informations personnelles.\n'
              'Demander que nous limitions notre utilisation de vos informations personnelles sensibles à ce qui est nécessaire pour fournir les services que vous avez demandés.\n'
              'Ne pas être discriminé pour avoir exercé vos droits en tant que sujet de données.\n'
              'Demander que nous supprimions toute information personnelle que nous avons collectée à votre sujet.\n'
              'Demander que nous corrigions toute information personnelle inexacte vous concernant.\n'
              'Exporter les informations personnelles que vous avez fournies à Learn Arabic Kids dans un format pouvant être transféré électroniquement à un tiers.\n'
              'Retirer tout consentement que vous nous avez précédemment donné pour traiter vos informations personnelles.\n'
              'Supprimer votre compte Learn Arabic Kids en suivant les instructions dans le Service.\n'
              'Vous pouvez mettre à jour ou corriger vos informations, et exercer certains droits de désinscription, dans votre page de Paramètres. Vous pouvez demander à accéder ou à effacer vos informations personnelles au Duolingo Data Vault. Pour faire une autre demande liée à la confidentialité, veuillez envoyer un e-mail à privacy@learnarabickids.com.\n\n'
              'Veuillez noter que ces droits ne sont pas absolus et Learn Arabic Kids peut refuser des demandes d\'exercice des droits des sujets de données s\'il existe une raison légitime, comme si nous ne pouvons pas authentifier votre identité, si la demande pourrait violer les droits d\'un tiers ou la loi applicable, ou si la demande pourrait interférer avec un service Learn Arabic Kids ou nous empêcher de fournir un service que vous avez demandé.\n\n'
              'Vous pouvez également avoir le droit de déposer une plainte auprès de l\'autorité de protection des données compétente. Voici une liste des autorités de protection des données de l\'EEE, et un lien vers l\'autorité de protection des données du Royaume-Uni.\n\n'
              'Conservation des données\n'
              'Learn Arabic Kids conservera généralement vos informations personnelles jusqu\'à ce que votre compte soit supprimé. Cependant, Learn Arabic Kids peut conserver certaines informations plus longtemps si nécessaire pour fournir notre Service, défendre nos intérêts légitimes ou ceux de tiers, se conformer aux exigences légales, résoudre ou défendre des litiges, enquêter sur des abus ou des perturbations du Service, ou exécuter des accords. Nous pouvons également conserver des données anonymes indéfiniment.\n\n'
              'Utilisateurs enfants\n'
              'Nous savons que les enfants méritent une protection supplémentaire de la vie privée. C\'est pourquoi nous traitons les Utilisateurs Enfants (c’est-à-dire les utilisateurs de moins de 13 ans ou un autre âge de consentement numérique dans leur pays) différemment pour garantir que leurs parents sont en contrôle et que nous ne collectons que le strict minimum d\'informations dont nous avons besoin pour faire fonctionner Learn Arabic Kids.\n\n'
              'Les Utilisateurs Enfants sont autorisés à créer un compte Learn Arabic Kids, mais nous leur demandons de fournir l\'adresse e-mail de leur parent au lieu de la leur, et de s\'inscrire en utilisant un nom d\'utilisateur qui n\'est pas lié à leur vrai nom.\n\n'
              'Après qu\'un Utilisateur Enfant se soit inscrit, nous enverrons un e-mail à l\'adresse e-mail du parent concernant les pratiques de confidentialité de Learn Arabic Kids concernant les Utilisateurs Enfants, y compris quelles informations personnelles nous collectons et comment nous utilisons, partageons et protégeons ces informations personnelles. L\'e-mail explique également comment les parents peuvent demander à accéder, modifier ou supprimer des informations concernant leur enfant.\n\n'
              'Tous les Utilisateurs Enfants reçoivent le traitement spécial suivant lors de l\'utilisation de Learn Arabic Kids (“Restrictions d\'Âge”) :\n\n'
              'Les publicités sont non personnalisées et définies sur un contenu adapté aux familles.\n'
              'Les Utilisateurs Enfants ne peuvent pas soumettre leur vrai nom.\n'
              'Les données vocales des Utilisateurs Enfants ne sont pas partagées avec Learn Arabic Kids à des fins d\'amélioration du produit.\n'              'Les Utilisateurs Enfants dans certaines juridictions (y compris les États-Unis, l’Union Européenne, le Royaume-Uni, la Norvège, le Canada, l’Australie, la Nouvelle-Zélande, Singapour, la Corée du Sud et le Japon) sont soumis à ces Restrictions d\'Âge supplémentaires :\n\n'
              'Les Utilisateurs Enfants ne peuvent pas soumettre de Contenu Généré par l\'Utilisateur à Learn Arabic Kids.\n'
              'Les Utilisateurs Enfants ne peuvent pas fournir à Learn Arabic Kids leur vrai nom, photo de profil, emplacement, informations de contact ou autres informations personnelles.\n'
              'Les Utilisateurs Enfants ne peuvent pas lier leur compte Learn Arabic Kids à leurs informations de contact ou à leurs comptes sur d\'autres services en ligne.\n'
              'Les Profils des Utilisateurs Enfants ne contiennent aucune information personnelle qui pourrait être utilisée pour identifier ou contacter publiquement l’enfant, mais seulement le nom d\'utilisateur de l’Utilisateur Enfant, un avatar créé à partir d’options prédéfinies, une liste d’amis sur Learn Arabic Kids, et des informations sur leurs progrès d’apprentissage sur Learn Arabic Kids.\n'
              'Les Utilisateurs Enfants ne verront que des avatars au lieu de photos de profil dans leur classement.\n'
              'Les parents peuvent supprimer les Restrictions d’Âge de leur enfant. De plus, les parents peuvent signaler tout abus à guillaume1313@laposte.net.\n\n'
              'En ce qui concerne la Loi sur la Protection de la Vie Privée des Enfants en Ligne, Learn Arabic Kids collecte des informations personnelles auprès des enfants de moins de 13 ans uniquement dans le but d’effectuer des opérations internes du Service. Si nous découvrons que nous avons collecté sans le savoir des informations personnelles supplémentaires auprès de ces enfants, nous les supprimerons. Si vous pensez que c’est le cas, veuillez nous contacter à guillaume1313@laposte.net.\n\n'
              'Learn Arabic Kids ABC\n'
              'Learn Arabic Kids ABC est conçu pour être configuré par les parents et vous demandera de fournir l’âge de votre enfant. Ces informations sont conservées de manière anonyme à des fins de recherche et ne sont pas liées à vos informations personnelles ou à celles de votre enfant de quelque manière que ce soit. Learn Arabic Kids ABC ne collecte aucune information personnelle auprès des enfants.\n\n'
              'En tant que parent, vous avez également la possibilité de fournir votre adresse e-mail afin que Learn Arabic Kids puisse vous envoyer des informations sur les mises à jour de produits et vous demander de participer à des recherches sur les produits. Si vous fournissez votre adresse e-mail, vous pouvez vous désinscrire à tout moment en envoyant un e-mail à literacy-feedback@learnarabickids.com ou en cliquant sur le lien de désinscription dans tout e-mail de Learn Arabic Kids ABC. Vos données Learn Arabic Kids ABC sont sauvegardées dans iCloud d’Apple, ce qui vous permet de synchroniser et de restaurer les données sur un autre appareil Apple.\n\n'
              'Ne pas Suivre\n'
              'Le Service n’est pas conçu pour répondre aux signaux “ne pas suivre” envoyés par certains navigateurs.\n\n'
              'Liens vers des Sites Web Tiers\n'
              'Le Service peut contenir des liens vers d’autres sites Web. Learn Arabic Kids n’est pas responsable du contenu ou des pratiques de confidentialité d’autres sites Web, y compris toute information personnelle ou financière collectée par des processeurs de paiement tiers. Nous encourageons les utilisateurs à être conscients des politiques de confidentialité des autres sites Web qu’ils visitent. Cette Politique de Confidentialité s’applique uniquement aux informations collectées par Learn Arabic Kids. Chaque fois que vous cliquez sur un lien (y compris des bannières publicitaires) ou soumettez vos informations personnelles à un site Web tiers, vous serez soumis aux politiques de confidentialité de ce tiers.\n\n'
              'Mises à Jour de la Politique de Confidentialité\n'
              'Nous pouvons mettre à jour notre Politique de Confidentialité pour refléter des changements dans nos pratiques d’information. Si nous faisons cela et que les changements sont matériels, nous publierons un avis indiquant que nous avons apporté des modifications à cette Politique de Confidentialité sur le Site Web pendant au moins sept (7) jours avant que les changements ne soient effectués, et nous indiquerons la date à laquelle ces termes ont été révisés pour la dernière fois au bas de la Politique de Confidentialité. Toute révision de cette Politique de Confidentialité entrera en vigueur à la fin de cette période de sept (7) jours.\n\n'
              'Transfert de Données\n'
              'Learn Arabic Kids est basé en France et traite des données en France, qui peuvent ne pas fournir des niveaux de protection des données équivalents à ceux de votre juridiction d’origine.\n\n'
              'Cadre de Protection des'
              'Données (DPF)\n'
              'Learn Arabic Kids se conforme au Cadre de Protection des Données UE-États-Unis (EU-U.S. DPF), à l\'Extension du Royaume-Uni au Cadre de Protection des Données UE-États-Unis, et au Cadre de Protection des Données Suisse-États-Unis (Swiss-U.S. DPF) tel que défini par le Département du Commerce des États-Unis. Learn Arabic Kids a certifié auprès du Département du Commerce des États-Unis qu\'il adhère aux Principes du Cadre de Protection des Données UE-États-Unis (EU-U.S. DPF Principles) concernant le traitement des données personnelles reçues de l\'Union Européenne en s\'appuyant sur le Cadre de Protection des Données UE-États-Unis et du Royaume-Uni (et Gibraltar) en s\'appuyant sur l\'Extension du Royaume-Uni au Cadre de Protection des Données UE-États-Unis. Learn Arabic Kids a certifié auprès du Département du Commerce des États-Unis qu\'il adhère aux Principes du Cadre de Protection des Données Suisse-États-Unis (Swiss-U.S. DPF Principles) concernant le traitement des données personnelles reçues de Suisse en s\'appuyant sur le Cadre de Protection des Données Suisse-États-Unis. En cas de conflit entre les termes de cette politique de confidentialité et les Principes du Cadre de Protection des Données UE-États-Unis et/ou les Principes du Cadre de Protection des Données Suisse-États-Unis, les Principes prévaudront. Pour en savoir plus sur le programme du Cadre de Protection des Données (DPF) et pour consulter notre certification, veuillez visiter https://www.dataprivacyframework.gov/.\n\n'
              'Conformément au Cadre de Protection des Données UE-États-Unis et à l\'Extension du Royaume-Uni au Cadre de Protection des Données UE-États-Unis et au Cadre de Protection des Données Suisse-États-Unis, Learn Arabic Kids s\'engage à résoudre les plaintes liées aux Principes du DPF concernant notre collecte et notre utilisation de vos informations personnelles. Les individus de l\'UE, du Royaume-Uni et de Suisse ayant des questions ou des plaintes concernant notre traitement des données personnelles reçues en s\'appuyant sur le Cadre de Protection des Données UE-États-Unis et l\'Extension du Royaume-Uni au Cadre de Protection des Données UE-États-Unis et le Cadre de Protection des Données Suisse-États-Unis doivent d\'abord contacter Learn Arabic Kids à : privacy@learnarabickids.com.\n\n'
              'Conformément au Cadre de Protection des Données UE-États-Unis et à l\'Extension du Royaume-Uni au Cadre de Protection des Données UE-États-Unis et au Cadre de Protection des Données Suisse-États-Unis, Learn Arabic Kids s\'engage à coopérer et à se conformer respectivement aux conseils du panel établi par les autorités de protection des données de l\'UE (DPAs) et le Bureau du Commissaire à l\'Information du Royaume-Uni (ICO) et l\'Autorité de Régulation de Gibraltar (GRA) et le Commissaire Fédéral à la Protection des Données et à l\'Information de Suisse (FDPIC) concernant les plaintes non résolues concernant notre traitement des données personnelles reçues en s\'appuyant sur le Cadre de Protection des Données UE-États-Unis et l\'Extension du Royaume-Uni au Cadre de Protection des Données UE-États-Unis et le Cadre de Protection des Données Suisse-États-Unis. Les individus ont la possibilité, sous certaines conditions, d\'invoquer l\'arbitrage contraignant pour les plaintes concernant la conformité au DPF non résolues par l\'un des autres mécanismes du DPF. Voir l\'Annexe I des Principes du DPF pour plus d\'informations.\n\n'
              'Learn Arabic Kids est responsable du traitement des informations personnelles qu\'il reçoit selon les Principes du DPF et les transfère ensuite à un tiers agissant en tant qu\'agent en son nom. Learn Arabic Kids restera responsable selon les Principes du DPF si son agent traite ces informations personnelles d\'une manière incompatible avec les Principes du DPF, à moins que Learn Arabic Kids ne prouve qu\'il n\'est pas responsable de l\'événement à l\'origine du dommage.\n\n'
              'La Federal Trade Commission a compétence sur la conformité de Learn Arabic Kids au Cadre de Protection des Données UE-États-Unis (EU-U.S. DPF) et à l\'Extension du Royaume-Uni au Cadre de Protection des Données UE-États-Unis, et au Cadre de Protection des Données Suisse-États-Unis (Swiss-U.S. DPF). Learn Arabic Kids peut divulguer des informations personnelles en réponse à des demandes légales des autorités publiques américaines, y compris pour répondre à des exigences de sécurité nationale ou d\'application de la loi.\n\n'
              'Termes Supplémentaires dans Certaines Juridictions\n'
              'Dans certaines juridictions, le Service peut être soumis à des politiques de confidentialité supplémentaires ou à des lois locales. Pour les utilisateurs dans ces juridictions, les politiques de confidentialité supplémentaires applicables et les lois locales prévaudront sur cette Politique de Confidentialité dans la mesure où elles sont en conflit.\n\n'
              'Contactez-nous\n'
              'Learn Arabic Kids, Inc. est le contrôleur de vos données aux fins du Règlement Général sur la Protection des Données (“RGPD”) et de toute législation locale pertinente. Le siège de Learn Arabic Kids est situé en France à :\n\n'
              'Learn Arabic Kids, Inc.\n'
              'Rue Juliette Demory Batiment D2 .\n'
              '13140 Miramas\n'
              'France\n'
              'Pour toutes les demandes de confidentialité des données et toute question ou préoccupation que vous avez concernant cette Politique de Confidentialité, veuillez contacter notre Responsable de la Protection des Données à guillaume1313@laposte.net.\n\n'
              'Dernière révision le 28 décembre 2024',
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