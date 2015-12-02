//
//  LockHomeButtonPrefsListController.m
//  LockHomeButtonPrefs
//
//  Created by iamjamieq <jameslitvak@gmail.com> on 02.12.2015.
//  Copyright (c) 2015 iamjamieq <jameslitvak@gmail.com>. All rights reserved.
//

#import "LockHomeButtonPrefsListController.h"

@implementation LockHomeButtonPrefsListController

- (id)specifiers {
	if (_specifiers == nil) {
		_specifiers = [self loadSpecifiersFromPlistName:@"LockHomeButtonPrefs" target:self];
	}
    
	return _specifiers;
}

@end
