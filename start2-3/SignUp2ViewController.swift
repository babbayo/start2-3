//
//  SignUp2ViewController.swift
//  start2-3
//
//  Created by MacBook on 07/11/2019.
//  Copyright © 2019 yaco. All rights reserved.
//

import UIKit

class SignUp2ViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UITextField!
    @IBOutlet weak var birthLabel: UILabel!
    
    var dateFormatter: DateFormatter {
            let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    override func viewDidLoad() {
        if let t1 = UserInfo.shard.birth {
            birthLabel.text = t1
        }
        
        if let t2 = UserInfo.shard.phone {
            phoneLabel.text = t2
        }
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTapGesture(_ sender: UITapGestureRecognizer) {
           self.view.endEditing(true)
           
       }

    @IBAction func onCancel(_ sender: Any) {
        self.navigationController?.dismiss(animated: true, completion: nil)
        }
    
    
    @IBAction func onBefore(_ sender: Any) {
        if let t1 = birthLabel.text {
            UserInfo.shard.birth = t1
        }
        
        if let t2 = phoneLabel.text {
            UserInfo.shard.phone = t2
        }
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onDone(_ sender: Any) {
        
        UserInfo.shard.created = true
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "createNew"), object: nil)
//        let view = ViewControlldfer.init()
//        self.present(view, animated: true, completion: nil)
        self.navigationController?.dismiss(animated: true,
                                           completion: {
                                        
//                                           let view = ViewController.init()
//                                            self.present(view, animated: true, completion: nil)
//
//                                            ViewController.re self.presentedViewController?.viewDidLayoutSubviews()
            })
        
    }
    

    @IBAction func onChangedDatePicker(_ sender: UIDatePicker) {
        let date = sender.date
        let dateStr = dateFormatter.string(from: date)
        birthLabel.text = dateStr
    }
}
