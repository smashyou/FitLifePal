//
//  FatCalculatorVC.m
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import "FatCalculatorVC.h"

@interface FatCalculatorVC ()

@end

@implementation FatCalculatorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateLabels];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)weightSliderChanged:(id)sender
{
    _weightSlider.minimumValue = 0;
    _weightSlider.maximumValue = 400;
    
    [self updateLabels];
}
- (IBAction)heightSliderChanged:(id)sender
{
    _heightSlider.minimumValue = 0;
    _heightSlider.maximumValue = 120;
    [self updateLabels];
}

- (IBAction)genderChanged:(id)sender
{
    [self updateLabels];
}

- (IBAction)ageChanged:(id)sender
{
    [self updateLabels];
}

- (void)updateLabels
{
    int gender;
    
    if (self.genderSelector.selectedSegmentIndex == 0) gender = 1;
    else gender = 0;
    
    self.bodyWieghtLabel.text = [NSString stringWithFormat:@"%.f lbs.", self.weightSlider.value];
    self.heightLabel.text = [NSString stringWithFormat:@"%.f inches.", self.heightSlider.value];
    self.ageLabel.text = [NSString stringWithFormat:@"%.f yrs", self.ageSlider.value];
    float FAT = [self getFatforWeight:self.weightSlider.value andHeight:self.heightSlider.value andAge:self.ageSlider.value andGender:gender];
    self.weihtPercentageLabel.text = [NSString stringWithFormat:@"%.02f%%", FAT];
    self.commentLabel.text = [self getCommentForFAT:FAT];
}

- (float)getFatforWeight:(float)weight andHeight:(float)height andAge:(float)age andGender:(int)gender
{
    // (1.20 x BMI) + (0.23 x age) – (10.8 x gender) – 5.4
    return (1.2f * [self getBMIforWeight:weight andHeight:height]) + (0.23f * age) - (10.8f * gender) - 5.4;
}

- (float)getBMIforWeight:(float)weight andHeight:(float)height
{
    return (weight / (height * height))*703;
}

- (NSString *)getCommentForFAT:(float)FAT
{
    return @"Fat Percentage";
}

@end
