//
//  MoodViewController.swift
//  GitHub_Lesson
//
//  Created by Lisa Chou on 8/5/21.
//

import UIKit

class MoodViewController: UIViewController {

    @IBOutlet weak var resultMood: UILabel!
    @IBOutlet weak var celebrateButton: UIButton!
    @IBOutlet weak var ventButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func happyButton(_ sender: UIButton) {
        resultMood.text = "Great! Glad you're feeling good"
        ventButton.isHidden = true
        celebrateButton.isHidden = false
    }
    @IBAction func angryButton(_ sender: UIButton) {
       resultMood.text = "Don't worry! Maybe lets vent it out?"
        ventButton.isHidden = false
        celebrateButton.isHidden = true
    }
    
    @IBAction func sadButton(_ sender: UIButton) {
        resultMood.text = "It's okay. Let's vent it out!"
        ventButton.isHidden = false
        celebrateButton.isHidden = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
