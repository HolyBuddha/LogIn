//
//  WelcomeViewController.swift
//  LogIn
//
//  Created by Vladimir Izmaylov on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var helloUserLabel: UILabel!
    
    var helloUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloUserLabel.text = helloUser
        
    }
    
    
//    @IBAction func logOutButtonPressed() {
//        dismiss(animated: true)
//    }
}
