//
//  ActionListCtl.m
//  PhoneConf
//
//  Created by cayoon simon on 13-6-27.
//  Copyright 2013年 eting. All rights reserved.
//

#import "ActionListCtl.h"


@implementation ActionListCtl

@synthesize arrayRow;
@synthesize actionList;
@synthesize myDataDic;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    arrayRow = [[NSMutableArray alloc] init ];
    myDataDic = [[NSMutableDictionary alloc] init];
    self.tableView.tableFooterView = [[UIView alloc]init];
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
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    NSLog(@"invoking numberOfRowInSection count:%d", self.arrayRow.count);
    return [self.arrayRow count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * nul = [NSString stringWithFormat:@"cell%d",indexPath.row];
    UITableViewCell *Cell = [tableView dequeueReusableCellWithIdentifier:nul];
    //Cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    Cell.textLabel.textAlignment = UITextAlignmentLeft;
    if(Cell == nil){
        Cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier: nul];
        
        //add cell head portrait
        UIImageView *clientPortrait = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 44, 40)];
        [clientPortrait setImage:[UIImage imageNamed:@"toux1.png"]];
        //clientPortrait.tag = indexPath.row;
        //        [clientPortrait addTarget:self action:@selector(cancelKeyBoard:) forControlEvents:UIControlEventEditingDidEnd];
        
        //add client state
        UIImageView* holdingState = [[UIImageView alloc] initWithFrame:CGRectMake(40, 18, 23, 18)];
        [holdingState setImage:[UIImage imageNamed:@"icon_bc.png"]];
        [holdingState setHidden:YES];
        
        //add client name
        UILabel* clientName = [[UILabel alloc] initWithFrame:CGRectMake(71, 0, 61, 21)];
        clientName.text = @"无姓名";
        //[clientName setTag:[indexPath row]];
        clientName.font = [UIFont fontWithName:@"Helvetica" size:14];
        
        //add clientNum
        UITextField* clientNum = [[UITextField alloc] initWithFrame:CGRectMake(71, 20, 134, 25)];
        clientNum.text = (NSString*)[self.arrayRow objectAtIndex:[indexPath row]];
        clientNum.enabled = NO;
        //[clientNum setTag:[indexPath row]];
        clientNum.font = [UIFont fontWithName:@"Helvetica" size:17];
        
        //add interrupt & listening
        
        UIButton* interState = [[UIButton alloc] initWithFrame:CGRectMake(218, 18, 39, 19)];
        [interState setImage:[UIImage imageNamed:@"icon1.png"] forState:UIControlStateNormal];
        interState.hidden = YES;
        
        UIButton* listening = [[UIButton alloc] initWithFrame:CGRectMake(217, 18, 41, 19)];
        listening.hidden = YES;
        [listening setImage:[UIImage imageNamed:@"icon3.png"] forState:UIControlStateNormal];
        
        
        [Cell.contentView addSubview:clientPortrait];
        [Cell.contentView addSubview:clientName];
        [Cell.contentView addSubview:clientNum];
        [Cell.contentView addSubview:holdingState];
        [Cell.contentView addSubview:interState];
        [Cell.contentView addSubview:listening];
        Cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        [clientPortrait release];
        [clientNum release];
        [clientName release];
        [holdingState release];
        [interState release];
        [listening release];
    }
    NSLog(@"invokint cell finish");
    return Cell;
    
}

-(void) addCell{
    
    NSLog(@"insert element now  ....ing!!");
    NSIndexPath* indexPath = [NSIndexPath indexPathForRow:[arrayRow count]-1 inSection:0];
    [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:@"Nib name" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}

@end
