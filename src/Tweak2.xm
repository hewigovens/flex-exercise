#import "SpringBoard/SpringBoard.h"
#import "Message/Message.h"

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application 
{
	%orig;
	NSLog(@"==> hewig hooked in SpringBoard:applicationDidFinishLaunching");    
    [[FLEXManager sharedManager] showExplorer];
}

%end