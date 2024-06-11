//
//  ServiceManager.swift
//  CreationalDesignPattern
//
//  Created by Mehmet Vural on 8.06.2024.
//

import Foundation


protocol IServiceManager {
    
    func execute<T : Codable >(_ urlString : String , expectingType : T.Type) async throws-> T
}


class ServiceManager : IServiceManager {

    
    static let shared = ServiceManager()

    private init() {}
    
    
    func execute<T : Codable>(_ urlString: String, expectingType type : T.Type) async throws -> T {
        
        guard let url = URL(string: urlString) else {throw URLError(.badURL)}
        
        
        do {
            let (data , _ ) = try await URLSession.shared.data(from: url)
            let response = try  JSONDecoder().decode(type.self, from: data)
            return response
        }catch{
            throw error
        }
    }
    
}
