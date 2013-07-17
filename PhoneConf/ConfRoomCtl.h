//
//  ConfRoomCtl.h
//  PhoneConf
//
//  Created by cayoon simon on 13-6-24.
//  Copyright 2013年 eting. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ActionListCtl.h"
#import "MainTabCtl.h"
#import "AddressBookCtl.h"

@interface ConfRoomCtl : UIViewController{
    
    UIImageView* imageBackground;
    
    UIButton* listContacts;
    UITextField* addNum;
    UIButton* startConf;
    UIImageView* signUp;
    UIImageView* speak;
    UIButton* addAction;
    
    ActionListCtl* confAction;
    
}
@property (nonatomic, retain)IBOutlet UIImageView* imageBackground;

@property (nonatomic, retain)IBOutlet UIButton* listContacts;
@property (nonatomic, retain) IBOutlet UITextField *addNum;

@property (nonatomic, retain) IBOutlet UIButton *startConf;
@property (nonatomic, retain) IBOutlet UIImageView *signUp;
@property (nonatomic, retain) IBOutlet UIImageView *speak;
@property (nonatomic, retain) IBOutlet UIButton *addAction;

//the element under roomTableCell



- (IBAction)startConference:(id)sender;
- (IBAction)addToList:(id)sender;
- (IBAction)toContactList:(id)sender;


@end
