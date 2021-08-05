//
//  QuoteViewController.swift
//  GitHub_Lesson
//
//  Created by Asmita Karandikar on 8/5/21.
//

import UIKit

class QuoteViewController: UIViewController {

    @IBOutlet weak var quoteBox: UILabel!
    
    func randomQuote() -> String {
        let quotes = ["The way I see it, if you want the rainbow, you gotta put up with the rain. - Dolly Parton", "Nothing is impossible. The word itself says ‘I’m possible!’ - Audrey Hepburn", "Don’t let life zap your sparkle! - Ebony Beckwith", "You are your own best advocate. Don’t make yourself small; own your space and speak up for yourself! - Karlie Kloss", "Believe in yourself, so others believe in you. - Lisa Opoku", "Mistakes are a fact of life. It is the response to errors that counts. - Nikki Giovanni","Be messy and complicated and afraid and show up anyways. - Glennon Doyle Melton", "Sometimes you never know the value of a moment, until it becomes a memory. - Dr. Suess", "We are what we repeatedly do. Excellence, then, is not an act, but a habit. - Aristotle", "Strive not to be a success, but rather to be of value. - Albert Einstein", "It does not matter how slowly you go as long as you do not stop. - Confucius", "Don’t chase people. Be yourself, do your own thing and work hard. The right people -the ones who really belong in your life- will come to you. And stay. - Will Smith", "Keep your face always toward the sunshine--and the shadows will fall behind you. - Walt Whitman"]
 
        return quotes[Int(arc4random_uniform(UInt32(quotes.count)))]
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func quoteButton(_ sender: Any) {
        quoteBox.text = randomQuote()
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
