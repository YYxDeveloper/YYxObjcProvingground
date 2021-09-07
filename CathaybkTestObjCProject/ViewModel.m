//
//  ViewModel.m
//  CathaybkTestObjCProject
//
//  Created by 呂子揚 on 2021/3/13.
//

#import "ViewModel.h"

@implementation ViewModel
-(instancetype)initWithTestModel:(TestModelType) witchModel{
    self = [super init];
    if(self)
    {
        self.type = witchModel;

        switch (witchModel) {
         
            case noFriend:
                //friend4
                
                
                break;
            case onlyFriendsList:
                //friend1 + 2
                
                break;
            case friendIncluedInvitation:
                //friend3
                break;
        }
       
    }
    return self;
}

@end
