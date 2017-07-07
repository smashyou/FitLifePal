//
//  ExerciseDetailsVC.h
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExerciseDetailsVC : UIViewController

@property (nonatomic) int exerciseNumber;
@property (strong, nonatomic) NSDictionary *exerciseDetailsDictionary;
@property (strong, nonatomic) NSArray *exercisePictureArray;

@end
