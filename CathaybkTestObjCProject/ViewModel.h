//
//  ViewModel.h
//  CathaybkTestObjCProject
//
//  Created by 呂子揚 on 2021/3/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum{
    noFriend = 0,
    onlyFriendsList,
    friendIncluedInvitation

}TestModelType;
@interface ViewModel : NSObject
@property  TestModelType type;

-(instancetype)initWithTestModel:(TestModelType) witchModel;
@end

NS_ASSUME_NONNULL_END
