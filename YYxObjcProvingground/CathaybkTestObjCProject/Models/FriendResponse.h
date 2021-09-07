//
//  FriendResponse.h
//  CathaybkTestObjCProject
//
//  Created by 呂子揚 on 2021/3/10.
//

#import <Foundation/Foundation.h>
#import <YYModel.h>
#import "Friend.h"

NS_ASSUME_NONNULL_BEGIN

@interface FriendResponse : NSObject
@property NSArray<Friend*> *response;

@end

NS_ASSUME_NONNULL_END
