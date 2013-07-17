//
//  PasswrdConfig.m
//  PhoneConf
//
//  Created by cayoon simon on 13-6-28.
//  Copyright 2013年 eting. All rights reserved.
//

#import "PasswrdConfig.h"

@implementation PasswrdConfig
@synthesize elderPasswrd;
@synthesize newPasswrd;
@synthesize confirmDone;

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
    elderPasswrd.placeholder = @"请输入旧密码";
    newPasswrd.placeholder = @"请输入新密码";
    confirmDone.placeholder = @"请再次输入新密码";
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setElderPasswrd:nil];
    [self setNewPasswrd:nil];
    [self setConfirmDone:nil];
    [self setBackBtn_passConf:nil];
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
    [elderPasswrd release];
    [newPasswrd release];
    [confirmDone release];
    [_backBtn_passConf release];
    [super dealloc];
}
- (IBAction)backSysConfig:(id)sender {
    
    SysConfig* mainView = [[SysConfig alloc] init];
    [self presentModalViewController:mainView animated:YES];
}
@end
