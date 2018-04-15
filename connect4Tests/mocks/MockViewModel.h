//
//  MockViewModel.h
//  connect4Tests
//
//  Created by martin ogg on 14/04/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

@import Foundation;
#import "Protocols.h"

@interface MockViewModel : NSObject <ViewModelProtocol>

@property (nonatomic) BOOL viewDidLoadCalled;

@end
