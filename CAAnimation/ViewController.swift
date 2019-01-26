//
//  ViewController.swift
//  CAAnimation
//
//  Created by mackbook on 26/01/2019.
//  Copyright © 2019 mackbook. All rights reserved.
//

// one of logical concepts just to enhance the existing approach.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func didtappedTransation(_ sender: UIButton) {
        
        
        if self.navigationController != nil {
            
            let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewControllerId") as! SecondViewController
            self.navigationController?.pushViewController(secondVC, animated: true)
            
        }
        
    }
}

