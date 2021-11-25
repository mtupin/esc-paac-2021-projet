# Les violences sexuelles en France.
Ce répertoire contient le projet d'analyse de l'ampleur du phénomène des violences sexuelles qui se produisent en France.

## Abstract

« La lutte contre toutes les violences faites aux femmes est un combat culturel et un enjeu de civilisation. » (Emmanuel Macron, 2017) 

En France, la lutte contre les violences sexistes et sexuelles fait l’objet d’un engagement continu à la fois de la part du gouvernement et des associations.
Les violences sexuelles désignent tous les actes sexuels commis avec violence, menace, contrainte ou surprise. Elles constituent une atteinte à l'intégrité physique des personnes et sont, de ce fait, punies par la loi (Titre II, chapitre II du Code Pénal). 

## Question de recherche

Les violences conjugales ont augmentées pendant le confinement en France, puisque 80% d'entre elles se produisaient à l'intérieur du domicile. On aimerait savoir ce qu'il en ai des violences sexuelles de manière général. Ainsi, le projet vise à répondre à la question suivante :

- Comment les violences sexuelles reportées ont évoluées pendant les périodes de confinements français ?

## Base de données

Le projet se base sur les infractions sur les crimes et délits enregistrés par les services de gendarmerie et de police françaises. Les données, sous format Excel, sont accessibles en ligne sur le site data.gouv.fr, la plateforme ouverte des données publiques françaises.

Le set de données recense tous les types de crimes et délits, elle n'est pas spécifique aux crimes et délits sexuels. Les infractions correspondantes aux violences sexuelles sont les suivantes : 
-	viols sur des majeur(e)s
-	viols sur des mineur(e)s
-	harcèlements sexuels et autres agressions sexuelles contre des majeur(e)s
-	harcèlements sexuels et autres agressions sexuelles contre des mineur(e)s
-	atteintes sexuelles

Les évènements sont agrégés par mois de l'année, et couvrent janvier 2000 à septembre 2021. 

## Méthode

Le projet apporte une contribution dans le traitement des données, puisqu'il comporte une dimension d'automatisation, qui permettra notamment un gain de temps pour les données des années à venir. Cette automatisation du traitement de données consiste en la préparation d'un flux de traitement sur Tableau Prep. Ce flux peut ensuite être appliqué aux bases de données qui ont la même structure que les données brutes (fichier data).
