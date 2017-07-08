//
//  BMICalculatorVC.m
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import "BMICalculatorVC.h"

@interface BMICalculatorVC ()

@end

@implementation BMICalculatorVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateBMILabels];
    //[self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"Triceps10.png"]forBarMetrics:UIBarMetricsDefault];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)massChanged:(id)sender
{
    _weightSlider.minimumValue = 0;
    _weightSlider.maximumValue = 400;
    [self updateBMILabels];
}

- (IBAction)heightCahnged:(id)sender
{
    _heightSlider.minimumValue = 0;
    _heightSlider.maximumValue = 120;
    [self updateBMILabels];
}

- (void)updateBMILabels
{
    self.bodyMassLabel.text = [NSString stringWithFormat:@"%.f lbs.", self.weightSlider.value];
    self.heightLabel.text = [NSString stringWithFormat:@"%.f inches.", self.heightSlider.value];
    float BMI = [self getBMIforWeight:self.weightSlider.value andHeight:self.heightSlider.value];
    self.BMILabel.text = [NSString stringWithFormat:@"%.02f", BMI];
    self.commentLabel.text = [self getCommentForBMI:BMI];
}

- (float)getBMIforWeight:(float)weight andHeight:(float)height
{
    return (weight / (height * height))*703;
}

- (NSString *)getCommentForBMI:(float)BMI
{
    if (BMI <= 16) return @"Severly Underweight";
    else if (BMI > 16 & BMI <= 18.5) return @"Underweight";
    else if (BMI > 18.5 & BMI <= 25) return @"Normal";
    else if (BMI > 25 & BMI <= 30) return @"Overweight";
    else if (BMI > 30 & BMI <= 35) return @"Stage 1 Obesity";
    else if (BMI > 35 & BMI <= 40) return @"Stage 2 Obesity";
    else return @"Stage 3 Obesity";
}
@end
