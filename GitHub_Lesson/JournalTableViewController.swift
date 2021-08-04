//
//  JournalTableViewController.swift
//  GitHub_Lesson
//
//  Created by Lisa Chou on 8/4/21.
//

import UIKit

class JournalTableViewController: UITableViewController {
    var journals : [Journal] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        journals = createJournals()
    }
    func createJournals() -> [Journal] {

      let swift = Journal()
      swift.name = "Learn Swift"


      return [swift]
    }
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return journals.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let journal = journals[indexPath.row]
        cell.textLabel?.text = journal.name
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      // this gives us a single ToDo
      let journal = journals[indexPath.row]

      performSegue(withIdentifier: "moveToFull", sender: journal)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

   
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            journals.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }


    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddJournalViewController {
            addVC.previousVC = self
          }
        if let completeVC = segue.destination as? FullJournalViewController {
            if let Journal = sender as? Journal {
              completeVC.selectedJournal = Journal
              completeVC.previousVC = self
            }
          }
    }
    

}
