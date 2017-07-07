//
//  Food.m
//  FitLifePal
//
//  Created by John You on 12/21/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import "Food.h"

@implementation Food
@synthesize item_id, item_name, brand_name, nf_calories;

-(id)initWithFoodID: (NSString *)fID andFoodName: (NSString *)fName andFoodBrand: (NSString *)fBrand andFoodCalories: (NSString *)fCalories{
    
    self = [super init];
    if (self){
        item_id = fID;
        item_name = fName;
        brand_name = fBrand;
        nf_calories = fCalories;
    }
    
    return self;
}

@end
