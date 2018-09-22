//
//  ButtonViewController.m
//  CJUIKitDemo
//
//  Created by ciyouzen on 2017/7/3.
//  Copyright © 2017年 dvlproad. All rights reserved.
//

#import "ButtonViewController.h"
#import "UIButton+CJUpDownStructure.h"
#import "UIButton+CJFixMultiClick.h"

#import "UIImage+CJCreate.h"

#import "UIButton+CJMoreProperty.h"
#import "UIColor+CJHex.h"

@interface ButtonViewController ()

@end

@implementation ButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    UIButton *cjTestButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [cjTestButton setFrame:CGRectMake(50, 100, 200, 40)];
    [cjTestButton setBackgroundColor:[UIColor colorWithRed:0.4 green:0.3 blue:0.4 alpha:0.5]];
    [cjTestButton setTitle:@"测试为按钮动态增加的属性" forState:UIControlStateNormal];
    [cjTestButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [cjTestButton setTitleColor:[UIColor cjColorWithHexString:@"#3388FF"] forState:UIControlStateSelected];
    [cjTestButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
    [self.view addSubview:cjTestButton];
    [cjTestButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).mas_offset(20);
        make.right.mas_equalTo(self.view).mas_offset(-20);
        make.top.mas_equalTo(self.view).mas_offset(100);
        make.height.mas_equalTo(44);
    }];
    cjTestButton.cjNormalBGColor = CJColorFromHexString(@"#01adfe");
    cjTestButton.cjHighlightedBGColor = CJColorFromHexString(@"#1393d7");
    cjTestButton.cjTouchUpInsideBlock = ^(UIButton *button) {
        [CJToast shortShowMessage:@"测试为按钮动态增加的属性"];
    };
    
    [self.upDownStructureButton setImage:[UIImage imageNamed:@"smail.png"] forState:UIControlStateNormal];
    [self.upDownStructureButton setTitle:@"测试上下结构的文字" forState:UIControlStateNormal];
    [self.upDownStructureButton.imageView setBackgroundColor:[UIColor cyanColor]]; //为了方便查看imageView的范围
    [self.upDownStructureButton.titleLabel setBackgroundColor:[UIColor cyanColor]]; //为了方便查看titleLabel的范围
    [self.upDownStructureButton cjVerticalImageAndTitle:10];
    
    
    
    UIImage *image2 = [UIImage cj_imageWithColor:[UIColor cyanColor] size:CGSizeMake(40, 40)];
    [self.button2 setImage:image2 forState:UIControlStateNormal];
    [self.button2 setTitle:@"测试左右结构的文字" forState:UIControlStateNormal];
    //[self.button2.imageView setBackgroundColor:[UIColor cyanColor]]; //为了方便查看imageView的范围
    [self.button2.titleLabel setBackgroundColor:[UIColor cyanColor]]; //为了方便查看titleLabel的范围
    [self.button2 cjLeftImageOffset:10 imageAndTitleSpacing:10];
    
    
    
    self.multiClikcButton.cjMinClickInterval = 2;
    
    
}


- (IBAction)multiClickAction:(id)sender {
    NSLog(@"重复点击了");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
