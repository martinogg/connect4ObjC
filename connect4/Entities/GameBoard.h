//
//  GameBoard.h
//  connect4
//
//  Created by martin ogg on 30/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

@import Foundation;
#import "Protocols.h"

#define MAXSTACKS 6
#define MAXSTACKHEIGHT 6

@interface GameBoard : NSObject <GameBoardProtocol>

@end
