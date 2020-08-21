//
//  ViewController.m
//  NJKCategory
//
//  Created by NJK on 2018/9/13.
//  Copyright © 2018年 NJK. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+JKNButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton * button  = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    
    button.backgroundColor = [UIColor greenColor];
    
    NSLog(@"%@",button.textTitle);
    
    [self.view addSubview:button];
}


@end
