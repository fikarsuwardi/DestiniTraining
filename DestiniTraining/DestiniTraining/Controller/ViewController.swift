//
//  ViewController.swift
//  DestiniTraining
//
//  Created by Zulfikar Abdul Rahman Suwardi on 25/10/22.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var storyLabel: UILabel!
  @IBOutlet weak var choice1: UIButton!
  @IBOutlet weak var choice2: UIButton!
  
  var story = StoryBrain()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    updateUI()
  }

  @IBAction func choicePressed(_ sender: UIButton) {
    let userChoice = sender.currentTitle!
    story.nextStory(userChoice: userChoice)
    Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
  }
  
  @objc func updateUI() {
    storyLabel.text = story.getStory()
    choice1.setTitle(story.getChoice1(), for: .normal)
    choice2.setTitle(story.getChoice2(), for: .normal)
  }
  
}

