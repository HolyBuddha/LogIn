//
//  ViewController.swift
//  LogIn
//
//  Created by Vladimir Izmaylov on 25.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func forgotNameButtonPressed() {
        showAlert(with: "Forgot your name???😩", and: "Your name is User")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Forgot your pass???🤨", and: "Your pass is Password")
    }
    
    @IBAction func LoginButtonPressed() {
        if usernameTF.text == "User" && passwordTF.text == "Password" {
            showAlert(with: "😊", and: "Your are welcome!")
        } else {
            showAlert(with: "Invalid username or password", and: "Please enter correct username and password")
        }
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        let okButton = UIAlertAction(title: "ОК", style: .default)
        alert.addAction(okButton)
    }
}
