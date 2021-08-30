//
//  About.swift
//  LogIn
//
//  Created by Vladimir Izmaylov on 30.08.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var infoAboutMeLabel: UILabel!
    @IBOutlet var aboutMeNavigation: UINavigationItem!
    
    var myInfo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoAboutMeLabel.text = myInfo
    }
}
