#import "TrainNormCallback.h"
    
@interface TrainNormCallback ()

@end

@implementation TrainNormCallback

- (void) deactivateCollectionInData: (NSString *)textureForScope
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UISegmentedControl *switchParamDirection = [[UISegmentedControl alloc] init];
		[switchParamDirection insertSegmentWithTitle:textureForScope atIndex:0 animated:YES];
		switchParamDirection.selected = YES;
		switchParamDirection.enabled = YES;
		//NSLog(@"sets= bussiness5 gen_str %@", bussiness5);
	});
}


@end
        