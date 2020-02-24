//
//  ViewController3.swift
//  FirstProject
//
//  Created by Huynh Ngoc Dinh on 2/6/19.
//  Copyright © 2019 Huynh Ngoc Dinh. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view 3 --- viewDidLoad")
    }
    
    @IBAction func GoBackScreen2(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func GoToScreen4(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController4 = storyBoard.instantiateViewController(withIdentifier: "VIEWCONTROLLER4") as! ViewController4
        
        self.navigationController?.pushViewController(viewController4, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("view 3 --- viewWillAppear")
        
         print(navigationController?.viewControllers as Any)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("view 3 --- viewWillDisappear")
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
