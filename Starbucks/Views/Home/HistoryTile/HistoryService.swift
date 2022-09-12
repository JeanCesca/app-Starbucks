//
//  HistoryService.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 02/09/22.
//

import Foundation

enum ServiceError: Error {
    case server
    case parsing
}

struct HistoryService {
    
    static let shared = HistoryService()
    
    func fetchTransactions(completion: @escaping (Result<[Transaction], ServiceError>) -> Void) {
                        
            guard let url = URL(string: "https://uwyg0quc7d.execute-api.us-west-2.amazonaws.com/prod/history") else { return }
            
            URLSession.shared.dataTask(with: url) { data, _, error in
                
                guard let data = data, error == nil else {
                    completion(.failure(ServiceError.parsing))
                    return }
                
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                do {
                    let result = try decoder.decode(History.self, from: data)
                    DispatchQueue.main.async {
                        completion(.success(result.transactions))
                    }
                } catch {
                    DispatchQueue.main.async {
                        completion(.failure(ServiceError.server))
                        print(error)
                    }
                }
            }.resume()
    }
}
