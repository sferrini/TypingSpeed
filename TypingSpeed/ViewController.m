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


@synthesize entryTextField, start, textLabel, scoreLabel;


-(void)viewDidAppear:(BOOL)animated
{
    [entryTextField becomeFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    myBoolTime = YES;
    myBoolText = YES;
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(check) userInfo:nil repeats:YES];
}

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
        
        
        
        [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(time) userInfo:nil repeats:NO];
        

    }
    
    if ([entryTextField.text isEqualToString:@"Text"])
    {
        NSLog(@"Well done!");
        self.textLabel.text = [NSString stringWithFormat:@"Well done!"];
        
        if (myBoolText == YES)
        {
            myBoolText = NO;
            NSTimeInterval timeInterval = -1*[start timeIntervalSinceNow];
            self.scoreLabel.text = [NSString stringWithFormat:@"Score: %f",timeInterval];
        }
    }

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
