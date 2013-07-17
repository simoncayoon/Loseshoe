//
//  MainTabCtl.m
//  PhoneConf
//
//  Created by cayoon simon on 13-6-22.
//  Copyright 2013年 eting. All rights reserved.
//

#import "MainTabCtl.h"

@implementation MainTabCtl

@synthesize viewArray;

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
    ConfRoomCtl *confRoom = [[ConfRoomCtl alloc] init];
    AddressBookCtl *addBook = [[AddressBookCtl alloc] init];
    RecntCtl *recentContact = [[RecntCtl alloc] init];
    MoreCtl* more = [[MoreCtl alloc] init];
    
    // items是数组，每个成员都是UIViewController  
    [self setTitle:@"TabBarController"]; 
    
    //add view for each TabBarItem
    naviForEach = nil;
    viewArray = [[NSMutableArray alloc] initWithCapacity:4];
    
    //会议室 item
    naviForEach = [[UINavigationController alloc] initWithRootViewController:confRoom]; 
    confRoom.navigationItem.title = @"会议室";
    UITabBarItem* roomItem = [[UITabBarItem alloc] initWithTitle:@"会议室" image:[UIImage imageNamed:@"menu1.png"] tag:1];
    confRoom.tabBarItem = roomItem;
    [viewArray addObject:naviForEach];
    
    //addressbook item 
    naviForEach1 = [[UINavigationController alloc] initWithRootViewController:addBook];
    naviForEach1.tabBarItem = [addBook tabBarItem];
    addBook.navigationItem.title = @"通讯录";
    UITabBarItem* addBookItem = [[UITabBarItem alloc] initWithTitle:@"通讯录" image:[UIImage imageNamed:@"menu2.png"] tag:2];
    addBook.tabBarItem = addBookItem;
    [viewArray addObject:naviForEach1];
    
    //recently contact 
    naviForEach = [[UINavigationController alloc] initWithRootViewController:recentContact];
    recentContact.navigationItem.title = @"最近会议";
    UITabBarItem* recentItem = [[UITabBarItem alloc] initWithTitle:@"最近会议" image:[UIImage imageNamed:@"menu3.png"] tag:3];
    recentContact.tabBarItem = recentItem;
    [viewArray addObject:naviForEach];
    
    //more 
    naviForEach = [[UINavigationController alloc] initWithRootViewController:more];  
    naviForEach.tabBarItem = [more tabBarItem];
    UITabBarItem* moreItem = [[UITabBarItem alloc] initWithTitle:@"更多" image:[UIImage imageNamed:@"menu4.png"] tag:4];
    more.tabBarItem = moreItem;
    more.navigationItem.title = @"更多";
    [viewArray addObject:naviForEach];
    
    //加载到窗口Á
    self.viewControllers = viewArray;
    
    [confRoom release];
    [roomItem release];
    [naviForEach release];
    
    [addBook release];
    [addBookItem release];
    
    [recentItem release];
    [recentContact release];
    
    [more release];
    [moreItem release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (void)specifiedItem{
    
//    NSLog(@"view.count:%d", viewArray.count);
//    [self setSelectedViewController:[viewArray objectAtIndex:1]];
//    [self loadView];
    NSLog( @"当前的itemindex是：%d", self.tabBarController.selectedIndex);
    
    self.tabBarController.selectedIndex = 1;   // to actually switch to the controller (your code would work as well) - not sure if this does or not send the didSelectViewController: message to the delegate
    [self.tabBarController.delegate tabBarController:self.tabBarController didSelectViewController:[self.tabBarController.viewControllers objectAtIndex:1]];  // send didSelectViewController to the tabBarController delegate
}

-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)Item{

    if(Item.tag == 2){
        NSLog(@"yes invok sueeccd");
    }
}

@end
