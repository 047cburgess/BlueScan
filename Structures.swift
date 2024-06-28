//
//  Structures.swift
//  ApplicationFishy
//
//  Created by Apprenant 129 on 24/06/2024.
//

import Foundation

struct Articles: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
    var subtitle: String
    var descriptionSuite: String
}

var actu1 = Articles(image: "info2", title: "Surpêche, comment préserver l’océan de notre appétit ?", description: "Quand on parle des liens entre notre assiette et l’océan, il y a un sujet qui paraît évident : la pêche...", subtitle: "sss", descriptionSuite: "fdff")
var actu2 = Articles(image: "info3", title: "Manque d’eau, comment limiter les dégâts ?", description: "Après 32 jours sans pluie, les averses sont revenues la semaine dernière… mais elles n’auront pas fait long feu. Et je vous le dis d’emblée : même si j’ai...", subtitle: "sss", descriptionSuite: "fdff")
var actu3 = Articles(image: "info4", title: "Elévation du niveau de la mer, quoi faire?", description: "Digues, murets, surélévation des voies de circulation… À La Rochelle, on ne compte plus les constructions qui visent à prévenir les risques liés...", subtitle: "sss", descriptionSuite: "fdff")
var actu4 = Articles(image: "info5", title: "Tournage de l’assiette, journal de bord", description: "Mais maintenant, ça y est ! L’aventure a bel et bien commencé. Mardi 1er mars, on quittait La Rochelle avec Julien, le co-fondateur et réalisateur de...", subtitle: "sss", descriptionSuite: "fdff")
var actu5 = Articles(image: "info5", title: "Tournage de l’assiette, journal de bord", description: "Mais maintenant, ça y est ! L’aventure a bel et bien commencé. Mardi 1er mars, on quittait La Rochelle avec Julien, le co-fondateur et réalisateur de...", subtitle: "sss", descriptionSuite: "fdff")
var info1 = Articles(
    image: "ocean", title: "Comment limiter l'acidification des océans?",
    description: "Quand il s’agit de préservation de l’océan, c’est à terre que (presque) tout se joue. C’est tellement contre-intuitif qu’on le répète encore et encore. Et pour mieux saisir les enjeux, il y a un concept clé à connaître : l’acidification de l’océan. On vous explique.",
    subtitle: "Le problème. \r🍋 L'acidification des océans",
    descriptionSuite: """
Vous vous souvenez de vos cours de physique-chimie du collège ? Pour moi, c’est déjà loin, alors je me suis dit qu’un petit rappel ne ferait pas de mal ! Toutes les solutions aqueuses ont un pH ou potentiel hydrogène. Celui-ci sert à mesurer l’acidité ou la basicité d’une solution. Le pH peut aller de 0 à 14. À 7, le pH est neutre. Ce qui est au-dessus de 7 est basique et ce qui est en dessous de 7 est acide. Maintenant qu’on a mis les choses à plat, place au constat sur le pH de l’océan. Entre 1850 et 2015, le pH moyen en surface est passé de 8,2 à 8,1. -0,1. L’évolution peut paraître insignifiante, mais les apparences sont trompeuses ! En fait, l’échelle du pH est logarithmique. En clair, ça signifie qu’en moins de 200 ans, on a une hausse de 30% de l’acidité de l’océan. C’est énorme !
""")
var info2 = Articles(image: "containers", title: "Transport de marchandises", description: "XXXX", subtitle: "sss", descriptionSuite: "fdff")
var info3 = Articles(image: "dauphin", title: "Surpêche, comment préserver l'océan?", description: "XXXX", subtitle: "sss", descriptionSuite: "fdff")
var info4 = Articles(image: "barque", title: "XXX", description: "XXXX", subtitle: "sss", descriptionSuite: "fdff")



struct Recipe: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var title: String
    var time: String
    var servings: Int
    var rating: Int
    var ingredients: [Ingredient]
    var directions: [String]
}

var recipe1 = Recipe(
    image: "recipe1",
    title: "Blanquette de lotte",
    time: "20 mins",
    servings: 6,
    rating: 4,
    ingredients: [
        Ingredient(name: "Flour", quantity: "2 cups"),
        Ingredient(name: "Lotte", quantity: "1 filet"),
        Ingredient(name: "Sugar", quantity: "1 tsp")
    ],
    directions: [
        "Mix the thermos",
        "Have a poo",
        "Have another poo",
        "Make a drink",
    ]
)
var recipe2 = Recipe(
    image: "recipe2",
    title: "Parmentier de dorade",
    time: "30 mins",
    servings: 6,
    rating: 4,
    ingredients: [
        Ingredient(name: "Chocolate", quantity: "300g"),
        Ingredient(name: "Flour", quantity: "400g")
    ],
    directions: [
        "Mix the thermos",
        "Have a poo"
    ]
)
var recipe3 = Recipe(
    image: "recipe3",
    title: "Ceviche de crevettes",
    time: "25 mins",
    servings: 6,
    rating: 4,
    ingredients: [
        Ingredient(name: "Chocolate", quantity: "300g"),
        Ingredient(name: "flour", quantity: "400g")
    ],
    directions: [
        "Mix the thermos",
        "Have a poo"
    ]
)
var recipe4 = Recipe(
    image: "recipe4",
    title: "Raviole de tacaud",
    time: "35 mins",
    servings: 6,
    rating: 4,
    ingredients: [
        Ingredient(name: "Chocolate", quantity: "300g"),
        Ingredient(name: "Flour", quantity: "400g")
    ],
    directions: [
        "Mix the thermos",
        "Have a poo"
    ]
)


struct Ingredient: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let quantity: String
}
