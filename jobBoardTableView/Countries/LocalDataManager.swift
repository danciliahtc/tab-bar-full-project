//
//  LocalDataManager.swift
//  Countries
//
//  Created by Dancilia Harmon   on 12/27/24.
//

import Foundation

struct LocalDataManager {
    
    func readLocalJsonFile(name: String)  -> [Country] {
        
        let bundle = Bundle.main
        
        if let url = bundle.url(forResource:name, withExtension: nil) {
            
            do {
                let data = try Data(contentsOf: url)
                
                let jsonDecoder = JSONDecoder()
                
                let countries = try jsonDecoder.decode([Country].self, from: data)
                print(countries)
                return countries
                
            } catch {
                print(error.localizedDescription)
        
            }
        }
        return []
    }
}
