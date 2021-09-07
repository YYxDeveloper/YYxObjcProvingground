//
//  JsonDataManager.h
//  CathaybkTestObjCProject
//
//  Created by 呂子揚 on 2021/3/9.
//

#import <Foundation/Foundation.h>
#import <YYModel.h>
#import "Man.h"
#import "Friend.h"
#import "ManResponse.h"
#import "FriendResponse.h"
NS_ASSUME_NONNULL_BEGIN

@interface JsonDataManager : NSObject
@property (nonatomic,strong) NSString *manKey;
@property (nonatomic,strong) NSString *friend1Key;
@property (nonatomic,strong) NSString *friend2Key;
@property (nonatomic,strong) NSString *friend3Key;
@property (nonatomic,strong) NSString *friend4Key;
@property (nonatomic,strong) NSString *response;

-(instancetype)initWithJson;
-(ManResponse *)getManModel;
-(NSArray<Friend *>*)getFriend1Model;
-(void)getFriend2Model;
-(void)getFriend3Model;
-(void)getFriend4Model;


@end

NS_ASSUME_NONNULL_END
