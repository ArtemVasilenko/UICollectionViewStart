//
//  DetailViewController.swift
//  UICollectionViewStart
//
//  Created by Артем on 5/28/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView! {
        didSet {
            guard let image = menu?.imagename else { return } //optinal bunding
            self.detailImageView.image = UIImage(named: image)
        }
    }
    
    @IBOutlet weak var detailLabel: UILabel! {
        didSet {
            self.detailLabel.text = menu?.name
        }
    }
    
    var menu: Menu?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
