//
//  PhoneConfViewController.m
//  PhoneConf
//
//  Created by cayoon simon on 13-6-20.
//  Copyright 2013年 eting. All rights reserved.
//

#import "PhoneConfViewController.h"

@implementation PhoneConfViewController

@synthesize tabController;
@synthesize usrName;
@synthesize passWrd;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.

- (void)viewDidLoad
{
    [super viewDidLoad];  
    usrName.enabled = NO;
    passWrd.enabled = NO;
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    
    [tabController release];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(IBAction)login:(id)sender{

#if 0
    ConfRoomController* exchange = [[ConfRoomController alloc] initWithNibName:@"ConfRoom" bundle:nil];
    NSLog(@"ok,exchange start\n");
    self.view.window.rootViewController = exchange;
    NSLog(@"it`s worked\n");
#endif
    


    MainTabCtl *tabBar = [[MainTabCtl alloc] init];
    tabBar.selectedIndex = 0;
    [self presentModalViewController : tabBar animated:YES];
    
}

-(void)hidekeyboard:(NSSet *)touches withEvent:(UIEvent *)event
{
    //隐藏键盘
//    [ resignFirstResponder];
}



@end
