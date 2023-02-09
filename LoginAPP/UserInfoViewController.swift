//
//  ViewController.swift
//  LoginAPP
//
//  Created by Konstantin Durkin on 30.01.2023.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var middlenameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        nameLabel.text = user.person.name
        middlenameLabel.text = user.person.middlename
        surnameLabel.text = user.person.surname
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? UserBioViewController else { return }
        imageVC.user = user
    }
}
