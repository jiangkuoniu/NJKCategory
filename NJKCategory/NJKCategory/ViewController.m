//
//  ViewController.m
//  NJKCategory
//
//  Created by NJK on 2018/9/13.
//  Copyright © 2018年 NJK. All rights reserved.
//

#import "ViewController.h"

#import "NJK_Kit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.njk_backgroundColor([UIColor whiteColor]);
    
    UIButton * button = [UIButton new];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button setEnlargeEdgeWithTop:20 right:20 bottom:20 left:20];
    [self.view addSubview:button];
    
    UIView * redView = [[UIView alloc] initWithFrame:CGRectMake(150, 200, 100, 100)];
    redView.njk_backgroundColor([UIColor redColor]);
    [redView viewShadowPathWithColor:[UIColor blueColor] shadowPathType:LeShadowPathAround shadowOpacity:10 shadowRadius:100 shadowPathWidth:100];
    [self.view addSubview:redView];
}


@end
