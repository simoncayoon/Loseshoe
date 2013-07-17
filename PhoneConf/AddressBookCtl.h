//
//  AddressBookCtl.h
//  PhoneConf
//
//  Created by cayoon simon on 13-6-24.
//  Copyright 2013年 eting. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactListCtlViewController.h"

@interface AddressBookCtl : UIViewController<UITableViewDataSource>{

    ContactListCtlViewController* contactContentList;
    UITextField* serchEdit;
    UIButton* allSelBtn;
}

@property(retain, nonatomic) ContactListCtlViewController* contactContentList;
@property (retain, nonatomic) IBOutlet UITextField *serchEdit;
@property (retain, nonatomic) IBOutlet UIButton *allSelBtn;
@property (retain, nonatomic) IBOutlet UIButton *addBtn;

- (IBAction)allSelect:(id)sender;
- (IBAction)addToActionList:(id)sender;

@end
