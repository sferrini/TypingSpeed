//
//  ViewController.h
//  TypingSpeed
//
//  Created by Simone Ferrini on 08/12/13.
//  Copyright (c) 2013 Simone Ferrini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (strong, nonatomic) NSDate *start;

@property (strong, nonatomic) IBOutlet UITextField *entryTextField;
@property (strong, nonatomic) IBOutlet UILabel *textLabel;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@end
