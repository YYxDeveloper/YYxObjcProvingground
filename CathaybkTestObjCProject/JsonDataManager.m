//
//  JsonDataManager.m
//  CathaybkTestObjCProject
//
//  Created by 呂子揚 on 2021/3/9.
//

#import "JsonDataManager.h"

@implementation JsonDataManager
-(instancetype)initWithJson{
    self = [super init];
    if(self)
    {
        self.manKey = @"man";
        self.friend1Key = @"friend1";
        self.friend2Key = @"friend2";
        self.friend3Key = @"friend3";
        self.friend4Key = @"friend4";
        self.response = @"response";
    }
    return self;
}
+(NSString *)getJsonStringFromFile:(NSString *)fileName{
    
    return  @"";
}
-(ManResponse *)getManModel{
    NSString *path = [[NSBundle mainBundle] pathForResource:self.manKey ofType:@"json"];
    NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    return [ManResponse yy_modelWithJSON:content];
}
-(NSArray<Friend *>*)getFriend1Model{
    NSString *path = [[NSBundle mainBundle] pathForResource:self.friend1Key ofType:@"json"];
    NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    FriendResponse * p =  [FriendResponse yy_modelWithJSON:content];
    return [NSArray yy_modelArrayWithClass:[Friend class] json:p.response];
   
}
-(void)getFriend2Model{
    
}
-(void)getFriend3Model{
    
}
-(void)getFriend4Model{
    
}
@end
