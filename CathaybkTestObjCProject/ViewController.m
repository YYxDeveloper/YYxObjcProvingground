//
//  ViewController.m
//  CathaybkTestObjCProject
//
//  Created by 呂子揚 on 2021/3/9.
//

#import "ViewController.h"
#import "JsonDataManager.h"
#import "ManResponse.h"
#import <Masonry/Masonry.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *centerHomeImageView;
@property (weak, nonatomic) IBOutlet UIView *topBackgroundView;
@property (weak, nonatomic) IBOutlet UIView *joinFriendView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//        NSString *path = [[NSBundle mainBundle] pathForResource:@"man" ofType:@"json"];
//        NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
//        NSLog(@"%@", content);
//    
//        JsonDataManager * aa = [[JsonDataManager alloc] initWithJson];
//    //    NSLog(aa.friend1Key);
//    
//        ManResponse *cc = aa.getManModel;
//    
//        NSArray<Friend *>* gg = aa.getFriend1Model;
    //
    //
    self.viewModel = [[ViewModel alloc]initWithTestModel:noFriend];
    
    [self settingThisSubViews];
    [self addThisSubViews];
    [self layoutThisSubViews];
    
}
-(void)settingThisSubViews{
//    self.joinFriendView.backgroundColor = [UIColor greenColor];
    // Create the colors
    UIColor *topColor = [UIColor colorWithRed:86.0/255.0 green:179.0/255.0 blue:11.0/255.0 alpha:1];
    UIColor *bottomColor = [UIColor colorWithRed:166/255.0 green:204/255.0 blue:66/255.0 alpha:1];

    // Create the gradient
    CAGradientLayer *theViewGradient = [CAGradientLayer layer];
    theViewGradient.startPoint = CGPointMake(0.0, 0.5);
    theViewGradient.endPoint = CGPointMake(1.0, 0.5);
    theViewGradient.cornerRadius = 20.0;
    theViewGradient.colors = [NSArray arrayWithObjects: (id)topColor.CGColor, (id)bottomColor.CGColor, nil];
    theViewGradient.frame = self.joinFriendView.bounds;

    //Add gradient to view
    [self.joinFriendView.layer insertSublayer:theViewGradient atIndex:0];
}


-(void)addThisSubViews{
    
    
   
}
-(void)layoutThisSubViews{
//    UIEdgeInsets padding = UIEdgeInsetsMake(10, 0, 10, 0);
//    [self.noFriendView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.topBackgroundView.mas_bottom).with.offset(padding.top); //with is an optional semantic filler
//        make.left.equalTo(self.view.mas_left);
//        make.bottom.equalTo(self.centerHomeImageView.mas_top).with.offset(-padding.bottom);
//        make.right.equalTo(self.view.mas_right);
//    }];
}
-(void)viewWillAppear:(BOOL)animated{
    
}
-(void)viewDidAppear:(BOOL)animated{
    //    [self logoutButtonPressed];
//    self.noFriendView.joinFriendView.backgroundColor = [UIColor redColor];

}
- (void)logoutButtonPressed
{
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"模擬情境"
                                 message:@""
                                 preferredStyle:UIAlertControllerStyleActionSheet];
    
    //Add Buttons
    
    UIAlertAction* btn1 = [UIAlertAction
                           actionWithTitle:@"無好友畫面"
                           style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {
        self.viewModel = [[ViewModel alloc]initWithTestModel:noFriend];
        
    }];
    
    UIAlertAction* btn2 = [UIAlertAction
                           actionWithTitle:@"只有好友列表"
                           style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {
        self.viewModel = [[ViewModel alloc]initWithTestModel:onlyFriendsList];
        
    }];
    UIAlertAction* btn3 = [UIAlertAction
                           actionWithTitle:@"好友列表含邀請"
                           style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {
        self.viewModel = [[ViewModel alloc]initWithTestModel:friendIncluedInvitation];
    }];
    
    //Add your buttons to alert controller
    
    [alert addAction:btn1];
    [alert addAction:btn2];
    [alert addAction:btn3];
    
    
    //    [self presentViewController:alert animated:YES completion:nil];
    [self presentViewController:alert animated:YES completion:nil];
}


@end
