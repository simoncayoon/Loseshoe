//
//  AddressBookCtl.m
//  PhoneConf
//
//  Created by cayoon simon on 13-6-24.
//  Copyright 2013年 eting. All rights reserved.
//

#import "AddressBookCtl.h"

@implementation AddressBookCtl
@synthesize contactContentList;
@synthesize serchEdit;
@synthesize allSelBtn;

bool selState = NO;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    contactContentList = [[ContactListCtlViewController alloc] init];
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
    [contactContentList.tableView setFrame:CGRectMake(0, 66, 320, 310)];
    [self.view addSubview:contactContentList.tableView];
    serchEdit.placeholder = @"搜索联系人";
    
    UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    tapGr.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapGr];
    [tapGr release];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setSerchEdit:nil];
    [self setAllSelBtn:nil];
    [self setAddBtn:nil];
    [super viewDidUnload];
    [contactContentList release];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)viewTapped:(UITapGestureRecognizer*)tapGr{
    [serchEdit resignFirstResponder];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [textField selectAll:self.serchEdit];
}

- (void)dealloc {
    [serchEdit release];
    [allSelBtn release];
    [_addBtn release];
    [super dealloc];
}
- (IBAction)allSelect:(id)sender {
    
    if(NO == selState){
        [sender setImage:[UIImage imageNamed:@"goux_click.png"] forState:UIControlStateNormal];
    }else{
        [sender setImage:[UIImage imageNamed:@"goux_default.png"] forState:UIControlStateNormal];
    }
    [contactContentList selectAll:!selState];
    selState = !selState;
}

- (IBAction)addToActionList:(id)sender {
}
@end
