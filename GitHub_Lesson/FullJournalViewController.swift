//
//  FullJournalViewController.swift
//  GitHub_Lesson
//
//  Created by Lisa Chou on 8/4/21.
//

import UIKit

class FullJournalViewController: UIViewController {
    
    var previousVC = JournalTableViewController()
    var selectedJournal = Journal()
    
    @IBOutlet weak var fullJournal: UILabel!
    
    override func viewDidLoad() {
      super.viewDidLoad()

      fullJournal.text = selectedJournal.name
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
