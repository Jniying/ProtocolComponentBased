//
//  MyPotocol.swift
//  ProtocolComponentBased
//
//  Created by Jniying on 16/7/13.
//  Copyright © 2016年 Jniying. All rights reserved.
//

import Foundation
import UIKit

//MARK:---------------------------刷新组件--------------------------
protocol RefreshControl {
    func refreshingAction(refreshControl:MJRefreshNormalHeader)
}

extension RefreshControl {
    func setupRefreshControl(scrollView:UIScrollView,target:AnyObject!) {
        let header = MJRefreshNormalHeader(refreshingTarget: target, refreshingAction: "refreshingAction:")
        scrollView.mj_header = header
        header.loadingView.color = UIColor.redColor()
    }
}
