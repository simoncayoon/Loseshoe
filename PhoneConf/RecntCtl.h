//
//  RecntCtl.h
//  PhoneConf
//
//  Created by cayoon simon on 13-6-24.
//  Copyright 2013年 eting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecntCtl : UIViewController <UITableViewDataSource>{
    
    UITableView* recentList;
}
@property(nonatomic, retain) UITableView* recentList;

@end
