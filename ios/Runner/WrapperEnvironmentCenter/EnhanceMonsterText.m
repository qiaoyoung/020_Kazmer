#import "EnhanceMonsterText.h"
    
@interface EnhanceMonsterText ()

@end

@implementation EnhanceMonsterText

- (void) offRoleMapper: (NSMutableDictionary *)utilInsideWork
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger roleWithoutObserver = utilInsideWork.count;
		UITableView *interactorScopeState = [[UITableView alloc] init];
		[interactorScopeState setDelegate:self];
		[interactorScopeState setDataSource:self];
		[interactorScopeState setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[interactorScopeState setRowHeight:49];
		NSString *comprehensiveGetxIndex = @"CellIdentifier";
		[interactorScopeState registerClass:[UITableViewCell class] forCellReuseIdentifier:comprehensiveGetxIndex];
		UIRefreshControl *durationForForm = [[UIRefreshControl alloc] init];
		[durationForForm addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[interactorScopeState setRefreshControl:durationForForm];
		if (roleWithoutObserver > 7) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = roleWithoutObserver / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", roleWithoutObserver);
	});
}


@end
        