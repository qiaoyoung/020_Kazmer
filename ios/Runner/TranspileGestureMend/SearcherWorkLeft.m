#import "SearcherWorkLeft.h"
    
@interface SearcherWorkLeft ()

@end

@implementation SearcherWorkLeft

- (void) destroyCustompaintFromButton: (NSMutableDictionary *)desktopConfigurationForce
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger commonCaptionFormat = desktopConfigurationForce.count;
		UITableView *projectionThroughTier = [[UITableView alloc] init];
		[projectionThroughTier setDelegate:self];
		[projectionThroughTier setDataSource:self];
		[projectionThroughTier setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[projectionThroughTier setRowHeight:43];
		NSString *channelsWithStructure = @"CellIdentifier";
		[projectionThroughTier registerClass:[UITableViewCell class] forCellReuseIdentifier:channelsWithStructure];
		UIRefreshControl *blocOrLevel = [[UIRefreshControl alloc] init];
		[blocOrLevel addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[projectionThroughTier setRefreshControl:blocOrLevel];
		if (commonCaptionFormat > 1) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = commonCaptionFormat / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", commonCaptionFormat);
	});
}


@end
        