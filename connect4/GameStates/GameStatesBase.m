//
//  GameStatesBase.m
//  connect4
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "GameStatesBase.h"

@implementation GameStatesBase

@synthesize nextGameState;
@synthesize viewModel;

- (void)onEnter {
    // To be overridden by subclass
    
}

- (void)willLeave {
    // To be overridden by subclass
    
}


@end
