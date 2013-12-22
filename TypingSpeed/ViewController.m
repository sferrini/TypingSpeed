//
//  ViewController.m
//  TypingSpeed
//
//  Created by Simone Ferrini on 08/12/13.
//  Copyright (c) 2013 Simone Ferrini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController
{
    
    @private BOOL myBoolTime;
    @private BOOL myBoolText;
    
}

@synthesize start;

@synthesize textLabel, entryTextField, scoreLabel, reloadButton;


-(void)viewDidAppear:(BOOL)animated
{
    
    self.textLabel.text = [NSString stringWithFormat:@"This is a test"];
    
    [entryTextField becomeFirstResponder];
    
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    
    myBoolTime = YES;
    myBoolText = YES;
    
    //Call check every 0.01 second
    [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(check) userInfo:nil repeats:YES];
    
}

//Time interval
- (void)time
{
    
    NSTimeInterval timeInterval = [start timeIntervalSinceNow];
    NSLog(@"Time: %f",timeInterval);
    
}

- (void)check
{
    
    if ([entryTextField.text isEqualToString:@""])
    {
        
    }
    
    else
    {
        
        if (myBoolTime == YES)
        {
        
        start = [NSDate date];
        
        NSLog(@"Start game");
        
        }
        
        myBoolTime = NO;
        
        if (myBoolText == YES)
        {
            NSString *textToBeInserted = self.textLabel.text;
            if ([entryTextField.text isEqualToString:textToBeInserted])
            {
                
                myBoolText = NO;
                
                NSLog(@"Well done!");
                
                self.textLabel.text = [NSString stringWithFormat:@"Well done!"];
                
                
                NSTimeInterval timeInterval = -1 * [start timeIntervalSinceNow];
                
                self.scoreLabel.text = [NSString stringWithFormat:@"Time: %f",timeInterval];
                
            }
            
        }
        
    }
    
}

- (IBAction)reloadText:(UIButton *)sender
{
    
    self.entryTextField.text = @"";
    self.scoreLabel.text = @"Score";
    
    myBoolTime = YES;
    myBoolText = YES;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
