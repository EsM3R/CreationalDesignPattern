//
//  SettingsViewModel.swift
//  CreationalDesignPattern
//
//  Created by Mehmet Vural on 8.06.2024.
//

import Foundation

enum Settings : CaseIterable{
    
    case darkMode
    
    var title : String {
        
        switch self{
            
        case .darkMode: "Dark Mode"
        }
    }
    
    var systemImage : String {
        switch self{
            
        case .darkMode: "circle.lefthalf.filled"
        }
    }
}

@Observable
class SettingsViewModel {
    
    var darkMode : Settings = .darkMode
    var currentTheme : Bool = SettingsUser.shared.userTheme == SettingsUser.Theme.light ? true : false
    
    
    
    
   
}
