//
//  ViewController.swift
//  CricketersCollectionView
//
//  Created by Alivelu Ravula on 4/13/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
   
    
    var playersArry = [["image-name":"sachin","name":"Sachin","matches":"100","Highest":"400"],
                       ["image-name":"dhoni","name":"Dhoni","matches":"100","Highest":"400"],
                       ["image-name":"virat","name":"Virat","matches":"100","Highest":"400"],
                       ["image-name":"jadeja","name":"Jadeja","matches":"100","Highest":"400"],
                       ["image-name":"suresh","name":"Suresh","matches":"100","Highest":"400"],
                       ["image-name":"dhawan","name":"Dhawan","matches":"100","Highest":"400"],
                       ["image-name":"rohit","name":"Rohith","matches":"100","Highest":"400"],
                       ["image-name":"gautam","name":"Goutham","matches":"100","Highest":"400"],
                       ["image-name":"rahane","name":"Rahane","matches":"100","Highest":"400"],
                       ["image-name":"ashwin","name":"Ashwin","matches":"100","Highest":"400"],
                       ["image-name":"yuvaraj","name":"Yuvaraj","matches":"100","Highest":"400"],

                       ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return playersArry.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "CellCollection", for: indexPath) as! CellCollection
        
        cell.img.image=UIImage(named: self.playersArry[indexPath.row]["image-name"]!)
        cell.nameLbl.text="Name:"+self.playersArry[indexPath.row]["name"]!
        cell.matLbl.text="Matches:"+self.playersArry[indexPath.row]["matches"]!
        cell.highLbl.text="Highest:"+self.playersArry[indexPath.row]["Highest"]!
        
        
        return cell
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

