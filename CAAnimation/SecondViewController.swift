//
//  SecondViewController.swift
//  CAAnimation
//
//  Created by mackbook on 26/01/2019.
//  Copyright © 2019 mackbook. All rights reserved.
//

import UIKit

enum TransitionStatus {
    case Start
    case End
}

typealias Transition = (TransitionStatus) -> Void
class SecondViewController: UIViewController {

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

    @IBAction func didTappedSecond(_ sender: UIButton) {
        
        self.performTransaction { (status) in
            
            switch status {
            case .End:
                print("Done")
                
            case .Start:
                self.navigationController?.popViewController(animated: true)
                
            }
        }
    }
    
    fileprivate func performTransaction(transition: @escaping Transition) {
        CATransaction.begin()
        transition(.Start)
        CATransaction.setCompletionBlock({
            transition(.End)
        })
        CATransaction.commit()
        
    }

}
