#include "SWTCHCOLORRootListController.h"

@implementation SWTCHCOLORRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

- (void)respring {
	[HBRespringController respringAndReturnTo:[NSURL URLWithString:@"prefs:root=SwitchColors"]];
}

- (void)openGithub {
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://github.com/tntpizzatnt/SwitchColors"]
	options:@{}
	completionHandler:nil];
}

- (void)openRedditProfile {
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://reddit.com/user/TheRealtntpizzatnt/"]
	options:@{}
	completionHandler:nil];
}

@end

