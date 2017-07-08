//
//  FoodDetailsVC.m
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import "FoodDetailsVC.h"

@interface FoodDetailsVC ()

@end

@implementation FoodDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.currentFood.title;
    
    CGRect mainFrame = self.view.frame;
    CGFloat viewTop = self.navigationController.navigationBar.frame.size.height + self.navigationController.navigationBar.frame.origin.y;
    CGFloat viewBottom = self.navigationController.navigationBar.frame.size.height;
    
    UIImage *foodImage = [UIImage imageNamed:self.currentFood.imageName];
    CGRect imageRect = CGRectMake(mainFrame.origin.x + 8.0f, viewTop + 8.0f, mainFrame.size.width - 16.0f, foodImage.size.height * ((mainFrame.size.width - 16.0f) / foodImage.size.width));
    UIImageView *foodImageView = [[UIImageView alloc] initWithFrame:imageRect];
    foodImageView.image = foodImage;
    [self.view addSubview:foodImageView];
    
    CGRect textRect = CGRectMake(8.0f,imageRect.origin.y + imageRect.size.height + 8.0f, mainFrame.size.width - 16.0f, mainFrame.size.height -  imageRect.size.height - viewTop - 16.0f - viewBottom);
    UITextView *foodDetailsTextView = [[UITextView alloc] initWithFrame:textRect];
    foodDetailsTextView.attributedText = [[NSAttributedString alloc] initWithString:self.currentFood.text attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:16]}];
    foodDetailsTextView.editable = NO;
    
    [self.view addSubview:foodDetailsTextView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
