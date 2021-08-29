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
    
    private let defaultUsername = "User"
    private let defaultPassword = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeViewController = segue.destination as? WelcomeViewController else {return}
        welcomeViewController.helloUser = "Hello, \(defaultUsername)!"
    }
    
    @IBAction func LoginButtonPressed() {
        if usernameTF.text != defaultUsername || passwordTF.text != defaultPassword {
            showAlert(with: "Invalid username or password", and: "Please enter correct username and password")
            passwordTF.text = ""
        }
    }

    @IBAction func forgotNameButtonPressed() {
        showAlert(with: "Forgot your name???😩", and: "Your name is \(defaultUsername)")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Forgot your pass???🤨", and: "Your pass is \(defaultPassword)")
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }

    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "ОК", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
}

extension ViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameTF {
            passwordTF.becomeFirstResponder()
        } else {
            LoginButtonPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        
        return true
    }
}

