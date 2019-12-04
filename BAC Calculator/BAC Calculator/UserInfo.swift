//
//  UserInfo.swift
//  BAC Calculator
//
//  Created by MItch on 12/4/19.
//  Copyright © 2019 Creative Mobile Solutions. All rights reserved.
//

import Foundation


struct UserInfo {
    var name: String
    var bodyWeight: Double
    var sex: Int
    var age: Double
    
    
    init(name: String, bodyWeight: Double, sex: Int, age: Double) {
        self.name = name
        self.bodyWeight = bodyWeight
        self.sex = sex
        self.age = age
    }
    
    
    
}



