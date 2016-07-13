//
//  JNRefreshNormalHeader.m
//  ssgs
//
//  Created by Jniying on 16/4/28.
//  Copyright © 2016年 aiyu. All rights reserved.
//

#import "JNRefreshNormalHeader.h"

@implementation JNRefreshNormalHeader
-(void)succEndRefresh {
    self.stateLabel.text = @"刷新成功!";
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self endRefreshing];
    });
}
-(void)failEndRefresh {
    self.stateLabel.text = @"刷新失败!";
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self endRefreshing];
    });

}
@end
