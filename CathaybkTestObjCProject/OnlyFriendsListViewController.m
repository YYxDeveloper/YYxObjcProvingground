//
//  OnlyFriendsListViewController.m
//  CathaybkTestObjCProject
//
//  Created by 呂子揚 on 2021/3/15.
//

#import "OnlyFriendsListViewController.h"

@interface OnlyFriendsListViewController ()<UISearchBarDelegate,UITableViewDelegate,UITableViewDataSource>

@end

@implementation OnlyFriendsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self settingThisSubViews];
}
-(void)settingThisSubViews{
    self.searchBar.delegate = self;
    [self.tableView registerClass:[CustomTableViewCell class] forCellReuseIdentifier:@"CustomTableViewCell"];

}


-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    NSLog(@"%@", searchBar.text);

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomTableViewCell"];

        if (cell == nil) {
            cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CustomTableViewCell"];
    }

       

        return cell;
    
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  50;
}
@end
