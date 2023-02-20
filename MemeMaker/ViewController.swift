//
//  ViewController.swift
//  MemeMaker
//
//  Created by Vokpolk on 14.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    
    var topChoices: [CaptionOption] = []
    var bottomChoices: [CaptionOption] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTopSegmentControl()
        configureBottomSegmentControl()
        selectInitValues()
    }
    
    func configureTopSegmentControl() {
        topCaptionSegmentControl.removeAllSegments()
        let option1 = CaptionOption(emoji: "🕶", text: "Cool, isn't it?", fileName: "MIG29")
        let option2 = CaptionOption(emoji: "💥", text: "BOOM!!!", fileName: "MIG35")
        let option3 = CaptionOption(emoji: "💕", text: "Nice pick bro.", fileName: "MIG35SWIFT")
        
        topChoices = [option1, option2, option3]
        
        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }
    
    func configureBottomSegmentControl() {
        bottomCaptionSegmentControl.removeAllSegments()
        let option1 = CaptionOption(emoji: "🐱", text: "MiG-29K", fileName: "MIG29K")
        let option2 = CaptionOption(emoji: "🐶", text: "MiG-35", fileName: "MIG35WALLPAPER")
        let option3 = CaptionOption(emoji: "🐵", text: "MiG-29SMT?", fileName: "MIG29SMT")
        
        bottomChoices = [option1, option2, option3]
        
        for choice in bottomChoices {
            bottomCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }
    
    func selectInitValues() {
        topCaptionSegmentControl.selectedSegmentIndex = 0
        //bottomCaptionSegmentControl.selectedSegmentIndex = 0
        topLabel.text = topChoices.first?.text
        bottomLabel.text = "Nice fighter"//bottomChoices[0].text
    }
    
    @IBAction func topSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
        topLabel.text = currentChoice.text
        mainImageView.image = UIImage(named: currentChoice.fileName)
        //print(currentChoice)
    }
    
    @IBAction func bottomSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = bottomChoices[sender.selectedSegmentIndex]
        bottomLabel.text = currentChoice.text
        mainImageView.image = UIImage(named: currentChoice.fileName)
        //print(currentChoice)
    }
    
    
}

