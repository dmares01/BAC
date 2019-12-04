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
    DrinkInfo(name: "Natural Light",amountOfAlcohol: 12, typeOfAlcohol: "Beer", percentOfAlcohol: 4.2),
    
]

    

