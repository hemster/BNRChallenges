//
//  BNRReminderViewController.m
//  BNRHypnoNerd
//
//  Created by zj-db0562 on 4/17/16.
//  Copyright © 2016 zj-db0562. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, weak) IBOutlet UIButton *remindMeButton;

@end

@implementation BNRReminderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSArray *viewArray = [[NSBundle mainBundle] loadNibNamed:@"BNRReminderViewController" owner:self options:nil];
//    
//    for(UIView *view in viewArray) {
//        if(view.subviews) {
//            for(UIView *subview in view.subviews) {
//                if([subview isMemberOfClass:[UIImageView class]]) {
//                    NSLog(@"Tag: %ld", (long)subview.tag);
//                    NSLog(@"Image Found!: %@", ((UIImageView *)subview).image);
//                }
//            }
////            NSLog(@"Subview: %@", view.subviews);
//            view.backgroundColor = [UIColor blackColor];
//            
//        }
//    }
////    UIView *view = [[NSBundle mainBundle] loadNibNamed:@"BNRReminderViewController" owner:self options:nil][0];
    
    
    
    NSLog(@"BNRReminderViewController loaded its view");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UITabBarItem *tbi = self.tabBarItem;
        
        tbi.title = @"Reminder";
        
        UIImage *i = [UIImage imageNamed:@"icon-01_01@2x"];
        tbi.image = i;
    }
    return self;
}

- (IBAction)addReminder:(id)sender {
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
    
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"Hypnotize me!";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}

@end
