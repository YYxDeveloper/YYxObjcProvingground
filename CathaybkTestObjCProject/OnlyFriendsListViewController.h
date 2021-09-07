//
//  OnlyFriendsListViewController.h
//  CathaybkTestObjCProject
//
//  Created by 呂子揚 on 2021/3/15.
//

#import <UIKit/UIKit.h>
#import "CustomTableViewCell.h"
NS_ASSUME_NONNULL_BEGIN

@interface OnlyFriendsListViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

NS_ASSUME_NONNULL_END
