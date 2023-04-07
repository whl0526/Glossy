//
//  CreatePostViewController.swift
//  Glossy
//
//  Created by Hyesung Jeon on 2023/03/31.
//
import AVFoundation
import UIKit
import Firebase

class CreatePostViewController: UIViewController {

    let db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    private func didTapTakePicuture() {
        
    }
    
    
//    func addPost() {
//        db.collection("posts").addDocument(data:[
//            "title": "글제목"
//        ]){ (error) in
//            if let error = error {
//                print("Error")
//            }else {
//                print("Suscess")
//            }
//        }
//
//    }


}
