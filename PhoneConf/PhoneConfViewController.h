//
//  PhoneConfViewController.h
//  PhoneConf
//
//  Created by cayoon simon on 13-6-20.
//  Copyright 2013年 eting. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainTabCtl.h"


@interface PhoneConfViewController : UIViewController{
    UIButton* loginBtn;
    MainTabCtl* tabController;
    
    UITextField* usrName;
    UITextField* passWrd;
    
}
@property(nonatomic, retain) MainTabCtl* tabController;
@property(nonatomic, retain)IBOutlet UITextField* usrName;
@property(nonatomic, retain)IBOutlet UITextField* passWrd;


-(IBAction)login:(id)sender;
-(IBAction)hidekeyboard:(NSSet *)touches withEvent:(UIEvent *)event;


@end
