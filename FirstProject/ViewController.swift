//
//  ViewController.swift
//  FirstProject
//
//  Created by Huynh Ngoc Dinh on 7/15/18.
//  Copyright © 2018 Huynh Ngoc Dinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Switch: UISwitch!
    
    @IBOutlet weak var FirstTextField: UITextField!
    
    @IBAction func Button(_ sender: UIButton) {
//        let alert = UIAlertController(
//            title: "Alert",
//            message: FirstTextField.text!,
//            preferredStyle: UIAlertControllerStyle.alert
//        )
//        alert.addAction(
//            UIAlertAction(
//                title: "OK",
//                style: .default,
//                handler: nil
//            )
//        )
//
//        self.present(alert, animated: true, completion: nil)
        Switch.setOn(!Switch.isOn, animated: true)
    }
    
    @IBAction func GotoTableView(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController5 = storyBoard.instantiateViewController(withIdentifier: "VIEWCONTROLLER5") as! ViewController5
        
        self.navigationController?.pushViewController(viewController5, animated: true)
    }
    
    @IBAction func NavigateButton(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController2 = storyBoard.instantiateViewController(withIdentifier: "VIEWCONTROLLER2") as! ViewController2
        
        self.navigationController?.pushViewController(viewController2, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true;
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self as? UIGestureRecognizerDelegate;
        
        print("view 1 - viewDidLoad")
    }
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        
        if gestureRecognizer == self.navigationController?.interactivePopGestureRecognizer {
            return false
        }
        return true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        
        print("view 1 - viewWillAppear")
        
        print(navigationController?.viewControllers as Any)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
         print("view 1 - viewWillDisappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
