//
//  MockGameState.h
//  connect4Tests
//
//  Created by martin ogg on 12/04/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

@import Foundation;
#import "GameStateProtocols.h"

@interface MockGameState : NSObject <GameStateProtocol>

-(void) onEnter;
-(void) willLeave;

@property (nonatomic, weak) id<GameStateProtocol> nextGameState;
@property (nonatomic, weak) id<GameStateToViewModelProtocol> viewModel;
@property (nonatomic) BOOL onEnterCalled;
@property (nonatomic) BOOL willLeaveCalled;

@end
