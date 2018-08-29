//
//  ViewController.swift
//  MindBowserAssingment
//
//  Created by Lovina on 17/08/18.
//  Copyright © 2018 Lovina. All rights reserved.
//

import UIKit
import TwitterKit
 

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupforTwitter()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func setupforTwitter(){
//        let TwitterBTN = TWTRLogInButton{(session, error)
//            in
//            if let err = error{
//                print("fail to login\(error)")
//
//
//
//            }
//            print("login successfully")
//
//        }
//        view.addSubview(TwitterBTN)
//        TwitterBTN.frame = CGRect(x: 16, y: 400, width: view.frame.width - 32, height: 50)
 
    
    
    let logInButton = TWTRLogInButton { (session, error) in
        guard let unwrappedSession = session else {//early return if error
            print("Login error: %@", error!.localizedDescription);
            return
        }
        
        let alert = UIAlertController(title: "Logged In",
                                      message: "User \(unwrappedSession.userName) has logged in",
            preferredStyle: UIAlertControllerStyle.alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        
    }
    logInButton.frame = CGRect(x: 16, y: 400, width: view.frame.width - 32, height: 50)
    self.view.addSubview(logInButton)
       }
    //compose tweet button setup
//    let button = UIButton(type: .system)
//    button.setTitle("Compose tweet", for: [])
//    button.sizeToFit()
//    button.center = view.center
//    button.addTarget(self, action: #selector(compose), for: [.touchUpInside])
   // view.addSubview(button)
    


}

