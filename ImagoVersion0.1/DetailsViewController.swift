//
//  DetailsViewController.swift
//  ImagoVersion0.1
//
//  Created by Israel Michel Bernal Martinez on 3/12/16.
//  Copyright © 2016 Israel Michel Bernal Martinez. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var DetailIMage: UIImageView!
    var name : AnyObject?{
        get{
            return NSUserDefaults.standardUserDefaults().objectForKey("name")
        }
    }
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DetailIMage.image = UIImage(named: name as! String)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
