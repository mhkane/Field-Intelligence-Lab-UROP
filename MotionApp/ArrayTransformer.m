//
//  ArrayTransformer.m
//  motionApp
//
//  Created by Mohamed Kane on 9/29/14.
//  Copyright (c) 2014 j_siegel. All rights reserved.
//

#import "ArrayTransformer.h"

@implementation ArrayTransformer
+(Class)transformedValueClass
{
    return [NSData class];
}

-(id)transformedValue:(id)value
{
    if(!value){
        return nil;
    }
    if(value isKindOfClass:[NSData class]){
        return value;
    }
    
    return NSArray
}

@end
