//
//  RefreshController.swift
//  ProtocolComponentBased
//
//  Created by Jniying on 16/7/13.
//  Copyright © 2016年 Jniying. All rights reserved.
//

import UIKit

class RefreshController: UITableViewController,RefreshControl {

    override func viewDidLoad() {
        self.setupRefreshControl(self.tableView, target: self)
    }
    
    func refreshingAction(refreshControl: MJRefreshNormalHeader) {
        refreshControl.beginRefreshing()
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (Int64)(3.0 * Double(NSEC_PER_SEC))), dispatch_get_main_queue()) { () -> Void in
            refreshControl.endRefreshing()
            self.tableView.reloadData()
        }

    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellId = "cell"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellId)
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: cellId)
        }
        cell!.textLabel?.text = "第\(indexPath.row)个cell"
        return cell!
    }

}
