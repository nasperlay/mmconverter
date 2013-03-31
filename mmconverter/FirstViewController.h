//
//  FirstViewController.h
//  mmconverter
//
//  Created by Shein Myint Aung on 3/26/13.
//  Copyright (c) 2013 nasper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomButton.h"
#import "brain.h"

@interface FirstViewController : UIViewController{
    
     CustomButton *_button1;
     CustomButton *_button2;
     CustomButton *_button3;
     CustomButton *_button4;
     CustomButton *_button5;
     CustomButton *_button6;
     CustomButton *_button7;
     CustomButton *_button8;
     CustomButton *_button9;
     CustomButton *_button0;
     CustomButton *_buttonPoint;
    
     CustomButton *_buttonPlus;
     CustomButton *_buttonMinus;
     CustomButton *_buttonMultiply;
     CustomButton *_buttonDivide;
     CustomButton *_buttonEqual;
     CustomButton *_buttonPlusminus;
    
    NSMutableArray *_buttons;
    
    
    
    
}
    
-(IBAction)showOnScreen:(CustomButton*)sender;
-(IBAction)clear:(CustomButton*)sender;


@property (nonatomic,weak)IBOutlet UILabel* lblOperator;
@property (nonatomic,weak)IBOutlet UITextField* txtScreen;
@property (retain)CustomButton *button1;
@property (retain)CustomButton *button2;
@property (retain)CustomButton *button3;
@property (retain)CustomButton *button4;
@property (retain)CustomButton *button5;
@property (retain)CustomButton *button6;
@property (retain)CustomButton *button7;
@property (retain)CustomButton *button8;
@property (retain)CustomButton *button9;
@property (retain)CustomButton *button0;
@property (retain)CustomButton *buttonPoint;

@property (retain)CustomButton *buttonPlus;
@property (retain)CustomButton *buttonMinus;
@property (retain)CustomButton *buttonDivide;
@property (retain)CustomButton *buttonMultiply;
@property (retain)CustomButton *buttonEquals;
@property (retain)CustomButton *buttonClear;
@property (retain)CustomButton *buttonPlusminus;

@property (retain)NSMutableArray *buttons;

@end
