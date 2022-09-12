//
//  HistoryTransaction.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 02/09/22.
//

import Foundation

struct History: Codable {
    let transactions: [Transaction]
}

struct Transaction: Codable {
    let id: Int
    let type: String
    let amount: String
    let date: Date
    
    enum CodingKeys: String, CodingKey {
        case id
        case type
        case amount
        case date = "processed_at"
    }
}
