//
//  FoodData.h
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FoodData : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *category;
@property (nonatomic, copy) NSString *createdOn;
@property (nonatomic, copy) NSString *author;

+ (NSArray *)fetchData;

@end
