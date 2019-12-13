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

func calculateGenForm(user: UserInfo, drink: DrinkInfo, session: SessionInfo) -> Double{
    let genFormBAC: Double;
    genFormBAC = ((drink.amountOfAlcohol * drink.percentOfAlcohol * 0.075)/user.bodyWeight - (session.drinkingTime * 0.015))
    if genFormBAC < 0 {
        return 0.0
    }
    else if genFormBAC > 1{
        return 1.0
    }
    //print(genFormBAC)
    return genFormBAC
}

func calculateWidmarkForm(user: UserInfo, drink: DrinkInfo, session: SessionInfo) -> Double{
    var r: Double = 0.0;
    switch user.sex {
    case 0:
        r = 0.68
        break
    case 1:
        r = 0.55
        break
    default:
        r = 0.61
        break
    }
    let widmarkBAC: Double;
    widmarkBAC = (((drink.amountOfAlcohol * drink.percentOfAlcohol * 0.789)/(user.bodyWeight * 454 * r) * 100) - (session.drinkingTime * 0.015))
    if widmarkBAC < 0 {
        return 0.0;
    }
    else if widmarkBAC > 1{
        return 1.0
    }
    return widmarkBAC;
}

func calculateBAC(){
    
}


//var finalBAC = 
