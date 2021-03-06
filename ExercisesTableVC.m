//
//  ExercisesTableVC.m
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import "ExercisesTableVC.h"
#import "ExerciseData.h"
#import "ExerciseTableViewCell.h"
#import "ExerciseDetailsVC.h"

@interface ExercisesTableVC ()

@end

@implementation ExercisesTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.exercises = [ExerciseData getExercisesForGroup:self.muscleGroupNumber];
    self.navigationItem.title = self.muscleGroupName;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.exercises count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ExerciseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"exerciseCell" forIndexPath:indexPath];
    
    NSDictionary *exerciseDictionary = [self.exercises objectAtIndex:indexPath.row];
    
    cell.exerciseNumber = [[exerciseDictionary objectForKey:EXERCISE_NUMBER] integerValue];
    cell.textLabel.text = [exerciseDictionary objectForKey:EXERCISE_NAME];
    
    return cell;
}

#pragma mark - Navigation

// preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showExerciseDetails"] && [segue.destinationViewController isKindOfClass:[ExerciseDetailsVC class]])
    {
        ExerciseTableViewCell *senderCell = (ExerciseTableViewCell *)sender;
        ExerciseDetailsVC *targetVC = segue.destinationViewController;
        targetVC.exerciseNumber = senderCell.exerciseNumber;
    }
}


@end
