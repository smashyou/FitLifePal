//
//  FoodTableVC.m
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import "FoodTableVC.h"
#import "FoodData.h"
#import "FoodCell.h"
#import "FoodDetailsVC.h"

@interface FoodTableVC ()

@end

@implementation FoodTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Diet";
    self.foods = [FoodData fetchData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.foods count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FoodCell *cell = [tableView dequeueReusableCellWithIdentifier:@"foodCell" forIndexPath:indexPath];
    
    FoodData *cellFood = [self.foods objectAtIndex:indexPath.row];
    
    cell.cellFood = cellFood;
    cell.textLabel.text = cell.cellFood.title;
    
    return cell;
}

#pragma mark - Navigation

//preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showFoodDetails"] && [segue.destinationViewController isKindOfClass:[FoodDetailsVC class]])
         {
             FoodCell *senderCell = (FoodCell *)sender;
             FoodDetailsVC *targetVC = segue.destinationViewController;
             targetVC.currentFood = senderCell.cellFood;
         }
}


@end
