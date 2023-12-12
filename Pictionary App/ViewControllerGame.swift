//
//  ViewControllerGame.swift
//  Pictionary App
//
//  Created by ANNAHLU RACLAWSKI on 12/7/23.
//

import UIKit

class ViewControllerGame: UIViewController {

    var images : [UIImage] = []
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var buttonOneOutlet: UIButton!
    
    @IBOutlet weak var buttonTwoOutlet: UIButton!
    
    @IBOutlet weak var buttonThreeOutlet: UIButton!
    
    @IBOutlet weak var buttonFourOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        images.append(UIImage(named: "bombay")!)
        images.append(UIImage(named: "calico")!)
        images.append(UIImage(named: "bengal")!)
        images.append(UIImage(named: "siamese")!)
        images.append(UIImage(named: "persian")!)
        images.append(UIImage(named: "americanshorthair")!)
        images.append(UIImage(named: "sphynx")!)
        images[7] = UIImage(named: "russianblue")!
        images[8] = UIImage(named: "mainecoon")!
        images[9] = UIImage(named: "tabby")!
        images[10] = UIImage(named: "ragdoll")!
        
        //imageOutlet.image = images[0]
        
        // Do any additional setup after loading the view.
    }
    
}
