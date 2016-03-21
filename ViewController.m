//
//  ViewController.m
//  CATransition图片轮播
//
//  Created by Jack on 15/12/10.
//  Copyright © 2015年 Jack. All rights reserved.
//

#import "ViewController.h"
#import "XYPageControlView.h"
@interface ViewController ()

@property (strong, nonatomic)NSArray *picturs;

@property (strong, nonatomic) XYPageControlView *pageControlView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.pageControlView];

    [self.pageControlView updateUIWithImages:self.picturs];
    //图片点击回调
    [self.pageControlView setClickImage:^(NSString *nn) {
        NSLog(@"点击%@",nn);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -- getter

- (XYPageControlView *)pageControlView{
    if (!_pageControlView) {
        _pageControlView = [[XYPageControlView alloc]initWithFrame:CGRectMake(0, 44, CGRectGetWidth(self.view.frame), 300)];
    }
    return _pageControlView;
}

- (NSArray *)picturs{
    if (!_picturs) {
        _picturs = @[@"0", @"1", @"2", @"3"];
    }
    return _picturs;
}

//@[@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13", @"14"]
@end