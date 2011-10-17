//
//  SquareGird.h
//  LuminesCocos2d
//
//  Created by Lei Wang on 17/10/11.
//  Copyright (c) 2011 Virtuos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface SquareGird : NSObject
{
    CCNode* _parentNode;
}

-(id)initWithParentNode:(CCNode*)parentNode;

@end
