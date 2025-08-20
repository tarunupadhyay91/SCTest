//
//  ViewModel.swift
//  SCTest
//
//  Created by Tarun Upadhyay on 27/05/25.
//
import Foundation
import Combine
class ViewModel:ObservableObject {
    @Published var users:[User] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    
    func fetchUser(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return}
        
        let configuration = URLSessionConfiguration.default
        #if targetEnvironment(simulator)
            configuration.tlsMaximumSupportedProtocolVersion = .TLSv12
        #endif
        let session = URLSession(configuration: configuration)
        
        session.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [User].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case let .failure(error) = completion {
                    print("API Error:\(error)")
                }
            }, receiveValue: { [weak self] users in
               // print("users",users)
                self?.users = users
            }
          )
            .store(in: &cancellables)
    }
    
    func fetchData1()
    {
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return}
//        
//        var cancellable = netWorkManager.Shared.getData(from: url, type: User.self)
//            .sink { completion in
//                switch completion{
//                case .finished:
//                    print("success")
//                case .failure(let error):
//                    print("Error:\(error)"
//                }
//            }, receiveValue: { user in
//                print("fetch user:\(user.name)")
//            }

    }
    
    func graphQLQuery(){
        
    }
}
