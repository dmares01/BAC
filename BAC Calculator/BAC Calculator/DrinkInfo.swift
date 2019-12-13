//
//  DrinkInfo.swift
//  BAC Calculator
//
//  Created by MItch on 12/4/19.
//  Copyright © 2019 Creative Mobile Solutions. All rights reserved.
//

import Foundation


struct DrinkInfo {
    var name: String
    var amountOfAlcohol: Double
    var typeOfAlcohol: String
    var percentOfAlcohol: Double


init(name: String, amountOfAlcohol: Double, typeOfAlcohol: String,
        percentOfAlcohol: Double) {
    self.name = name
    self.amountOfAlcohol = amountOfAlcohol
    self.typeOfAlcohol = typeOfAlcohol
    self.percentOfAlcohol = percentOfAlcohol
}
    
}

var beers: [DrinkInfo] = [
    
    //Light Beers
    DrinkInfo(name: "Bud Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2 ),
    DrinkInfo(name: "Coors Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2 ),
    DrinkInfo(name: "Miller Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2 ),
    DrinkInfo(name: "Natural Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2),
    DrinkInfo(name: "Corona Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.1),
    DrinkInfo(name: "Bud Light Lime",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2),
    DrinkInfo(name: "Busch Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.1),
    DrinkInfo(name: "Bud Light Platinum",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 6),
    DrinkInfo(name: "Keystone Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2),
    DrinkInfo(name: "Heineken Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 3.3),
    DrinkInfo(name: "Michelob Golden Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.1),
    DrinkInfo(name: "Labatt Blue Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4),
    DrinkInfo(name: "Medalla Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2),
    DrinkInfo(name: "Amstel Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2),
    DrinkInfo(name: "Kirin Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 3.31),
    DrinkInfo(name: "Milwaukee's Best Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2),
    DrinkInfo(name: "Michelob Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.1),
    DrinkInfo(name: "Natural Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2),
    
    
    //Lagers, Bocks and Pilsners
    
    DrinkInfo(name: "Budweiser",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 5),
    DrinkInfo(name: "Coors Banquet",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 5),
    DrinkInfo(name: "Michelob Ultra",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2),
    DrinkInfo(name: "Michelob AmberBock",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 5.1),
    DrinkInfo(name: "Heineken",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 5),
    DrinkInfo(name: "Sam Adam's Boston Lager",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 5),
    DrinkInfo(name: "Corona",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.6),
    DrinkInfo(name: "Stella Artois",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 5),
    DrinkInfo(name: "Miller High Life",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.6),
    DrinkInfo(name: "Dos Equis",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2),
    DrinkInfo(name: "Miller Genuine Draft",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.66),
    DrinkInfo(name: "Pabst Blue Ribbon",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.6),
    DrinkInfo(name: "Labatt Blue",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 5),
    
    
    //To be Sorted
    
    DrinkInfo(name: "Blue Moon",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 5.4),
    DrinkInfo(name: "Guinness",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2),
    DrinkInfo(name: "Rolling Rock",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.4),
    DrinkInfo(name: "Red's Apple Ale",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 5),
    DrinkInfo(name: "White Claw",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 5),
    DrinkInfo(name: "Truly",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 5),
    ]
    
var liquors: [DrinkInfo] = [
    //Generic Liquor
    
    DrinkInfo(name: "Vodka",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Gin",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    DrinkInfo(name: "Rum",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 40),
    DrinkInfo(name: "Tequila",amountOfAlcohol: 1, typeOfAlcohol: "Tequila", percentOfAlcohol: 40),
    DrinkInfo(name: "Whiskey",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    
    //Vodka
    
    DrinkInfo(name: "Smirnoff",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Tito's",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Ketel One",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Grey Goose",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Absolut",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Stolichnaya",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Svedka",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "SKYY",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Belvedere",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Ciroc",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Three Olives",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Prairie Organic Vodka",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Hangar 1",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Seagram's Vodka",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "New Amsterdam Vodka",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Pinnacle",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Norseman Vodka",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    DrinkInfo(name: "Tattersall Vodka",amountOfAlcohol: 1, typeOfAlcohol: "Vodka", percentOfAlcohol: 40),
    
    
    //Whiskey
    
    DrinkInfo(name: "Jack Daniel's",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Jameson",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Proper Twelve",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "FireBall",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Jim Beam",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Maker's Mark",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Seagram's 7",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Windsor",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Canadian Club",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Bullet Bournon",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Bullet Rye",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Evan Williams",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Canadian Mist",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Black Velvet",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Johnny Walker Red Label",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Johnny Walker Black Label",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Johnny Walker Green Label",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Johnny Walker Gold Label",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Johnny Walker Blue Label",amountOfAlcohol: 1, typeOfAlcohol: "LiWhiskeyqour", percentOfAlcohol: 40),
    DrinkInfo(name: "Basil Hayden's",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Woodford Reserve",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Laphroaig 10yr",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Macallan 12yr",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Tattersall Whiskey",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Bushmill's",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 40),
    DrinkInfo(name: "Wild Turkey",amountOfAlcohol: 1, typeOfAlcohol: "Whiskey", percentOfAlcohol: 50.5),
    
    
    //Rum
    
    DrinkInfo(name: "Bacardi",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 40),
    DrinkInfo(name: "Captain Morgan",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 40),
    DrinkInfo(name: "Kraken",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 47),
    DrinkInfo(name: "Ron Diaz",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 40),
    DrinkInfo(name: "Salior Jerry",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 46),
    DrinkInfo(name: "Malibu",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 24),
    DrinkInfo(name: "Rum Chata",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 13.8),
    DrinkInfo(name: "Don Q",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 40),
    DrinkInfo(name: "Gosling's Black Seal",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 75.5),
    DrinkInfo(name: "Bacardi 151",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 75.5),
    DrinkInfo(name: "Cruzan",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 40),
    DrinkInfo(name: "Myer's",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 40),
    DrinkInfo(name: "Pyrat",amountOfAlcohol: 1, typeOfAlcohol: "Rum", percentOfAlcohol: 40),
    
    //Gin
    
    
    DrinkInfo(name: "Bombay",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    DrinkInfo(name: "Bombay Sapphire",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    DrinkInfo(name: "Bombay Sapphire East",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    DrinkInfo(name: "Beefeater",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    DrinkInfo(name: "Boodles",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    DrinkInfo(name: "Norseman Gin",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    DrinkInfo(name: "Tattersall Gin",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    DrinkInfo(name: "Burnett's",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    DrinkInfo(name: "Hendrick's",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    DrinkInfo(name: "Koval",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    DrinkInfo(name: "Plymouth",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    DrinkInfo(name: "Seagram's Gin",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    DrinkInfo(name: "Tangueray",amountOfAlcohol: 1, typeOfAlcohol: "Gin", percentOfAlcohol: 40),
    
    
    //Tequila
    
    DrinkInfo(name: "Patron",amountOfAlcohol: 1, typeOfAlcohol: "Tequila", percentOfAlcohol: 40),
    DrinkInfo(name: "Jose Cuervo",amountOfAlcohol: 1, typeOfAlcohol: "Tequila", percentOfAlcohol: 40),
    DrinkInfo(name: "Herradura",amountOfAlcohol: 1, typeOfAlcohol: "Tequila", percentOfAlcohol: 40),
    DrinkInfo(name: "Espolon",amountOfAlcohol: 1, typeOfAlcohol: "Tequila", percentOfAlcohol: 40),
    DrinkInfo(name: "El Jimador",amountOfAlcohol: 1, typeOfAlcohol: "Tequila", percentOfAlcohol: 40),
    DrinkInfo(name: "Don Julio",amountOfAlcohol: 1, typeOfAlcohol: "Tequila", percentOfAlcohol: 40),
    DrinkInfo(name: "Casamigos",amountOfAlcohol: 1, typeOfAlcohol: "Tequila", percentOfAlcohol: 40),
    DrinkInfo(name: "Cabo Wabo",amountOfAlcohol: 1, typeOfAlcohol: "Tequila", percentOfAlcohol: 40),
    DrinkInfo(name: "Avion",amountOfAlcohol: 1, typeOfAlcohol: "Tequila", percentOfAlcohol: 40),
    DrinkInfo(name: "Sauza",amountOfAlcohol: 1, typeOfAlcohol: "Tequila", percentOfAlcohol: 40),
    
    //Liqueurs
    
    DrinkInfo(name: "Ancho Reyes",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 40),
    DrinkInfo(name: "Sambuca",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 38),
    DrinkInfo(name: "Bailey's",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 17),
    DrinkInfo(name: "Campari",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 20.5),
    DrinkInfo(name: "Cointrau",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 40),
    DrinkInfo(name: "Sweet Vermouth",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 20),
    DrinkInfo(name: "Dry Vermouth",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 20),
    DrinkInfo(name: "Disaronno",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 28),
    DrinkInfo(name: "Drambuie",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 40),
    DrinkInfo(name: "Frangeglico",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 24),
    DrinkInfo(name: "Goldschlager",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 44),
    DrinkInfo(name: "Grand Marnier",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 40),
    DrinkInfo(name: "Hpnotiq",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 18),
    DrinkInfo(name: "Jagermeister",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 35),
    DrinkInfo(name: "Kahlua",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 27),
    DrinkInfo(name: "Luxardo",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 32),
    DrinkInfo(name: "Midori",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 23),
    DrinkInfo(name: "Southern Commfort",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 35),
    DrinkInfo(name: "St. Germain",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 20),
    DrinkInfo(name: "Triple Sec",amountOfAlcohol: 1, typeOfAlcohol: "Liqueur", percentOfAlcohol: 30),
    ]
    



var wines: [DrinkInfo] = [
    
    //Wine
    DrinkInfo(name: "Pinot Nior",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 13),
    DrinkInfo(name: "Chardonnay",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 14),
    DrinkInfo(name: "Cabernet Sauvignon",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 14),
    DrinkInfo(name: "Sauvignon Blanc",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 13),
    DrinkInfo(name: "Riesling",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 7.5),
    DrinkInfo(name: "Merlot",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 13),
    DrinkInfo(name: "Syrah",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 14.5),
    DrinkInfo(name: "Gewurztraminer",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 13),
    DrinkInfo(name: "Malbec",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 14),
    DrinkInfo(name: "Pinot Grigio",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 12.5),
    DrinkInfo(name: "Grenache",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 15),
    DrinkInfo(name: "Rose",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 13),
    DrinkInfo(name: "Champagne",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 13),
    DrinkInfo(name: "Zinfandel",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 15),
    DrinkInfo(name: "Brunello",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 13),
    DrinkInfo(name: "Chianti",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 13),
    DrinkInfo(name: "Claret",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 13),
    DrinkInfo(name: "Madeira",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 18),
    DrinkInfo(name: "Mead",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 13),
    DrinkInfo(name: "Moscato",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 6),
    DrinkInfo(name: "Pinot Blanc",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 13),
    DrinkInfo(name: "Pinot Gris",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 13),
    DrinkInfo(name: "Port",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 18),
    DrinkInfo(name: "Dessert",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 14.5),
    DrinkInfo(name: "Sherry",amountOfAlcohol: 5, typeOfAlcohol: "Wine", percentOfAlcohol: 18),
]

var favorites: [DrinkInfo] = []

