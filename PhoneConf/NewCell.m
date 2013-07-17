//
//  NewCell.m
//  PhoneConf
//
//  Created by simon_cayoon on 13-7-10.
//  Copyright (c) 2013年 eting. All rights reserved.
//

#import "NewCell.h"

@implementation NewCell

@synthesize selectBtn;
@synthesize phoneNum;
@synthesize usrName;

@synthesize checkState;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.checkState = NO;

        //勾线按钮
        selectBtn = [[UIButton alloc] initWithFrame:CGRectMake(15, 10, 22, 24)];
        selectBtn.enabled = NO;
        [selectBtn setImage:[UIImage imageNamed:@"goux_default.png"] forState:UIControlStateNormal];
        [selectBtn addTarget:self action:@selector(selected:) forControlEvents:UIControlEventTouchUpInside];
        
        //联系人姓名
        usrName = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, 74, 15)];
        
        //联系人号码
        phoneNum = [[UITextField alloc] initWithFrame:CGRectMake(45, 17, 182, 25)];
        phoneNum.enabled = NO;
        
        [self.contentView addSubview:selectBtn];
        [self.contentView addSubview:usrName];
        [self.contentView addSubview:phoneNum];
        
        [selectBtn release];
        [usrName release];
        [phoneNum release];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    
}

-(void) setState:(BOOL)state{

    self.checkState = state;
    if(checkState == YES){
        [self.selectBtn setImage:[UIImage imageNamed:@"goux_click.png"] forState:UIControlStateNormal];
    }else{
        [self.selectBtn setImage:[UIImage imageNamed:@"goux_default.png"] forState:UIControlStateNormal];
    }
    
    NSLog(@"the cell selectState is :%@",self.checkState ? @"YES":@"NO");
}

@end
