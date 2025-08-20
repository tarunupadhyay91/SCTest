//
//  networkManager.swift
//  SCTest
//
//  Created by Tarun Upadhyay on 27/05/25.
//
import Foundation
import Combine

class netWorkManager {
    static let Shared = netWorkManager()
    func getData<T:Decodable>(from url:URL,type:T.Type)-> AnyPublisher<T,Error>{
        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
