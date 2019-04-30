//
//  ViewController.swift
//  UITableViewBackgroundColor
//
//  Created by Apple on 2019/4/30.
//  Copyright © 2019 com.deng. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mUITableView = UITableView(frame: self.view.bounds)
        mUITableView.delegate = self
        mUITableView.dataSource = self
        self.view.addSubview(mUITableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reusedId = "reuse"
        var cell = tableView.dequeueReusableCell(withIdentifier: reusedId)
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: reusedId)
        }
        let rowNum = (indexPath as NSIndexPath).row
        cell?.textLabel?.text = "Title \(rowNum)"
        cell?.detailTextLabel?.text = "SubTitle \(rowNum)"
        
        if(rowNum%2 == 1)
        {
            cell?.backgroundColor = UIColor.lightGray
        }else
        {
            cell?.backgroundColor = UIColor.gray
        }
        return cell!
    }
}

