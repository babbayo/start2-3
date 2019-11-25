//
//  ViewController.swift
//  start2-3
//
//  Created by MacBook on 07/11/2019.
//  Copyright © 2019 yaco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          
      }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        NotificationCenter.default.addObserver(self, selector: #selector(replaceData), name: NSNotification.Name(rawValue: "createNew"), object: nil)
    }
    
    @objc func replaceData() {
        print("2")
        idTextField.text = UserInfo.shard.id
    }

}

