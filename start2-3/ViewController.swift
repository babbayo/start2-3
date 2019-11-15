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

        print("2")
//        idTextField.text = "333"
//        if let t1 = UserInfo.shard.created {
//            if t1 {
//                if let t2 = UserInfo.shard.id {
//                    print("come3")
//                    idTextField.text = t2
//                }
//            }
//        }
    }

}

