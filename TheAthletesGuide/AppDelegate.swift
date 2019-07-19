//
//  AppDelegate.swift
//  The Athlete's Guide
//
//  Created by Developer on 5/16/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseFirestore

let db = Firestore.firestore()
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
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
var locationCategories: [String: String] = [
    "00": "Uncategorized",
    "01": "",
    "15": "Corporate Housing",
    "16": "Furniture Rental",
    "17": "Realtor",
    "18": "Gym",
    "19": "Doctor",
    "20": "Shopping",
    "21": "Amusement Park",
    "22": "Veterinarian",
    "23": "Boarding",
    "25": "Handyman",
    "26": "Where to Live",
    "42": "Urologist",
    "43": "Pediatrician",
    "44": "Pediatric Dermatologist",
    "45": "Cosmetic Dermatologist",
    "47": "Dermatologist",
    "48": "OB/GYN",
    "49": "Pediatric Dentist",
    "50": "Dentist",
    "51": "Internist",
    "52": "Chiropractor",
    "53": "Masseuse",
    "54": "ENT/Otorhinolaryngologist",
    "55": "Cardiologist",
    "56": "Gastroenterologist",
    "57": "Internal Medicine",
    "58": "Oncologist",
    "59": "Optometrist",
    "61": "Physical Therapist",
    "62": "Pulmonologist",
    "63": "Hospital",
    "64": "Allergist",
    "66": "Orthodontist",
    "67": "Eye Doctor",
    "68": "Neurologist",
    "69": "Pediatric ENT",
    "70": "Plastic Surgeon",
    "71": "Fertility Specialist",
    "72": "Maternal-Fetal Specialist",
    "74": "Restaurant",
    "75": "Salon/Spa",
    "76": "Nightlife",
    "77": "Babysitter/Nanny",
    "78": "Movers",
    "80": "Kids Activity",
    "81": "Church",
    "82": "Dog Sitter/Walker",
    "84": "Orthopedist",
    "87": "Event Planner",
    "88": "Park",
    "89": "Car/Auto Service",
    "90": "Airport",
    "91": "Away Team Hotel",
    "92": "City",
    "93": "Building",
    "94": "Acupuncturist",
    "96": "Photographer",
    "97": "Tour"
]
