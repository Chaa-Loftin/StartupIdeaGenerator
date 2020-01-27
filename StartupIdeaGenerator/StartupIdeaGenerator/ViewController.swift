//
//  ViewController.swift
//  StartupIdeaGenerator
//
//  Created by Macbook on 1/25/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //properties
    let startUpArray: [String] = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]

    let audienceArray: [String] = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]

    @IBOutlet weak var businessName: UILabel!
    @IBOutlet weak var audienceName: UILabel!
    @IBOutlet weak var ideaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ideaButtonTapped(_ sender: Any) {
        generateIdea()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else {return}
        generateIdea()
    }
    
    func generateIdea() {
        let randomNumber1 = Int.random(in: 0..<startUpArray.count)
        let randomNumber2 = Int.random(in: 0..<audienceArray.count)
        businessName.text = startUpArray[randomNumber1]
        audienceName.text = audienceArray[randomNumber2]
    }
    
}

