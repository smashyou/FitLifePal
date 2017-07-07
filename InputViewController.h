//
//  InputViewController.h
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatedViewController.h"





@interface InputViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>
{
    CalculatedViewController *calculatedViewController;
}

@property double resultDecimal;


@property (strong, nonatomic) IBOutlet UITextField *weight;
@property (strong, nonatomic) IBOutlet UITextField *height;
@property (strong, nonatomic) IBOutlet UITextField *age;
@property (strong, nonatomic) IBOutlet UISegmentedControl *gender;
@property (strong, nonatomic) IBOutlet UISegmentedControl *metricSwitch;



@end
