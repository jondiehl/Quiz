//
//  ViewController.h
//  Quiz
//
//  Created by Jon Diehl on 1/15/14.
//  Copyright (c) 2014 Jon Diehl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int currentQuestionIndex;
    
    NSMutableArray *questions;
    NSMutableArray *answers;
    
}
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
- (IBAction)showQuestion:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
- (IBAction)showAnswer:(id)sender;

@end
