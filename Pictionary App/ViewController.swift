//
//  ViewController.swift
//  Pictionary App
//
//  Created by ANNAHLU RACLAWSKI on 12/5/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func beginButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toGame", sender: self)
    }
    
    
    
}

