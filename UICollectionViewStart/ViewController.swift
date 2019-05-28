//
//  ViewController.swift
//  UICollectionViewStart
//
//  Created by Артем on 5/28/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var itemMenuArray: [Menu] = {
        var menu = Menu(name: "Fanta", imagename: "fanta")
        var menu2 = Menu(name: "Cola", imagename: "cola")
        var menu3 = Menu(name: "Cola", imagename: "cola")
        return [menu, menu2, menu3]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myCollectionView.dataSource = self
        self.myCollectionView.delegate = self
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemMenuArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? MyCollectionViewCell {
            
            cell.menu = itemMenuArray[indexPath.row]
            
            
          return cell
        }
        return UICollectionViewCell()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
}

