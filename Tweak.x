#import <UIKit/UIKit.h>
#import <Cephei/HBPreferences.h>
@import Alderis;
#import "AlderisColorPicker.h"

BOOL isEnabled;
static NSString *switchColor;

%hook UISwitch

- (void)layoutSubviews {

	%orig;
	
	if(isEnabled) {
		[self setOnTintColor: [UIColor PF_colorWithHex: switchColor]];
	}
}

%end

%ctor {

  	HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"com.pizzaboy.switchcolorprefs"];

    [preferences registerBool:&isEnabled default:YES forKey:@"isEnabled"];
	[preferences registerObject:&switchColor default:@"#001c49" forKey:@"switchColor"];
}