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
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let _ = segue.destination as? ViewController else {return}
        helloUserLabel.text = "Hi"
        //helloUserLabel.text = "Hello, \(welcomeVC.defaultUsername)!"
}
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}
