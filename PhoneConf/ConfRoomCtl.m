//
//  ConfRoomCtl.m
//  PhoneConf
//
//  Created by cayoon simon on 13-6-24.
//  Copyright 2013年 eting. All rights reserved.
//

#import "ConfRoomCtl.h"

@implementation ConfRoomCtl

@synthesize imageBackground;
@synthesize listContacts;
@synthesize addNum;
@synthesize startConf;
@synthesize signUp;
@synthesize speak;
@synthesize addAction;

bool exChange = YES;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    confAction  = [[ActionListCtl alloc] init];
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
    addNum.placeholder = @"添加号码";
    
    [imageBackground addSubview:listContacts];
    
    UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    tapGr.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapGr];
    [tapGr release];
    
//    self.tabBarItem.frame = copacity.frame;
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setAddNum:nil];
    [self setStartConf:nil];
    [self setSignUp:nil];
    [self setSpeak:nil];
    [self setAddAction:nil];
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
    [addNum release];
    [startConf release];
    [signUp release];
    [speak release];
    [addAction release];
    [super dealloc];
}

- (IBAction)startConference:(id)sender {
    
    self.signUp.hidden = NO;
    self.speak.hidden = NO;
    if(exChange == YES){
        [startConf setImage:[UIImage imageNamed:@"end.png"] forState:UIControlStateNormal];
        exChange = NO;
        //这里向最近“通讯记录”添加数据
        
    }
    else if(exChange == NO){
        [startConf setImage:[UIImage imageNamed:@"start.png"] forState:UIControlStateNormal];
        self.signUp.hidden = YES;
        self.speak.hidden = YES;
        exChange = YES;
        
        //这里清除tableview中的数据
        [confAction.arrayRow removeAllObjects];
        [confAction.tableView removeFromSuperview];
    }
}

- (IBAction)addToList:(id)sender {
    if(addNum.text.length == 0){
        //输入出错提示
        [addNum setPlaceholder:@"请在这里输添加正确的电话号码！"];
        NSLog(@"pls insert phone number!!!\n");
    }
    else{
        //添加联系人列表
        NSLog(@"step in confaction!");
        [confAction.arrayRow addObject:addNum.text];
        [confAction addCell];
        [confAction.tableView setFrame:CGRectMake(0, 100, 320, 197)];
        [self.view addSubview:confAction.tableView];
        [confAction.tableView reloadData];
    }
}

- (IBAction)toContactList:(id)sender {
    
    self.tabBarController.selectedIndex = 1;
    [self.tabBarController.tabBarController.delegate tabBarController:self.tabBarController didSelectViewController:[self.tabBarController.viewControllers objectAtIndex:1]];
}

-(void)viewTapped:(UITapGestureRecognizer*)tapGr{
    [addNum resignFirstResponder];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [textField selectAll:self.addNum];
}
        
@end
