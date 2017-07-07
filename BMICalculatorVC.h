//
//  BMICalculatorVC.h
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BMICalculatorVC : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *bodyMassLabel;
@property (strong, nonatomic) IBOutlet UILabel *heightLabel;
@property (strong, nonatomic) IBOutlet UILabel *BMILabel;
@property (strong, nonatomic) IBOutlet UILabel *commentLabel;
@property (strong, nonatomic) IBOutlet UISlider *weightSlider;
@property (strong, nonatomic) IBOutlet UISlider *heightSlider;


- (IBAction)massChanged:(id)sender;
- (IBAction)heightCahnged:(id)sender;

@end
