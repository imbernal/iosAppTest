//
//  ViewController.swift
//  ImagoVersion0.1
//
//  Created by Israel Michel Bernal Martinez on 3/12/16.
//  Copyright © 2016 Israel Michel Bernal Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate {

    var imageList:[String] = []
    
    var name: AnyObject?{
        get {
            return NSUserDefaults.standardUserDefaults().objectForKey("name")
        }
        set{
            NSUserDefaults.standardUserDefaults().setObject(newValue, forKey: "name")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageList = ["1.jpg" , "2.jpg" , "3.jpg" , "4.jpg" , "5.jpg"]
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  imageList.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! ColleCollectionViewCell
        
        cell.ImageView.image = UIImage(named: imageList[indexPath.row])
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        name = imageList[indexPath.row]
    }

}

