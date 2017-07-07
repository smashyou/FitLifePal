//
//  FoodSearchViewController.h
//  FitLifePal
//
//  Created by John You on 12/23/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodSearchViewController : UIViewController

@property (nonatomic, strong) NSMutableDictionary * jsonDict;
@property (nonatomic, strong) NSMutableArray * hitsArray;
//@property (nonatomic, strong) NSMutableDictionary * fieldsDict;
@property (nonatomic, strong) NSMutableArray * foodArray;
@property (strong, nonatomic) UITextField *searchBarFood;
@property (strong, nonatomic) UIButton *searchButton;

@property (strong, nonatomic) NSString *itemName;
@property (strong, nonatomic) NSString *itemCalories;
@property (strong, nonatomic) NSString *itemFat;
@property (strong, nonatomic) NSString *itemProtein;
@property (strong, nonatomic) NSString *itemCarb;


@property (strong, nonatomic) IBOutlet UITextView *foodItemName;
@property (strong, nonatomic) IBOutlet UITextField *foodItemCalories;
@property (strong, nonatomic) IBOutlet UITextField *foodItemFat;
@property (strong, nonatomic) IBOutlet UITextField *foodItemProtein;
@property (strong, nonatomic) IBOutlet UITextField *foodItemCarb;

-(IBAction)search:(id)sender;



#pragma mark -
#pragma mark Class Methods
- (void) retrieveData;


@end
