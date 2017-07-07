//
//  CalculatedViewController.h
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface CalculatedViewController : UIViewController

@property double resultDecimal;

@property (retain, nonatomic) IBOutlet UILabel *resultCalLabel;
@property (strong, nonatomic) IBOutlet UITextField *bmrLabel;
@property (strong, nonatomic) IBOutlet UISegmentedControl *bulkOrCut;
@property (strong, nonatomic) IBOutlet UISegmentedControl *carbSensitive;
@property (strong, nonatomic) IBOutlet UILabel *carb;
@property (strong, nonatomic) IBOutlet UILabel *protein;
@property (strong, nonatomic) IBOutlet UILabel *fat;




@end
