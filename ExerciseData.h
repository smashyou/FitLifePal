//
//  ExerciseData.h
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define MUSCLE_GROUP_NUMBER @"Number of mucsle group"
#define MUSCLE_GROUP_NAME @"Name of mucsle group"
#define MUSCLE_GROUP_PICTURE @"Picture of muscle group"
#define EXERCISE_NUMBER @"Number of exercise"
#define EXERCISE_NAME @"Name of exercise"
#define EXERCISE_PICTURE @"Picture of exercise"
#define EXERCISE_DESCRIPTION @"Description of exercise"

@interface ExerciseData : NSObject

+ (NSArray *) getMuscleGroups; //Muscle Groups, data for the first table tab Training
+ (NSArray *) getAllExercises;
+ (NSArray *) getExercisesForGroup:(int)groupNumber; //Training for selected muscle groups, the data for the second tab of the table Training
+ (NSArray *) getAllExercisePictures;
+ (NSDictionary *) getDetailsForExerciseWithNumber:(int)exerciseNumber;
+ (NSArray *) getPicturesForExercise:(int)exerciseNumber;

@end
