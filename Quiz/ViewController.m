//
//  ViewController.m
//  Quiz
//
//  Created by Jon Diehl on 1/15/14.
//  Copyright (c) 2014 Jon Diehl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidLoad {
    questions = [[NSMutableArray alloc] init];
    answers = [[NSMutableArray alloc] init];
    currentQuestionIndex =0;
    
    //add questions and answers to arrays
    [questions addObject:@"What is 7 + 7?"];
    [answers addObject:@"14"];
    
    [questions addObject:@"What is the capital of Vermot?"];
    [answers addObject:@"Montpelier"];
    
    [questions addObject:@"From what is cognac made?"];
    [answers addObject:@"Grapes"];

}

- (IBAction)showQuestion:(id)sender {
    NSLog(@"In showQuestion");
    
    currentQuestionIndex++;
    
    if(currentQuestionIndex == [questions count])
    {
        currentQuestionIndex = 0;
    }
    
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    [self.questionLabel setText:question];
    NSLog(@"displaying question: %@", question);
        
    

}

- (IBAction)showAnswer:(id)sender {
    NSLog(@"In showAnswer");
        
    
    [self.answerLabel setText:[answers objectAtIndex:currentQuestionIndex]];
}


@end
