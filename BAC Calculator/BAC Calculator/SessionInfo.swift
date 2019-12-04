//
//  SessionInfo.swift
//  BAC Calculator
//
//  Created by MItch on 12/4/19.
//  Copyright © 2019 Creative Mobile Solutions. All rights reserved.
//

import Foundation



struct SessionInfo {
    var drinkingTime: Double
    var sessionStartTime: Date
    var sessionEndDate: Date
    
    init(drinkingTime: Double, sessionStartTime: Date, sessionEndDate: Date) {
        self.drinkingTime = drinkingTime
        self.sessionStartTime = sessionStartTime
        self.sessionEndDate = sessionEndDate
    
    }
}
