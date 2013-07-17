//
//  NewCell.h
//  PhoneConf
//
//  Created by simon_cayoon on 13-7-10.
//  Copyright (c) 2013年 eting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewCell : UITableViewCell{
    
    NSNumber* boolObj;
    bool checkState ;
    UIButton* selectBtn;
    UITextField* phoneNum;
    UILabel* usrName;
}

@property (nonatomic, readwrite) bool checkState;
@property (nonatomic, retain) UILabel* usrName;
@property (nonatomic, retain) UIButton* selectBtn;
@property (nonatomic, retain) UITextField* phoneNum;

-(void) setState:(BOOL)state;

@end
