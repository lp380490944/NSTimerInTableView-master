//
//  ViewController.m
//  TestNSTimer
//
//  Created by wyz on 15/11/21.
//  Copyright © 2015年 wyz. All rights reserved.
//

#import "ViewController.h"
#import "NSTimerCellTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong) NSMutableArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UINib *NSTimerCellTableViewCell = [UINib nibWithNibName:@"NSTimerCellTableViewCell" bundle:nil];
    [self.tableView registerNib:NSTimerCellTableViewCell forCellReuseIdentifier:@"NSTimerCellTableViewCell"];
    
    self.dataArray=[[NSMutableArray alloc] init];
    [self.dataArray addObject:@"2016-11-22 13:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 19:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 22:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 23:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 21:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 19:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 18:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 22:40:00.000"];
    [self.dataArray addObject:@"2016-11-21 22:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 21:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 20:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 18:20:00.000"];
    [self.dataArray addObject:@"2016-11-22 13:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 19:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 22:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 23:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 21:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 19:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 18:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 22:40:00.000"];
    [self.dataArray addObject:@"2016-11-21 22:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 21:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 20:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 18:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 19:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 22:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 23:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 21:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 19:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 18:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 22:40:00.000"];
    [self.dataArray addObject:@"2016-11-21 22:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 21:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 20:20:00.000"];
    [self.dataArray addObject:@"2016-11-21 18:20:00.000"];


}

#pragma mark tableViewDelegate




#pragma mark tableViewDatasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
        return   self.dataArray.count;
    
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    NSTimerCellTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"NSTimerCellTableViewCell"];
    cell.endTime=self.dataArray[indexPath.row];
    return cell;
    
}

- (void)dealloc
{
    
    NSLog( @"控制器被销毁了");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
