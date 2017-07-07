//
//  FoodData.m
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import "FoodData.h"

@implementation FoodData

+ (NSArray *)fetchData

{    
    NSMutableArray *result = [NSMutableArray array];
    
    FoodData *item;
    item = [[FoodData alloc] init];
    item.category = @"Food";
    item.title = @"Weight Gain Diet";
    item.author = @"";
    item.createdOn = @"";
    item.text = @"3500+kcal example diet for a skinny guy who wants to weigh 180lbs/81kg. This can be too much at once if you’re only 135lbs/61kg or not enough if you’re very active. Individualize the diet based on your needs.\n\n1. Breakfast: 100g oats, 50g raisins, 1 scoop whey\n\n2. Snack: 100g mixed nuts or 1 liter milk or tuna sandwich\n\n3. Lunch: 200g white pasta, bolognese sause, parmesan cheese\n\n4. Snack: 100g mixed nuts or 1 liter milk or tuna sandwich\n\n5. Post workout shake: 1.5scoops whey, 60g oats, milk, banana\n\n6. Dinner: 200g white pasta, bolognese sause, parmesan cheese\n\n7. Pre bed: cottage cheese, berries, flax seed, fish oil";
    item.imageName = @"pitanie1.jpg";
    [result addObject:item];
    
    item = [[FoodData alloc] init];
    item.category = @"Food";
    item.title = @"Weight Loss Diet";
    item.author = @"";
    item.createdOn = @"";
    item.text = @"Example Fat Loss Diets. To lose fat: proteins, veggies, fruits and healthy fats with each meal. Carbs post workout only. Example fat loss diet:\n\n1. Breakfast: eggs with tomato & bell peppers, orange, green tea\n\n2. Snack: cottage cheese with apple\n\n3. Lunch: chicken, bok choy, tomato, chicory, olive oil\n\n4. Snack: mixed nuts\n\n5. Post workout: ground round, brown rice, mixed veggies, banana\n\n6. Dinner: chicken, spinach, baby carrots, pear\n\n7. Pre-bed snack: cottage cheese, berries, ground flax seeds, fish oil";
    item.imageName = @"pitanie2.jpg";
    [result addObject:item];
    
    item = [[FoodData alloc] init];
    item.category = @"Food";
    item.title = @"Drying Out Diet Plan";
    item.author = @"";
    item.createdOn = @"";
    item.text = @"Water Cycling Plan For Stage Ready:\n\n Make sure you lower sodium intake completely 72 hours before competition.\n\n Day 1: Carb Deplete – Less than 20g carbs per day. 9L of water\n\n Day 2: Same. 10L of water\n\nDay 3: Same. 11L of water\n\nDay 4: Same. 12L of water\n\nDay 5: Carb Load. Cut water up to 24 hours before your comp.\n\n*Drink the same proportion of water as day before. Thus if you are to cut water out at 12pm, drink 6l of water before 12pm. If you are to cut water by 6pm, you would therefore drink 9 litres. This is the same ratio as the day before when you take in to account the hours of the day.\n\nDay 6: (Day of Competition) ";
    item.imageName = @"pitanie3.jpg";
    [result addObject:item];
    
    return result;
}

@end
