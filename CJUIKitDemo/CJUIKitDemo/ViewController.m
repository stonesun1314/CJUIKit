//
//  ViewController.m
//  CJUIKitDemo
//
//  Created by 李超前 on 2017/2/23.
//  Copyright © 2017年 dvlproad. All rights reserved.
//

#import "ViewController.h"
#import "CJRefresh.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //CJRefresh 的使用示例
    // 上拉加载
//    CJRefreshFooterView *_refreshFooter = [CJRefreshFooterView refreshView];
//    [_refreshFooter addToScrollView:self.tableView];
//    __weak typeof(self)weakSelf = self;
//    __weak typeof(_refreshFooter) weakRefreshFooter = _refreshFooter;
//    _refreshFooter.beginRefreshingOperation = ^() {
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            [weakSelf creatModelsWithCount:10];
//            [weakSelf.tableView reloadData];
//            [weakRefreshFooter endRefreshing];
//        });
//    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end