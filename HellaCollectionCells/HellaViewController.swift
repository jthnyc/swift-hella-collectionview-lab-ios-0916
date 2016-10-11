//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var fibArray = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fibArray = arrayWithFibonacciSequenceToIndex(index: 80)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "basicCell", for: indexPath)
        
        
        
        if fibArray.contains(indexPath.item){
            cell.backgroundColor = UIColor.purple
        } else {
            cell.backgroundColor = UIColor.yellow
        }
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showNumber" {
            let destinationViewController = segue.destination as! HellaDetailViewController
            
            if let arrayOfIndexPathsChosen = collectionView.indexPathsForSelectedItems {
                let chosenIndexPath = arrayOfIndexPathsChosen[0]
                let chosenRow = chosenIndexPath.row
                let chosenNumber = String(chosenRow)
                destinationViewController.chosenNumber = String(chosenNumber)
                
                
                
            }
            
//            let numberTapped = String(collectionView.indexPathsForSelectedItems![0].row)
        }
    }
    
    func arrayWithFibonacciSequenceToIndex (index: Int) -> [Int] {
        var fibArray = [0, 1]
        
        if index < 2 {
            return(fibArray)
        }
        
        for _ in 2...index {
            let newNum = fibArray[fibArray.count-1] + fibArray[fibArray.count-2]
            fibArray.append(newNum)
        }
        
        return fibArray
    }
}


