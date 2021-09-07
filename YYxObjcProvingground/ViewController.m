//
//  ViewController.m
//  YYxObjcProvingground
//
//  Created by qw on 2021/9/4.
//

#import "ViewController.h"
#import "JsonDataManager.h"
#import "ManResponse.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"man" ofType:@"json"];
    NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@", content);

    JsonDataManager * aa = [[JsonDataManager alloc] initWithJson];
//    NSLog(aa.friend1Key);

    ManResponse *cc = aa.getManModel;

    NSArray<Friend *>* gg = aa.getFriend1Model;
    
}


@end
