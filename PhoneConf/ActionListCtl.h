//
//  ActionListCtl.h
//  PhoneConf
//
//  Created by cayoon simon on 13-6-27.
//  Copyright 2013年 eting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActionListCtl : UITableViewController{

    NSMutableArray* arrayRow;
    NSMutableDictionary* myDataDic;
    UITableView* actionList;
}

@property(retain, nonatomic) NSMutableArray* arrayRow;
@property(retain, nonatomic) UITableView* actionList;
@property(retain, nonatomic) NSMutableDictionary* myDataDic;
-(void) addCell;

@end
