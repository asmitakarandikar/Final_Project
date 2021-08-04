//
//  AddJournalViewController.swift
//  GitHub_Lesson
//
//  Created by Lisa Chou on 8/4/21.
//

import UIKit

class AddJournalViewController: UIViewController {
    
    var previousVC = JournalTableViewController()
    
    @IBOutlet weak var promptBox: UILabel!
    
        func randomText() -> String {
        let prompts = ["What brings you joy?", "Describe a place where you felt happiest.", "If you are granted a wish, what would you wish for?", "Where do you see yourself in the next 10 years?", "Who is your hero?", "What was the best moment of your life?", "Who is someone you admire?", "What has inspired you?", "What are you grateful for?", "What are your long term goals?"]
        return prompts[Int(arc4random_uniform(UInt32(prompts.count)))]
    }
    @IBOutlet weak var journalTextField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let journal = Journal()
        if let journalField = journalTextField.text {
            journal.name = journalField }
        previousVC.journals.append(journal)
          previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
           
    }
    
    @IBAction func promptButton(_ sender: Any) {
        promptBox.text = randomText()
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
