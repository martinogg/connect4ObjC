//
//  NewGameState.m
//  connect4
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "NewGameState.h"

@implementation NewGameState

-(void) onEnter {
    //TODO TEST
    [self.viewModel.gameBoard resetBoard];
    [self.viewModel endCurrentGameState];
    
}

@end
