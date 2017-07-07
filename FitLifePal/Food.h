//
//  Food.h
//  FitLifePal
//
//  Created by John You on 12/21/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Food : NSObject

@property (strong, nonatomic) NSString *item_id;
@property (strong, nonatomic) NSString *item_name;
@property (strong, nonatomic) NSString *brand_name;
@property (strong, nonatomic) NSString *nf_calories;

#pragma mark -
#pragma mark Class Methods

-(id)initWithFoodID: (NSString *)fID andFoodName: (NSString *)fName andFoodBrand: (NSString *)fBrand andFoodCalories: (NSString *)fCalories;

@end
