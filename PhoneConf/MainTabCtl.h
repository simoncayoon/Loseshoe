//
//  MainTabCtl.h
//  PhoneConf
//
//  Created by cayoon simon on 13-6-22.
//  Copyright 2013年 eting. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConfRoomCtl.h"
#import "AddressBookCtl.h"
#import "RecntCtl.h"
#import "MoreCtl.h"

@interface MainTabCtl : UITabBarController<UITabBarControllerDelegate>{
    UINavigationController* naviForEach;
    UINavigationController* naviForEach1;
    NSMutableArray* viewArray;
    
}
@property(nonatomic, retain) NSMutableArray* viewArray;

-(void) specifiedItem;

@end
