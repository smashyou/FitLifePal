//
//  InputViewController.m
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import "InputViewController.h"
#import "CalculatedViewController.h"


@interface InputViewController()

@property NSArray *activity;
@property (strong, nonatomic) IBOutlet UILabel *resultCalLabel2;

@end

@implementation InputViewController

double alf;
double resultCal;
NSInteger genderIndex;
NSInteger metricIndex;

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.activity count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.activity [row];
    
    
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    switch (row) {
        case 0:
            alf = 1.2;
            break;
            
        case 1:
            alf = 1.375;
            break;
            
        case 2:
            alf = 1.55;
            break;
            
        case 3:
            alf = 1.725;
            break;
            
        case 4:
            alf = 1.99;
            break;
            
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.activity = @[@"Sedentary", @"1-3 days", @"3-5 days", @"6-7 days", @"Hardcore everyday"];
        
}

-(IBAction)genderSelection:(id)sender {
    
    genderIndex = [sender selectedSegmentIndex];
    
}

-(IBAction)metricSelection:(id)sender {
    metricIndex =[sender selectedSegmentIndex];
}

-(IBAction)calcOnScreen:(UIButton*)sender {
    
    double wp = ([_weight.text doubleValue]);
    double hi = ([_height.text doubleValue]);
    double agee = ([_age.text doubleValue]);
    
    if (metricIndex == 1) {
        wp = 2.2046 * wp;
        hi = 0.3937 * hi;
    }
        
    if (genderIndex == 0) {
        resultCal = alf * ((6.25 * wp) + (12.7*hi) - (6.76*agee) + 66);
    }
    else if (genderIndex == 1){
        resultCal = alf * ((4.35 * wp) + (4.7*hi) - (4.68*agee) + 655);
    }
    
    _resultDecimal = resultCal;
     
    NSNumber *myDoubleNumber = [NSNumber numberWithDouble:_resultDecimal];
    
    self.resultCalLabel2.text = [myDoubleNumber stringValue];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
