//
//  ResourceViewController.swift
//  GitHub_Lesson
//
//  Created by Lisa Chou on 8/5/21.
//

import UIKit

class ResourceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func linkOne(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.nimh.nih.gov/health/find-help/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func linkTwo(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.nimh.nih.gov/health/topics/")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func linkThree(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.mentalhealth.gov/talk/young-people")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func linkFour(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://medlineplus.gov/teenmentalhealth.html")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func linkFive(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.kidshealth.org/en/teens/your-mind/")! as URL, options: [:], completionHandler: nil)
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
