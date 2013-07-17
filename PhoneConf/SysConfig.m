//
//  SysConfig.m
//  PhoneConf
//
//  Created by cayoon simon on 13-6-28.
//  Copyright 2013年 eting. All rights reserved.
//

#import "SysConfig.h"

@implementation SysConfig


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
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setBackToMain:nil];
    [self setToUsrInfoBtn:nil];
    [self setModifyBtn:nil];
    [self setConfNumBtn:nil];
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
    [_backToMain release];
    [_toUsrInfoBtn release];
    [_modifyBtn release];
    [_confNumBtn release];
    [super dealloc];
}
- (IBAction)toUsrInfoView:(id)sender {
    
    UseInfo* myUsrInfo = [[UseInfo alloc] init];
    [self presentModalViewController:myUsrInfo animated:YES];
}

- (IBAction)toModifyPassward:(id)sender {
    
    PasswrdConfig* myPasswrdView = [[PasswrdConfig alloc] init];
    [self presentModalViewController:myPasswrdView animated:YES];

}

- (IBAction)toConfNumView:(id)sender {
    
    SetPhoneNum* mySetNum = [[SetPhoneNum alloc] init];
    [self presentModalViewController:mySetNum animated:YES];
}

- (IBAction)backMainView:(id)sender {
    
    MainTabCtl* mainView = [[MainTabCtl alloc] init];
    mainView.selectedIndex = 3;
    [self presentModalViewController:mainView animated:YES];
}
@end
