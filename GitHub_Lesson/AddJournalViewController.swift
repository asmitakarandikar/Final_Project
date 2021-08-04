//
//  AddJournalViewController.swift
//  GitHub_Lesson
//
//  Created by Lisa Chou on 8/4/21.
//

import UIKit

class AddJournalViewController: UIViewController {
    
    var previousVC = JournalTableViewController()
    
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
