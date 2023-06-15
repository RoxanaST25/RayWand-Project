//
//  ViewController.swift
//  Story-proj
//
//  Created by Main User on 2023-06-15.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
//        extend it since this func already exists and i cant rewrite it again
        super.viewDidLoad()
//        this calls it
        // Do any additional setup after loading the view.
        let storyPrompt = StoryPromptEntry()
        storyPrompt.noun = "toaster"
        storyPrompt.adjective = "smelly"
        storyPrompt.verb = "burps"
        storyPrompt.number = 10
        print(storyPrompt)
    }
}
