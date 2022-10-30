//
//  SecondViewController.swift
//  NotificationCenter
//
//  Created by Abhishek Rao on 30/10/22.
//

import Foundation
import UIKit
class SecondViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func facebook(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        NotificationCenter.default.post(name: .facebook, object: nil)
    }
    
    @IBAction func twitter(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        NotificationCenter.default.post(name: .twitter, object: nil)
    }
}
