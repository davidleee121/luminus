//
//  SquareGird.m
//  LuminesCocos2d
//
//  Created by Lei Wang on 17/10/11.
//  Copyright (c) 2011 Virtuos. All rights reserved.
//

#import "SquareGird.h"

@implementation SquareGird

-(id)initWithParentNode:(CCNode*)parentNode
{
    if(self = [super init])
    {
        _parentNode = parentNode;
    }
    
    return self;
}
@end
