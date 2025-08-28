#import "DraggableNavigationRoute.h"
    
@interface DraggableNavigationRoute ()

@end

@implementation DraggableNavigationRoute

- (void) renderDecorationWithoutProvision: (NSMutableSet *)symmetricPriorityState
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSNumberFormatter *pivotalScreenCount = [[NSNumberFormatter alloc] init];
		[pivotalScreenCount setRoundingMode:NSNumberFormatterRoundHalfDown];
		pivotalScreenCount.minimumIntegerDigits = 5;
		[pivotalScreenCount setNumberStyle:NSNumberFormatterSpellOutStyle];
		//NSLog(@"sets= bussiness1 gen_set %@", bussiness1);
	});
}


@end
        