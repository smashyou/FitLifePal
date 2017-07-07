//
//  CalculatedViewController.m
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import "CalculatedViewController.h"
#import "InputViewController.h"

@interface CalculatedViewController ()


@end


@implementation CalculatedViewController

@synthesize resultCalLabel;

NSInteger bulkCutIndex;
NSInteger carbSenIndex;
double totalCal = 0.0;
double ratio;
int carbInt;
int proteinInt;
int fatInt;

-(void)viewDidLoad {
    
    [super viewDidLoad];
    
    
}



/*
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier]isEqualToString:@"vc2"]) {
        UINavigationController *navController = segue.destinationViewController;
        
        InputViewController *vc2 = (InputViewController*)navController.topViewController;
        
        [vc2 setDelegate:self];
    }
}
*/



-(IBAction)bulkCutSelection:(id)sender {
    bulkCutIndex = [sender selectedSegmentIndex];
}

-(IBAction)carbSenIndex:(id)sender {
    carbSenIndex = [sender selectedSegmentIndex];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(IBAction)calculateMacro:(id)sender {
    
    
    if (bulkCutIndex == 0) {
        totalCal = ([_bmrLabel.text doubleValue]) + 500;
    }
    else {
        totalCal = ([_bmrLabel.text doubleValue]) - 500;
    }
    
    if (carbSenIndex == 0){
        carbInt = (totalCal * .35)/4;
        proteinInt = (totalCal * .45)/4;
        fatInt = (totalCal * .2)/9;
    }
    else {
        carbInt = (totalCal * .45)/4;
        proteinInt = (totalCal * .35)/4;
        fatInt = (totalCal * .2)/9;
    }
    
    NSNumber *carbNumber = [NSNumber numberWithDouble:carbInt];
    NSNumber *proteinNumber = [NSNumber numberWithDouble:proteinInt];
    NSNumber *fatNumber = [NSNumber numberWithDouble:fatInt];
    self.carb.text = [carbNumber stringValue];
    self.protein.text = [proteinNumber stringValue];
    self.fat.text = [fatNumber stringValue];
}


@end

