//
//  ViewController.h
//  quiz
//
//  Created by Blackbook on 13-05-14.
//  Copyright (c) 2013 Ben-Church. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int currentQuestionIndex;
    
    //the model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //The view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
