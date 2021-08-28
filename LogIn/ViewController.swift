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
    
    let defaultUsername = "User"
    let defaultPassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func tapForKeyboardClosing(_ sender: Any) {
        usernameTF.resignFirstResponder()
        passwordTF.resignFirstResponder()
    }
    

    @IBAction func forgotNameButtonPressed() {
        showAlert(with: "Forgot your name???😩", and: "Your name is \(defaultUsername)")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Forgot your pass???🤨", and: "Your pass is \(defaultPassword)")
    }
    
    @IBAction func LoginButtonPressed() {
        if usernameTF.text != defaultUsername || passwordTF.text != defaultPassword {
            showAlert(with: "Invalid username or password", and: "Please enter correct username and password")
        } else {
            print("Welcome")
        }
    }
    
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        let okButton = UIAlertAction(title: "ОК", style: .default)
        alert.addAction(okButton)
    }
}
