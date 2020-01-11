//
//  AppDelegate.swift
//  BAC Calculator
//
//  Created by Drew Mares on 11/22/19.
//  Copyright © 2019 Creative Mobile Solutions. All rights reserved.
//

import UIKit
let storedUserData = UserDefaults.standard
var drinkIndices: [[Int]] = [[],[],[]]
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        if storedUserData.array(forKey: "DrinkIndices") != nil{
            let array: [[Int]] = storedUserData.array(forKey: "DrinkIndices") as! [[Int]]
            print(array)
            print(favorites)
            
            //Drink indices are changed because arrays are sorted before being displayed
            for drinkArray in 0...2{
                var drinkIndex: Int = 0;
                while(drinkIndex < array[drinkArray].count){
                    switch drinkArray{
                    case 1:
                        favorites[1].append(liquors[drinkIndex])
                        drinkIndices[1].append(drinkIndex)
                        break;
                    case 2:
                        favorites[2].append(wines[drinkIndex])
                        drinkIndices[2].append(drinkIndex)
                        break;
                    default:
                        favorites[0].append(beers[drinkIndex])
                        drinkIndices[0].append(drinkIndex)
                        break;
                    }
                    drinkIndex += 1
                }
            }
            print(favorites)
            
        }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
        
        //storedUserData.set(favorites, forKey: "FavoriteArray")
        //storedUserData.set(recents, forKey: "RecentsArray")
        //store array of ints that are indexes of drinks
        
        if finalUserData.name != "User"{
            /*
             storing multiple users will require the use of an external database
             One possible solution is realm. Might be worth checking out
             Try to find a free database if possible, but not very likely
            */
            storedUserData.set(finalUserData.name, forKey: "Name")
            storedUserData.set(finalUserData.bodyWeight, forKey: "BodyWeight")
            storedUserData.set(finalUserData.age, forKey: "Age")
            storedUserData.set(finalUserData.sex, forKey: "Sex")
            storedUserData.set(drinkIndices, forKey: "DrinkIndices")
        }
        else{
            storedUserData.removeObject(forKey: "Name")
            storedUserData.removeObject(forKey: "BodyWeight")
            storedUserData.removeObject(forKey: "Age")
            storedUserData.removeObject(forKey: "Sex")
            storedUserData.removeObject(forKey: "DrinkIndices")
        }
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

