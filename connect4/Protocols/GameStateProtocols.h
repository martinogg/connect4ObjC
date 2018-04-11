//
//  GameStateProtocols.h
//  connect4
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

@import Foundation;
#import "Protocols.h"

//forward declarations
@protocol GameStateProtocol;

//protocols
@protocol GameStateToViewModelProtocol

-(void) endCurrentGameState;

@end


@protocol GameStateProtocol

-(void) onEnter;
-(void) willLeave;

@property (nonatomic, weak) id<GameStateProtocol> nextGameState;
@property (nonatomic, weak) id<GameStateToViewModelProtocol> viewModel;


@end


