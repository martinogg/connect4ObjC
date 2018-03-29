//
//  Router.h
//  connect4
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

@import Foundation;
#import "Protocols.h"

@interface Router : NSObject <RouterProtocol>

+(void) attachToViewController:(id<ViewControllerProtocol>) viewController;

@end
