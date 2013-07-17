//
//  SetPhoneNum.h
//  PhoneConf
//
//  Created by cayoon simon on 13-6-28.
//  Copyright 2013年 eting. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SysConfig.h"

@interface SetPhoneNum : UIViewController{

    UITextField* setNum;
}
@property (retain, nonatomic) IBOutlet UIBarButtonItem *backBtn_NumSet;
@property (retain, nonatomic) IBOutlet UITextField *setNum;
- (IBAction)backSysConfig:(id)sender;

@end
