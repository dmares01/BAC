//
//  CalculateBAC.swift
//  BAC Calculator
//
//  Created by MItch on 11/26/19.
//  Copyright © 2019 Creative Mobile Solutions. All rights reserved.
//

import Foundation


//general formula = (#oz * %alcohol * .075)/(body weight(lbs) - hours drinking * .015)
// Widmark formula = (((#oz * %alcohol *.789)/(body weight(lbs) * 454 * r) *100)- (hours drinking * .015)
                        // r = 0.55 for women and 0.68 for men and 0.61 for other

func calculateGenForm(user: UserInfo, drink: DrinkInfo) -> Double{
    
    (amountOfAlcohol * percentOfAlcohol * 0.075) / (bodyWeight - drinkingTime * 0.015)
    
}

func calculateWidmarkForm(user: UserInfo, drink: DrinkInfo) -> Double{
    
    
    
    (((amountOfAlcohol * percentOfAlcohol * 0.789)/(bodyWeight * 454 * r) *100)- (drinkingTime * .015))
 
}


func calculateBAC(){
    
}


//var finalBAC = 
