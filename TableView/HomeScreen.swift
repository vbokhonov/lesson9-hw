//
//  HomeScreen.swift
//  TableView
//
//  Created by Valentyn Bokhonov on 09.05.2021.
//

import UIKit

class HomeScreen: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addUserButton(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "showListSegue", let listVC =
            segue.destination as? UserTableViewController {
            listVC.name = nameTextField.text
            listVC.nick = nicknameTextField.text
        }
    }
}
