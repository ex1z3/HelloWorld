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
        greetingButton.configuration = setupButton(with: "Show greeting")
      
    }
    
    @IBAction func greetingButtonTapped() {
        greetingLable.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with: greetingLable.isHidden ? "Show greeting" : "Hide greeting"
        )
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonCongiguration = UIButton.Configuration.filled()
        buttonCongiguration.baseBackgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        buttonCongiguration.title = title
        buttonCongiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        buttonCongiguration.buttonSize = .large
        buttonCongiguration.cornerStyle = .large
        return buttonCongiguration
    }
    
}

