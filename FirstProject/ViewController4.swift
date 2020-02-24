//
//  ViewController4.swift
//  FirstProject
//
//  Created by Huynh Ngoc Dinh on 2/6/19.
//  Copyright © 2019 Huynh Ngoc Dinh. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("view 4 ---- viewDidLoad")
    }
    
    @IBAction func GobackPreviuos(_ sender: Any) {
         navigationController?.popViewController(animated: true)
    }
    
    @IBAction func GoBackToScreen2(_ sender: Any) {
        let viewController2 = navigationController?.viewControllers[1]
        
        navigationController?.popToViewController(viewController2!, animated: true)
    }
    
    @IBAction func GoBackToRoot(_ sender: Any) {
         navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func GoToTableView(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController5 = storyBoard.instantiateViewController(withIdentifier: "VIEWCONTROLLER5") as! ViewController5
        
        self.navigationController?.pushViewController(viewController5, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("view 4 ---- viewWillAppear")
        
         print(navigationController?.viewControllers as Any)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("view 4 ---- viewWillDisappear")
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
