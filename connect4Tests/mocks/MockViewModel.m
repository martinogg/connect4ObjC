//
//  MockViewModel.m
//  connect4Tests
//
//  Created by martin ogg on 14/04/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "MockViewModel.h"

@implementation MockViewModel

@synthesize gameStates;
@synthesize viewController;
@synthesize router;
@synthesize currentGameState;

@synthesize viewDidLoadCalled;

- (void)viewDidLoad {
    self.viewDidLoadCalled = true;
}

@end
