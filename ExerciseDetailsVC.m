//
//  ExerciseDetailsVC.m
//  FitLifePal
//
//  Created by John You on 12/7/16.
//  Copyright © 2016 Keun You. All rights reserved.
//

#import "ExerciseDetailsVC.h"
#import "ExerciseData.h"

@interface ExerciseDetailsVC ()

@end

@implementation ExerciseDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.exerciseDetailsDictionary = [ExerciseData getDetailsForExerciseWithNumber:self.exerciseNumber];
    self.exercisePictureArray = [ExerciseData getPicturesForExercise:self.exerciseNumber];
    
    self.navigationItem.title = [self.exerciseDetailsDictionary objectForKey:EXERCISE_NAME];
    
    //determine the dimensions of the basic type and dice the navigation at the top and bottom
    CGRect mainFrame = self.view.frame;
    CGFloat viewBottom = self.navigationController.navigationBar.frame.size.height;
    
    //Create scroll
    CGRect scrollRect = CGRectMake(mainFrame.origin.x + 8.0f,mainFrame.origin.y + 8.0f, mainFrame.size.width - 16.0f, mainFrame.size.height - 16.0f - viewBottom);
    UIScrollView *contentScrollView = [[UIScrollView alloc] initWithFrame:scrollRect];
    
    //Attach text
    NSAttributedString *descriptionText = [[NSAttributedString alloc] initWithString:[self.exerciseDetailsDictionary objectForKey:EXERCISE_DESCRIPTION] attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:12]}];
    CGRect textRect = CGRectMake(scrollRect.origin.x, scrollRect.origin.y, scrollRect.size.width, [self textViewHeightForAttributedText:descriptionText andWidth:scrollRect.size.width]);
    UILabel *descriptionLabel = [[UILabel alloc] initWithFrame:textRect];
    descriptionLabel.numberOfLines = 0;
    descriptionLabel.attributedText = descriptionText;
    [contentScrollView addSubview:descriptionLabel];
    
    //Determine where to attach the image
    CGFloat imageTop = textRect.origin.y + textRect.size.height + 8.0f;
    
    //Attach all the pictures
    for (UIImage *exerciseImage in self.exercisePictureArray)
    {
        CGRect imageRect = CGRectMake(scrollRect.origin.x, imageTop, scrollRect.size.width, exerciseImage.size.height * (scrollRect.size.width / exerciseImage.size.width));
        UIImageView *exerciseImageView = [[UIImageView alloc] initWithFrame:imageRect];
        exerciseImageView.image = exerciseImage;
        [contentScrollView addSubview:exerciseImageView];
        
        imageTop += imageRect.size.height + 8.0f;
        contentScrollView.contentSize = CGSizeMake(scrollRect.size.width, imageRect.origin.y + imageRect.size.height);
    }
    
    //exerciseDetailsTextView.textContainer.exclusionPaths = exclusionPaths;
    
    [self.view addSubview:contentScrollView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (CGFloat)textViewHeightForAttributedText:(NSAttributedString *)text andWidth:(CGFloat)width
{
    UITextView *textView = [[UITextView alloc] init];
    [textView setAttributedText:text];
    CGSize size = [textView sizeThatFits:CGSizeMake(width, FLT_MAX)];
    return size.height;
}

@end
