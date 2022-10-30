//
//  ViewController.swift
//  NotificationCenter
//
//  Created by Abhishek Rao on 30/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.isHidden = true
        NotificationCenter.default.addObserver(self, selector: #selector(facebook(notification:)), name: .facebook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(twitter(notification:)), name: .twitter, object: nil)
    }
    @objc func facebook(notification: Notification){
        label.isHidden = false
        label.text = "Facebook"
    }
    
    @objc func twitter(notification: Notification){
        label.isHidden = false
        label.text = "Twitter"
    }
    
    @IBAction func socialMediaButton(_ sender: Any) {
        guard let secondView = self.storyboard?.instantiateViewController(withIdentifier: "secondView") as? SecondViewController else{
            fatalError("view not load")
        }
        self.navigationController?.pushViewController(secondView, animated: true)
    }
    

}
extension Notification.Name{
    static let facebook = Notification.Name("facebook")
    static let twitter = Notification.Name("twitter")
}
