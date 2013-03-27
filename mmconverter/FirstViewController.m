//
//  FirstViewController.m
//  mmconverter
//
//  Created by Shein Myint Aung on 3/26/13.
//  Copyright (c) 2013 nasper. All rights reserved.
//

#import "FirstViewController.h"
#import "brain.h"

@interface FirstViewController()
@property(nonatomic,strong)brain* calBrain;

@end
@implementation FirstViewController
@synthesize button1=_button1;
@synthesize button2=_button2;
@synthesize button3=_button3;
@synthesize button4=_button4;
@synthesize button5=_button5;
@synthesize button6=_button6;
@synthesize button7=_button7;
@synthesize button8=_button8;
@synthesize button9=_button9;
@synthesize button0=_button0;

@synthesize buttonPlus=_buttonPlus;
@synthesize buttonMinus=_buttonMinus;
@synthesize buttonDivide=_buttonDivide;
@synthesize buttonMultiply=_buttonMultiply;
@synthesize buttonEquals=_buttonEqual;
@synthesize buttonClear=_buttonClear;
@synthesize buttonPlusminus=_buttonPlusminus;

@synthesize buttons=_buttons;

-(brain*)calBrain
{
    if(_calBrain==nil)
    {
        _calBrain = [[brain alloc]init];
    }
    return _calBrain;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"bg_calc.png"]];
    self.view.backgroundColor = background;
    
    CGFloat height=50;
    CGFloat width=80;
    CGFloat col1=0;
    CGFloat row1= 245;
    CGFloat row0=190;
    
    
    CGFloat spacingy=3;
    CGFloat row2= row1+height+spacingy;
    CGFloat row3= row2+height+spacingy;
    CGFloat row4= row3+height+spacingy;
    CGFloat spacingx=0;
    CGFloat col2= col1+width+spacingx;
    CGFloat col3= col2+width+spacingx;
    CGFloat col4= col3+width+spacingx;
    
    self.button7 = [[CustomButton alloc]initWithText:@"7" target:self selector:@selector(buttonTapped:)];
    _button7.frame= CGRectMake(col1, row1, width, height);
    
    self.button8 = [[CustomButton alloc]initWithText:@"8" target:self selector:@selector(buttonTapped:)];
    _button8.frame= CGRectMake(col2, row1, width, height);
    
    self.button9 = [[CustomButton alloc]initWithText:@"9" target:self selector:@selector(buttonTapped:)];
    _button9.frame= CGRectMake(col3, row1, width, height);
    
    self.button4 = [[CustomButton alloc]initWithText:@"4" target:self selector:@selector(buttonTapped:)];
    _button4.frame= CGRectMake(col1, row2, width, height);
    
    self.button5 = [[CustomButton alloc]initWithText:@"5" target:self selector:@selector(buttonTapped:)];
    _button5.frame= CGRectMake(col2, row2, width, height);
    
    self.button6 = [[CustomButton alloc]initWithText:@"6" target:self selector:@selector(buttonTapped:)];
    _button6.frame= CGRectMake(col3, row2, width, height);
    
    self.button1 = [[CustomButton alloc]initWithText:@"1" target:self selector:@selector(buttonTapped:)];
    _button1.frame= CGRectMake(col1, row3, width, height);
    
    self.button2 = [[CustomButton alloc]initWithText:@"2" target:self selector:@selector(buttonTapped:)];
    _button2.frame= CGRectMake(col2, row3, width, height);
    
    self.button3 = [[CustomButton alloc]initWithText:@"3" target:self selector:@selector(buttonTapped:)];
    _button3.frame= CGRectMake(col3, row3, width, height);
    
    self.button0 = [[CustomButton alloc]initWithText:@"0" target:self selector:@selector(buttonTapped:)];
    _button0.frame= CGRectMake(col1, row4, width*2, height);
    
    self.buttonPoint = [[CustomButton alloc]initWithText:@"." target:self selector:@selector(buttonTapped:)];
    _buttonPoint.frame= CGRectMake(col3, row4, width, height);

    self.buttonEquals = [[CustomButton alloc]initWithText:@"" target:self selector:@selector(buttonTapped:)];
    _buttonEqual.frame= CGRectMake(col4, row3, width, height*2);
    
    self.buttonPlus = [[CustomButton alloc]initWithText:@"" target:self selector:@selector(buttonTapped:)];
    _buttonPlus.frame= CGRectMake(col4, row1, width, height*2);

    self.buttonMultiply = [[CustomButton alloc]initWithText:@"" target:self selector:@selector(buttonTapped:)];
    _buttonMultiply.frame= CGRectMake(col2, row0, width, height);
    
    self.buttonDivide = [[CustomButton alloc]initWithText:@"" target:self selector:@selector(buttonTapped:)];
    _buttonDivide.frame= CGRectMake(col3, row0, width, height);
    
    self.buttonMinus = [[CustomButton alloc]initWithText:@"" target:self selector:@selector(buttonTapped:)];
    _buttonMinus.frame= CGRectMake(col4, row0, width, height);
    
    self.buttonClear = [[CustomButton alloc]initWithText:@"" target:self selector:@selector(buttonTapped:)];
    _buttonClear.frame= CGRectMake(col1, row0, width, height);
    
    self.buttonEquals = [[CustomButton alloc] initWithTextAndHSB:@"" target:self selector:@selector(buttonTapped:) hue:0.075f saturation:0.9f brightness:0.96f] ;
	_buttonEqual.frame = CGRectMake(col4,row3, width, height*2);
    
	self.buttonPlus = [[CustomButton alloc] initWithTextAndHSB:@"" target:self selector:@selector(buttonTapped:) hue:0.058f saturation:0.26f brightness:0.42f];
	_buttonPlus.frame = CGRectMake(col4,row2, width, height);
	self.buttonMinus = [[CustomButton alloc] initWithTextAndHSB:@"" target:self selector:@selector(buttonTapped:) hue:0.058f saturation:0.26f brightness:0.42f];
	_buttonMinus.frame = CGRectMake(col4,row1, width, height);
	self.buttonMultiply = [[CustomButton alloc] initWithTextAndHSB:@"" target:self selector:@selector(buttonTapped:) hue:0.058f saturation:0.26f brightness:0.42f];
	_buttonMultiply.frame = CGRectMake(col4,row0, width, height);
    
	self.buttonDivide = [[CustomButton alloc] initWithTextAndHSB:@"" target:self selector:@selector(buttonTapped:) hue:0.058f saturation:0.26f brightness:0.42f];
	_buttonDivide.frame = CGRectMake(col3,row0, width, height);
	self.buttonPlusminus = [[CustomButton alloc] initWithTextAndHSB:@"" target:self selector:@selector(buttonTapped:) hue:0.058f saturation:0.26f brightness:0.42f];
	_buttonPlusminus.frame = CGRectMake(col2,row0, width, height);
	self.buttonClear = [[CustomButton alloc] initWithTextAndHSB:@"" target:self selector:@selector(buttonTapped:) hue:0.058f saturation:0.26f brightness:0.42f];
	_buttonClear.frame = CGRectMake(col1,row0, width, height);
    


    [self.buttonClear setLabelWithText:@"AC" andSize:18.0f andVerticalShift:0.0f];
    [self.buttonPlus setLabelWithText:@"+" andSize:24.0f andVerticalShift:-2.0f];
    [self.buttonMinus setLabelWithText:@"-" andSize:24.0f andVerticalShift:-2.0f];
    [self.buttonMultiply setLabelWithText:@"x" andSize:24.0f andVerticalShift:-2.0f];
    [self.buttonPlusminus setLabelWithText:@"±" andSize:24.0f andVerticalShift:-2.0f];
    [self.buttonDivide setLabelWithText:@"/" andSize:24.0f andVerticalShift:-2.0f];
    [self.buttonEquals setLabelWithText:@"=" andSize:24.0f andVerticalShift:22.0f];
    
    _buttonEqual.toggled=YES;
    
    self.buttons = [NSMutableArray arrayWithObjects:
                    _button1,
                    _button2,
                    _button3,
                    _button4,
                    _button5,
                    _button6,
                    _button7,
                    _button8,
                    _button9,
                    _button0,
                    _buttonPoint,
                    _buttonPlus,
                    _buttonEqual,
                    _buttonMinus,
                    _buttonMultiply,
                    _buttonDivide,
                    _buttonClear,
                    _buttonPlusminus,
                    nil];
    
    for(CustomButton *button in _buttons){
        [self.view addSubview:button];
    }
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)showOnScreen:(CustomButton *)sender{
    NSString* res=[self.calBrain push:sender.titleLabel.text];
    if(res!=nil && ![res isEqualToString:@""]){
        self.txtScreen.text=res;
                                             
    }
                                         
    if([self.calBrain isOperator:sender.titleLabel.text])
    {
        self.lblOperator.text=sender.titleLabel.text;
                                             
    }
}
    
-(IBAction)clear{
    self.txtScreen.text=@"0";
    //self.lblOperator.text=@"=";
    [self.calBrain clear];
}



                                     
@end
