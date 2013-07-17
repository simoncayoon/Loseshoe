//
//  MoreCtl.m
//  PhoneConf
//
//  Created by cayoon simon on 13-6-24.
//  Copyright 2013年 eting. All rights reserved.
//

#import "MoreCtl.h"

@implementation MoreCtl
@synthesize systemConfig;
@synthesize confNotification;
@synthesize addBookUpload;
@synthesize aboutDoc;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    systemConfig.userInteractionEnabled = YES;
    UITapGestureRecognizer* singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onClickImage)];
    [systemConfig addGestureRecognizer:singleTap];
    [singleTap release];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setSystemConfig:nil];
    [self setConfNotification:nil];
    [self setAddBookUpload:nil];
    [self setAboutDoc:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [systemConfig release];
    [confNotification release];
    [addBookUpload release];
    [aboutDoc release];
    [super dealloc];
}


-(void) onClickImage{

    NSLog(@"systemConfig click is enable!");
    SysConfig* configView = [[SysConfig alloc] init];
    [self presentModalViewController:configView animated:YES];
}
@end
