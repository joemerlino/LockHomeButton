%hook SpringBoard
-(void)_setMenuButtonTimer:(id)arg1 {
	{}
}

-(void)_menuButtonWasHeld {
	{}
}
%end

static void PreferencesCallback(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo)
{
	CFPreferencesAppSynchronize(CFSTR("com.iamjamieq.lockhomebutton"));
}

%ctor
{
	CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, PreferencesCallback, CFSTR("com.iamjamieq.lockhomebutton.preferencechanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
	NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/private/var/mobile/Library/Preferences/com.iamjamieq.lockhomebutton.plist"];
	BOOL suppress = ([prefs objectForKey:@"suppress"] ? [[prefs objectForKey:@"suppress"] boolValue] : YES);
	if(suppress)
		%init();
}
