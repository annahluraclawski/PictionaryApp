//
//  ViewControllerGame.swift
//  Pictionary App
//
//  Created by ANNAHLU RACLAWSKI on 12/7/23.
//

public class AppData{
    static var points = 0
}

import UIKit

class ViewControllerGame: UIViewController {

    let images = ["bombay", "calico", "bengal", "siamese", "persian", "americanshorthair", "sphynx", "russianblue", "mainecoon", "tabby", "ragdoll"]
    
    var final = [String]()
    
    var answer = ""
    var two = ""
    var three = ""
    var four = ""
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var buttonOneOutlet: UIButton!
    
    @IBOutlet weak var buttonTwoOutlet: UIButton!
    
    @IBOutlet weak var buttonThreeOutlet: UIButton!
    
    @IBOutlet weak var buttonFourOutlet: UIButton!
    
    @IBOutlet weak var pointsOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newQuestion()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.currentTitle == answer {
            print("Correct")
            AppData.points = AppData.points + 1
            pointsOutlet.text = "Points: \(AppData.points)"
        }
        else {
            print("Wrong")
            AppData.points = 0
            pointsOutlet.text = "Points: \(AppData.points)"
            let alert = UIAlertController(title: "Oops!", message: "That is incorrect, you have \(AppData.points) points", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .destructive, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
        newQuestion()
    }
    
    
    func newQuestion() {
        let random = Int.random(in: 0..<images.count)
        answer = images[random]
        imageOutlet.image = UIImage(named: answer)
        
        let random2 = Int.random(in: 0..<images.count)
        two = images[random2]
        
        let random3 = Int.random(in: 0..<images.count)
        three = images[random3]
        
        let random4 = Int.random(in: 0..<images.count)
        four = images[random4]
        
        final.append(answer)
        final.append(two)
        final.append(three)
        final.append(four)
        
        let shuffled = final.shuffled()
        
            buttonOneOutlet!.setTitle(shuffled[0], for: .normal)
            buttonTwoOutlet!.setTitle(shuffled[1], for: .normal)
            buttonThreeOutlet!.setTitle(shuffled[2], for: .normal)
            buttonFourOutlet!.setTitle(shuffled[3], for: .normal)
        
    }
    
    @IBAction func refreshButton(_ sender: UIBarButtonItem) {
        newQuestion()
    }
    
    
}
