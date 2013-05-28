//
//  ViewController.m
//  quiz
//
//  Created by Blackbook on 13-05-14.
//  Copyright (c) 2013 Ben-Church. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        //Create two arrays and make pointers to point to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        //Add questions and answers to the array
        [questions addObject: @"Noah is a what?"];
        [answers addObject: @"Mark ass trick"];
        
        [questions addObject: @"If you suck, then wilson will call you a?"];
        [answers addObject: @"choob"];
        
        [questions addObject: @"the best dice game"];
        [answers addObject: @"five alive dice"];
        
    }
    //Return the address of the new object
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    //Step to next question
    currentQuestionIndex++;
    
    //Am i past the last question?
    if (currentQuestionIndex == [questions count]) {
        //go back to first question
        currentQuestionIndex = 0;
    }
    
    //Get the string at the index in the question array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    //log the string into the console
    NSLog(@"displaying question: %@", question);
    
    //Display the string in the question field
    [questionField setText:question];
    
    //Clear the answer field
    [answerField setText: @"???"];
}

- (IBAction)showAnswer:(id)sender
{
    //What is the answer to the currentQuestion?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    //Display it in the answer field
    [answerField setText:answer];
}

@end
