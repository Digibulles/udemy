//
//  ViewController.swift
//  Codabeille
//
//  Created by Christian Stenger on 07/04/2018.
//  Copyright © 2018 Christian Stenger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var abeilleVue: UIImageView!
    
    @IBOutlet weak var bouton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        abeilleVue.animationImages = [#imageLiteral(resourceName: "abeille1"),#imageLiteral(resourceName: "abeille2"),#imageLiteral(resourceName: "abeille3"),#imageLiteral(resourceName: "abeille4"),#imageLiteral(resourceName: "abeille5"),#imageLiteral(resourceName: "abeille6")]
        abeilleVue.animationDuration = 0.5
        abeilleVue.animationRepeatCount = 0
        abeilleVue.startAnimating()
        
                
        }
    
    @IBAction func boutonAction(_ sender: Any) {
        if abeilleVue.isAnimating {
            abeilleVue.stopAnimating()
            bouton.setTitle("ANIMER", for: .normal)
        } else {
            abeilleVue.startAnimating()
        bouton.setTitle("STOP", for: .normal)
        }
    
    }



}

