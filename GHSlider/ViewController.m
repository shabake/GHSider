//
//  ViewController.m
//  GHSlider
//
//  Created by mac on 2020/8/4.
//  Copyright © 2020 mac. All rights reserved.
//

#import "ViewController.h"
#import "GHSider.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    GHSider *sider = [[GHSider alloc]init];
    
    sider.frame = CGRectMake(100, 100, 200, 44);
    sider.layer.masksToBounds = YES;
    sider.layer.cornerRadius = 10;
    [self.view addSubview:sider];
    
}


@end
