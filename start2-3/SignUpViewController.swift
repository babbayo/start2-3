//
//  SignUpViewController.swift
//  start2-3
//
//  Created by MacBook on 07/11/2019.
//  Copyright © 2019 yaco. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var pwConfirmTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    
    lazy var imagePicker: UIImagePickerController = {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        return picker
    }()
    
    @IBOutlet weak var imageView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            nextButton.isEnabled = false
            nextButton.isUserInteractionEnabled = false
    
    }
    
  
    
     @IBAction func touchUpSelectImageButton(_ sender: Any) {
        self.present(imagePicker, animated: true, completion: nil)

           }
    
    @IBAction func onTapGesture(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let originalImage: UIImage = info[.originalImage] as? UIImage {
            self.imageView.setImage(originalImage, for: .normal)
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func onCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
//        self.navigationController?.popToRootViewController(animated: true)
       }
      
    @IBAction func onNext(_ sender: Any) {
        if let t1 = idTextField.text {
            print("insert id")
            UserInfo.shard.id = t1
        }
    }
    
    @IBAction func onPasswordCheckTextField(_ sender: UITextField) {
        guard let t1 = pwTextField.text else {
            nextButton.isEnabled = false
            nextButton.isUserInteractionEnabled = false
            return
        }
        guard let t2 = pwConfirmTextField.text else {
            nextButton.isEnabled = false
            nextButton.isUserInteractionEnabled = false
            return
        }
        
        if t1 == t2 {
            nextButton.isEnabled = true
            nextButton.isUserInteractionEnabled = true
        } else {
            nextButton.isEnabled = false
            nextButton.isUserInteractionEnabled = false
        }
    }
}
