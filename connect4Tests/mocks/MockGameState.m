//
//  MockGameState.m
//  connect4Tests
//
//  Created by martin ogg on 12/04/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "MockGameState.h"

@implementation MockGameState

@synthesize nextGameState;
@synthesize viewModel;

-(void) onEnter {
    self.onEnterCalled = true;
}

-(void) willLeave {
    self.willLeaveCalled = true;
}

@end
