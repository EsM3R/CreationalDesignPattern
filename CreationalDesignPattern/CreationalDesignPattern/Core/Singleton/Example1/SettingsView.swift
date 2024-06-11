//
//  SettingsView.swift
//  CreationalDesignPattern
//
//  Created by Mehmet Vural on 8.06.2024.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var viewModel = SettingsViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Group{
                    if  viewModel.currentTheme{
                        Color.red
                    }else {
                        Color.blue
                    }
                }
                .ignoresSafeArea()
               
                VStack{
                    Toggle(viewModel.darkMode.title,
                           systemImage: viewModel.darkMode.systemImage,
                           isOn: $viewModel.currentTheme)
    
                }
            }
            .navigationTitle("Settings")
            
        }
    }
}

#Preview {
    SettingsView()
}
