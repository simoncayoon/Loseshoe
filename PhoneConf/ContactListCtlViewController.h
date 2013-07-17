//
//  ContactListCtlViewController.h
//  PhoneConf
//
//  Created by simon_cayoon on 13-7-2.
//  Copyright (c) 2013年 eting. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewCell.h"

@interface ContactListCtlViewController : UITableViewController<UITableViewDataSource>{
    
    NSMutableArray* nameContent;
    NSMutableArray* numContent;
    NSDictionary* myData;
}

@property(nonatomic, retain) NSMutableArray* numContent;
@property(nonatomic, retain) NSMutableArray* nameContent;
@property(nonatomic, retain) UIButton* selectBtn;
@property(nonatomic, retain) NSDictionary* myData;

-(void) selectAll:(BOOL)state;
-(NSMutableDictionary*) dataFilter;


@end
