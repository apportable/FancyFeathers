//
//  PhysicsScene.m
//  Example
//
//  Created by Viktor on 10/7/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "GameScene.h"
#import "cocos2d-ui.h"
#import "CCBuilderReader.h"

@implementation GameScene

- (void) didLoadFromCCB
{
    [self setupLevel];
}

- (void) setupLevel
{
    CCNode* level = [CCBReader nodeGraphFromFile:@"Level"];
    
    _scrollView = [[CCScrollView alloc] initWithContentNode:level];
    _scrollView.verticalScrollEnabled = NO;
    
    [self addChild:_scrollView z:-1];
}

- (void) pressedRestart:(id)sender
{
    [self removeChild:_scrollView];
    [self setupLevel];
}

@end
