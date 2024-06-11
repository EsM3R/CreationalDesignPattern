//
//  PostModel.swift
//  CreationalDesignPattern
//
//  Created by Mehmet Vural on 8.06.2024.
//

import Foundation

protocol IEntity {
    
}


class PostModel : Codable , Identifiable{
    let userId : Int
    let id : Int
    let title : String
    let body : String
}
