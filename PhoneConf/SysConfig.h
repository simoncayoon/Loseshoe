//
//  SysConfig.h
//  PhoneConf
//
//  Created by cayoon simon on 13-6-28.
//  Copyright 2013年 eting. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UseInfo.h"
#import "SetPhoneNum.h"
#import "PasswrdConfig.h"
#import "MainTabCtl.h"

@interface SysConfig : UIViewController{


}

@property(nonatomic, retain) UINavigationController* sysNavi_main;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *backToMain;
@property (retain, nonatomic) IBOutlet UIButton *toUsrInfoBtn;
@property (retain, nonatomic) IBOutlet UIButton *modifyBtn;
@property (retain, nonatomic) IBOutlet UIButton *confNumBtn;
- (IBAction)toUsrInfoView:(id)sender;
- (IBAction)toModifyPassward:(id)sender;
- (IBAction)toConfNumView:(id)sender;
- (IBAction)backMainView:(id)sender;

@end
