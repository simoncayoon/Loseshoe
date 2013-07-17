//
//  PhoneConfAppDelegate.h
//  PhoneConf
//
//  Created by cayoon simon on 13-6-20.
//  Copyright 2013年 eting. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PhoneConfViewController;

@interface PhoneConfAppDelegate : NSObject <UIApplicationDelegate> {
    UIView *_ConferenceOption;
}


@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet PhoneConfViewController *viewController;

@property (nonatomic, retain) IBOutlet UIView *ConferenceOption;

@end
