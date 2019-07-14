//
//  ViewController.swift
//  checkInternetReachability
//
//  Created by Anh vũ on 7/14/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
@IBOutlet weak var textLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      AppDelegate.shared.setupReachablity()
            
        }
    }

class ViewController1 : ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AppDelegate.shared.setupReachablity() { _ in
            self.textLable.text = "mat mang roi"
        }
    }
}
