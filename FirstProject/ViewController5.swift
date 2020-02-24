//
//  ViewController5.swift
//  FirstProject
//
//  Created by Huynh Ngoc Dinh on 2/9/19.
//  Copyright © 2019 Huynh Ngoc Dinh. All rights reserved.
//

import UIKit

class ViewController5: UIViewController, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    var data:[String] = ["https://znews-photo.zadn.vn/w1024/Uploaded/ofh_huqfztmf/2019_02_04/Ronaldo_Juve.jpg", "https://images.performgroup.com/di/library/GOAL/10/3d/lionel-messi-barcelona_48fpe72bfm4m179j5rtchzp47.jpg?t=-1350717688&quality=100"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.rowHeight = 200
        myTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "MyCell") as! TableViewCell
        
        let urlString = data[indexPath.row]
        let url = URL(string: urlString)
        let imageData = try? Data(contentsOf: url!)
        cell.myImageInCell.image = UIImage(data: imageData!)
        return cell
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
