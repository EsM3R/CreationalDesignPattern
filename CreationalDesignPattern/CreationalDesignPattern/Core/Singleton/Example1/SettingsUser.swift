//
//  SettingsUser.swift
//  CreationalDesignPattern
//
//  Created by Mehmet Vural on 8.06.2024.
//

import Foundation



class SettingsUser {
    
    
    enum Theme {
        case light
        case dark
    }
    
    static let shared = SettingsUser()
    
    private init () {}
    
    var  userTheme : Theme = .light
    
    
    
    
}
