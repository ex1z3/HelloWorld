//
//  ViewController.swift
//  HelloWorld
//
//  Created by Denis Sokolov on 14.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greetingLable: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLable.isHidden = true
        greetingButton.layer.cornerRadius = 10
    }
    
    @IBAction func greetingButtonTapped() {
        greetingLable.isHidden.toggle()
        
        greetingButton.setTitle(
            greetingLable.isHidden ? "Show greeting" : "Hide greeting",
            for: .normal
        )
    }
    
}

