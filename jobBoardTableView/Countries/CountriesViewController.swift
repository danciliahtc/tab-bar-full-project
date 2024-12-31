//
//  ViewController.swift
//  Countries
//
//  Created by Dancilia Harmon   on 12/27/24.
//

import UIKit

class CountriesViewController: UIViewController, UICollectionViewDataSource {
    
    
    var countries: [Country] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let localDataManager = LocalDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        
       countries = localDataManager.readLocalJsonFile(name: "countries.json")
            self.collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CountryCell", for: indexPath) as! CountryCell
        let country = countries[indexPath.row]
        
        cell.configure(with: country)
        return cell
    }
}

