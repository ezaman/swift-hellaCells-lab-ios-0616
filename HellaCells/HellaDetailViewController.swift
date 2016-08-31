//
//  HellaDetailViewController.swift
//  HellaCells
//
//  Created by Ehsan Zaman on 8/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {
    @IBOutlet weak var number: UILabel!

    var numberText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
       
        number.text = numberText
        
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
