//
//  WelcomeViewController.swift
//  LogIn
//
//  Created by Vladimir Izmaylov on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var helloUserLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloUserLabel.text = "Hello, User!"
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}
