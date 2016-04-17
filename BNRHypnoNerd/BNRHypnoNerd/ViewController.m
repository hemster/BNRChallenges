//
//  ViewController.m
//  BNRHypnoNerd
//
//  Created by zj-db0562 on 4/17/16.
//  Copyright © 2016 zj-db0562. All rights reserved.
//

#import "ViewController.h"
#import "BNRHypnosisView.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
        
        UIImage *i = [UIImage imageNamed:@"icon-01_00@2x"];
        
        self.tabBarItem.image = i;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"vc loaded its view");
}

- (void)loadView {
    BNRHypnosisView *view = [[BNRHypnosisView alloc] init];
    self.view = view;
}

@end
