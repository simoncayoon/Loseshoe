//
//  PasswrdConfig.h
//  PhoneConf
//
//  Created by cayoon simon on 13-6-28.
//  Copyright 2013年 eting. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SysConfig.h"

@interface PasswrdConfig : UIViewController {
    UITextField *elderPasswrd;
    UITextField *newPasswrd;
    UITextField *confirmDone;
}

@property (retain, nonatomic) IBOutlet UIBarButtonItem *backBtn_passConf;
@property (nonatomic, retain) IBOutlet UITextField *elderPasswrd;
@property (nonatomic, retain, getter = theNewTitle) IBOutlet UITextField *newPasswrd;
@property (nonatomic, retain) IBOutlet UITextField *confirmDone;
- (IBAction)backSysConfig:(id)sender;

@end