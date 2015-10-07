//
//  ViewController.m
//  ChiSha
//
//  Created by Chief Tse on 15/10/7.
//  Copyright © 2015年 Chief Tse. All rights reserved.
//

#import "ViewController.h"
#import "SMRotaryWheel.h"
#import "SMRotaryProtocol.h"

@interface ViewController ()<SMRotaryProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SMRotaryWheel *wheel = [[SMRotaryWheel alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetWidth(self.view.bounds))
                                                    andDelegate:self
                                                   withSections:1];
    
    [self.view addSubview:wheel];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)wheelDidChangeValue:(NSString *)newValue{
    NSLog(@"%@",newValue);
}

@end
