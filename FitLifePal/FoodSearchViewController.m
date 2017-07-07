//
//  FoodSearchViewController.m
//  FitLifePal
//
//  Created by John You on 12/23/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import "FoodSearchViewController.h"

#define endpoint @"https://api.nutritionix.com/v1_1/search"
#define itemEndpoint @"https://api.nutritionix.com/v1_1/item"
#define dataURL @"results=0:20&fields=item_name,brand_name,item_id,nf_calories"
#define APPID @"appId=ccce1cce"
#define APPKEY @"appKey=cec01a1c07de27095098244a417931fc"

@interface FoodSearchViewController ()

@end

@implementation FoodSearchViewController

@synthesize jsonDict, hitsArray, foodArray, foodItemCarb, foodItemProtein, foodItemFat, foodItemCalories, foodItemName;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Food Search";
    
    foodItemName.layer.borderWidth = 2.0f;
    foodItemName.layer.borderColor = [[UIColor grayColor] CGColor];
    foodItemName.layer.cornerRadius = 8;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// run search
-(IBAction)search:(id)sender {
    [self retrieveData];

}




#pragma mark -
#pragma mark Class Methods

// fetch json data and parse
- (void) retrieveData{
   
    @try{
        // search endpoint and get item_id
        NSString *urlStr = [NSString stringWithFormat:@"%@/%@?%@&%@&%@", endpoint,
                            self.searchBarFood.text, dataURL, APPID, APPKEY];
        NSLog(@"%@", urlStr);
        NSURL *url = [NSURL URLWithString:urlStr];
        NSData *data = [NSData dataWithContentsOfURL:url];
        
        jsonDict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        hitsArray = [[NSMutableArray alloc] initWithArray:[jsonDict objectForKey:@"hits"]];
        
        NSLog(@"Testing hitsArray...%@",[[hitsArray objectAtIndex:1] objectForKey:@"fields"]);
        
        //Set up food array
        //foodArray = [[NSMutableArray alloc]init];
        
        /*
         //loop through hitsArray
         for (int i=0; i<hitsArray.count; i++){
         
         //Create our food object
         // NSString *fID = [[hitsArray objectAtIndex:i] objectForKey:@"fields"];
         NSDictionary *fieldsDict = [[hitsArray objectAtIndex:i] objectForKey:@"fields"];
         NSString *fID = [fieldsDict objectForKey:@"item_id"];
         NSString *fName = [fieldsDict objectForKey:@"item_name"];
         NSString *fBrand = [fieldsDict objectForKey:@"brand_name"];
         NSString *fCalories = [fieldsDict objectForKey:@"nf_calories"];
         
         NSLog(@"FEED fID= %@", fID);
         NSLog(@"FEED fName= %@", fName);
         NSLog(@"FEED fBrand= %@", fBrand);
         NSLog(@"FEED fCalories= %@", fCalories);
         //Add the food object to our foods array
         [foodArray addObject:[[Food alloc]initWithFoodID:fID andFoodName:fName andFoodBrand:fBrand andFoodCalories:fCalories]];
         
         }
         */
        
        NSDictionary *fieldsDict = [[hitsArray objectAtIndex:0] objectForKey:@"fields"];
        NSString *fID = [fieldsDict objectForKey:@"item_id"];
        
        
        
        // item endpoint and get nutrition facts
        NSString *urlStrItem = [NSString stringWithFormat:@"%@?id=%@&%@&%@", itemEndpoint, fID, APPID, APPKEY];
        NSLog(@"item_id url=>>> %@", urlStrItem);
        NSURL *itemUrl = [NSURL URLWithString:urlStrItem];
        NSData *itemData = [NSData dataWithContentsOfURL:itemUrl];
        
        NSDictionary *jsonItemDict = [NSJSONSerialization JSONObjectWithData:itemData options:kNilOptions error:nil];
        self.itemName = [jsonItemDict objectForKey:@"item_name"];
        self.itemCalories = [jsonItemDict objectForKey:@"nf_calories"];
        self.itemFat = [jsonItemDict objectForKey:@"nf_total_fat"];
        self.itemProtein = [jsonItemDict objectForKey:@"nf_protein"];
        self.itemCarb = [jsonItemDict objectForKey:@"nf_total_carbohydrate"];
        
        // checking logs
        NSLog(@"RESULTS..... %@",self.itemName);
        NSLog(@"RESULTS..... %@",self.itemCalories);
        NSLog(@"RESULTS..... %@",self.itemFat);
        NSLog(@"RESULTS..... %@",self.itemProtein);
        NSLog(@"RESULTS..... %@",self.itemCarb);
        
        foodItemName.text = [NSString stringWithFormat:@"%@", self.itemName];
        foodItemCalories.text = [NSString stringWithFormat:@"%@ Kcal", self.itemCalories];
        foodItemFat.text = [NSString stringWithFormat:@"%@g", self.itemFat];
        foodItemProtein.text = [NSString stringWithFormat:@"%@g", self.itemProtein];
        foodItemCarb.text = [NSString stringWithFormat:@"%@g", self.itemCarb];
        
    } @catch(NSException *exception) {
        
        NSLog(@"Exception:%@",exception);
        
    }
    
    

    
}

@end
