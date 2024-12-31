//
//  Country.swift
//  Countries
//
//  Created by Dancilia Harmon   on 12/27/24.
//

import Foundation

struct Country: Decodable {
    let capital: String
    let code: String
    let currency: Currency
    let language: Language
    let name: String
    let region: String
}

struct Currency: Decodable {
    let code: String
    let name: String
    let symbol: String?
}

struct Language: Decodable {
    let code: String?
    let name: String
}
