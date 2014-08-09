#import "SpringBoard/SpringBoard.h"
#import "FLEXManager.h"

__attribute__((constructor))
static void initialize() {
  NSLog(@"==> hewig dylib loaded");
}

%hook MailAppController

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	BOOL result = %orig;
	NSLog(@"==> hewig hooked in MailAppController:didFinishLaunchingWithOptions");
	
	//Three fingers tap twice to activate :)
	UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:[FLEXManager sharedManager]   action:@selector(showExplorer)];
  	[gestureRecognizer setNumberOfTapsRequired:2];
   	[gestureRecognizer setNumberOfTouchesRequired:3];
   	UIWindow *window = (UIWindow*)[[UIApplication sharedApplication] keyWindow];
  	[window addGestureRecognizer:gestureRecognizer];

  	//Show it now
    [[FLEXManager sharedManager] showExplorer];
    return result;
}

%end