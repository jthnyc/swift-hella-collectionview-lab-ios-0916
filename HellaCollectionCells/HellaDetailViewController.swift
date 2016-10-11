//
//  HellaDetailViewController.swift
//  HellaCollectionCells
//
//  Created by Joanna Tzu-Hsuan Huang on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {

    var chosenNumber: String!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.numberLabel.text = chosenNumber
 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

   
}
