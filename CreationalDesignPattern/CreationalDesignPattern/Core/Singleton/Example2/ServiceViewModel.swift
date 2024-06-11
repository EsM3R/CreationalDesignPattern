//
//  ServiceViewModel.swift
//  CreationalDesignPattern
//
//  Created by Mehmet Vural on 8.06.2024.
//

import Foundation


@Observable
class ServiceViewModel {
    
    var posts : [PostModel] = []
    
    init(){
        self.fetchPost()
    }
    
    
    func fetchPost(){
        let url : String = "https://jsonplaceholder.typicode.com/posts"
        Task {
            do {
                let response = try await ServiceManager.shared.execute(url, expectingType: [PostModel].self)
                self.posts.append(contentsOf: response)
            }catch {
                print(error.localizedDescription)
            }
            
        }
    }
}
