//
//  brain.h
//  mmconverter
//
//  Created by Shein Myint Aung on 3/26/13.
//  Copyright (c) 2013 nasper. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface brain : NSObject

#pragma mark - main brain function
-(NSString*)push:(NSString*)digitAndNumber;
-(BOOL)isOperator:(NSString*)numberAndOperator;
-(void)clear;
@end
