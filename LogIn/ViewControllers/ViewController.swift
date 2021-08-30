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
    
    let user = User.getInfoAboutUser()
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeViewController = segue.destination as? WelcomeViewController else {return}
//        welcomeViewController.helloUser = "Hello, \(user.person.name) \(user.person.surname)!"
//    }override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = tabBarController.viewControllers!
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.helloUser =
                    "Hello, \(user.person.name) \(user.person.surname)!"}
            else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
                aboutUserVC.myInfo = "Меня зовут \(user.person.name) \(user.person.surname). Мне \(user.person.age) года. \(user.person.hobbies.rawValue)"
                aboutUserVC.title = "\(user.person.name) \(user.person.surname)"
            }
        }
    }
                    
                    
    @IBAction func LoginButtonPressed() {
        if usernameTF.text != user.username || passwordTF.text != user.password {
            showAlert(with: "Invalid username or password", and: "Please enter correct username and password")
            passwordTF.text = ""
        }
    }

    @IBAction func forgotNameButtonPressed() {
        showAlert(with: "Forgot your name???😩", and: "Your name is \(user.username)")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Forgot your pass???🤨", and: "Your pass is \(user.password)")
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

