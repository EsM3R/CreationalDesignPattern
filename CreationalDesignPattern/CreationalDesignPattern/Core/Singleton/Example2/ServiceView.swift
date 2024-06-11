//
//  ServiceView.swift
//  CreationalDesignPattern
//
//  Created by Mehmet Vural on 8.06.2024.
//

import SwiftUI

struct ServiceView: View {
    
    @State private var viewModel = ServiceViewModel()
    
    var body: some View {
        ScrollView {
            ForEach(viewModel.posts) { post in
                Text(post.title)
                    .frame(maxWidth: .infinity , alignment: .leading)
            }
        }
    }
}

#Preview {
    ServiceView()
}
