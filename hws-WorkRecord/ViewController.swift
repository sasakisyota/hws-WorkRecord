//
//  ViewController.swift
//  hws-WorkRecord
//
//  Created by 佐々木翔太 on 2021/11/09.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 3
       }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! MainTableViewCell
        
        cell.setCell(imageName: imageNames[indexPath.row], titleText: imageTitles[indexPath.row], descriptionText: imageDescriptions[indexPath.row])
           return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 80
    }
    @IBOutlet weak var tableView: UITableView!
    
    let imageNames = ["ic_congestion","ic_normal","ic_normal"]

    let imageTitles = ["函館　蔦屋書店","亀田交流プラザ","亀田交流プラザ"]
    
    let imageDescriptions = ["作業日：2021年11月21日","作業日：2021年12月12日","作業日:2021年12月12日"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }
  
}

