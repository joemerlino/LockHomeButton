//
//  LockHomeButtonToggleSwitch.x
//  LockHomeButtonToggle
//
//  Created by iamjamieq <jameslitvak@gmail.com> on 02.12.2015.
//  Copyright (c) 2015 iamjamieq <jameslitvak@gmail.com>. All rights reserved.
//

#import "LockHomeButtonToggleSwitch.h"

@implementation LockHomeButtonToggleSwitch

- (FSSwitchState)stateForSwitchIdentifier:(NSString *)switchIdentifier {
	return FSSwitchStateIndeterminate;
}

- (void)applyActionForSwitchIdentifier:(NSString *)switchIdentifier {
    
}

@end