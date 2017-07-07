//
//  ExercisesTableVC.h
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExercisesTableVC : UITableViewController

@property (nonatomic) int muscleGroupNumber;
@property (strong, nonatomic) NSArray *exercises;
@property (strong, nonatomic) NSString *muscleGroupName;

@end
