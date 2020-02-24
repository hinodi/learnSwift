//
//  ViewController2.swift
//  FirstProject
//
//  Created by Huynh Ngoc Dinh on 2/6/19.
//  Copyright © 2019 Huynh Ngoc Dinh. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view 2 -- viewDidLoad")
    }
    

    @IBAction func GobackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func GotoScreen3(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController3 = storyBoard.instantiateViewController(withIdentifier: "VIEWCONTROLLER3") as! ViewController3
        
        self.navigationController?.pushViewController(viewController3, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
         print("view 2 -- viewWillAppear")
        
        print(navigationController?.viewControllers as Any)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("view 2 -- viewWillDisappear")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
