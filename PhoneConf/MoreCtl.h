//
//  MoreCtl.h
//  PhoneConf
//
//  Created by cayoon simon on 13-6-24.
//  Copyright 2013年 eting. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SysConfig.h"

@interface MoreCtl : UIViewController {
    UIImageView *systemConfig;
    UIImageView *confNotification;
    UIImageView *addBookUpload;
    UIImageView *aboutDoc;
}

@property (nonatomic, retain) IBOutlet UIImageView *systemConfig;
@property (nonatomic, retain) IBOutlet UIImageView *confNotification;
@property (nonatomic, retain) IBOutlet UIImageView *addBookUpload;
@property (nonatomic, retain) IBOutlet UIImageView *aboutDoc;

@end
