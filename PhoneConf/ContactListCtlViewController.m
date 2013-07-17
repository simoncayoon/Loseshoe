//
//  ContactListCtlViewController.m
//  PhoneConf
//
//  Created by simon_cayoon on 13-7-2.
//  Copyright (c) 2013年 eting. All rights reserved.
//

#import "ContactListCtlViewController.h"

@interface ContactListCtlViewController ()

@end

@implementation ContactListCtlViewController
@synthesize numContent;
@synthesize nameContent;
@synthesize selectBtn;
@synthesize myData;

bool selectState = YES;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    self.tableView.tableFooterView = [[UIView alloc] init];
    nameContent = [[NSMutableArray alloc] initWithObjects:@"王阳明", @"罗玉林", @"谢冰涵", @"陈坤", @"罗茂忠", @"张正东", @"梁梅", @"刘旺", nil];
    numContent = [[NSMutableArray alloc] initWithObjects:@"13689082923", @"13511913873", @"15180832509", @"13608513145", @"13885151693", @"18286032208", @"15186967625", @"15329106471", nil];
    NSArray *dataArray = [[NSArray alloc] initWithObjects:@"王阳明", @"13689082923",@"罗玉林",@"13511913873", @"谢冰涵", @"15180832509",@"陈坤", @"13608513145",@"罗茂忠",@"13885151693", @"张正东",@"18286032208", @"梁梅",@"15186967625",  @"刘旺", @"15329106471",nil];
    [myData dictionaryWithValuesForKeys:dataArray];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.allowsMultipleSelectionDuringEditing = YES;

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    return self.numContent.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"Cell%d%d",[indexPath section], [indexPath row]];
    NewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil){
        cell = [[NewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier];
        cell.usrName.text = [nameContent objectAtIndex:[indexPath row]];
        cell.phoneNum.text = [numContent objectAtIndex:[indexPath row]];
    }
    cell.tag = [indexPath row];
    
    return cell;
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
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
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

    NSLog(@"click happend~~~~~");
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    NewCell* cell = (NewCell*)[self.tableView cellForRowAtIndexPath:indexPath];
    [cell setState:(!cell.checkState)];
}

-(void) selectAll:(BOOL)state{
    
    NSArray* anArrayOfIndexPath = [NSArray arrayWithArray:[self.tableView indexPathsForVisibleRows]];
    for(int i=0;i<5; i++){
        NSIndexPath* indexPath = [anArrayOfIndexPath objectAtIndex:i];
        NewCell* myAllCell = (NewCell*)[self.tableView cellForRowAtIndexPath:indexPath];
        NSLog(@"the cell selectState is :%@",myAllCell.checkState ? @"YES":@"NO");
        [myAllCell setState:state];
    }
}

-(NSMutableDictionary*) dataFilter{

    NSMutableDictionary *dataList = [[NSMutableDictionary alloc] init];
    return dataList;
}

@end
