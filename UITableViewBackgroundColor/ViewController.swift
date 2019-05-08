//
//  ViewController.swift
//  UITableViewBackgroundColor
//
//  Created by Apple on 2019/4/30.
//  Copyright © 2019 com.deng. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    var mons = ["january","feberuary","march","april","may"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mUITableView = UITableView(frame: self.view.bounds)
        mUITableView.delegate = self
        mUITableView.dataSource = self
        self.view.addSubview(mUITableView)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reusedId = "reuse"
        var cell = tableView.dequeueReusableCell(withIdentifier: reusedId)
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: reusedId)
        }
        let index = (indexPath as NSIndexPath).row
        
        cell?.textLabel?.text = mons[index]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        if(cell?.accessoryType == UITableViewCell.AccessoryType.none){
            cell?.accessoryType = UITableViewCell.AccessoryType.checkmark
        }else{
            cell?.accessoryType = UITableViewCell.AccessoryType.none
        }
    }

}

