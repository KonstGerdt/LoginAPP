//
//  SecondViewController.swift
//  LoginAPP
//
//  Created by Konstantin Durkin on 24.01.2023.
//

import UIKit

    class WelcomeViewController: UIViewController {
        
        @IBOutlet weak var WelcomeLabel: UILabel!
        
    var userName = "Konstantin"
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WelcomeLabel.text = "Welcome, \(userName)!"
       
    }
           
}
    


