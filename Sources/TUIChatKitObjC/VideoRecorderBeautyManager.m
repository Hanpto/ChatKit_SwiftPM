// CocoaPods 下 pod 的 umbrella header 会隐式带 Foundation / UIKit，
// SPM 没有这个机制，由 tools/pod2spm/publish_source.py 补上
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// Copyright (c) 2024 Tencent. All rights reserved.
// Author: eddardliu

#import "VideoRecorderBeautyManager.h"

#import "ReflectUtil.h"

@interface VideoRecorderBeautyManager () {
    id _txUGCBeautyManagerInstance;
}
@end

@implementation VideoRecorderBeautyManager

- (instancetype) initWithUGCBeauty:(id) ugcBeauty {
    self = [super init];
    if (self) {
        _txUGCBeautyManagerInstance = ugcBeauty;
    }
    return self;
}

- (void)setBeautyStyle:(TXBeautyStyle)beautyStyle {
    [ReflectUtil invokeMethod:_txUGCBeautyManagerInstance  methodName:@"setBeautyStyle:" withArguments:@[@(beautyStyle)]];
}

- (void)setBeautyLevel:(float)beautyLevel {
    [ReflectUtil invokeMethod:_txUGCBeautyManagerInstance  methodName:@"setBeautyLevel:" withArguments:@[@(beautyLevel)]];
}

- (void)setWhitenessLevel:(float)whitenessLevel {
    [ReflectUtil invokeMethod:_txUGCBeautyManagerInstance  methodName:@"setWhitenessLevel:" withArguments:@[@(whitenessLevel)]];
}

- (void)setRuddyLevel:(float)ruddyLevel {
    [ReflectUtil invokeMethod:_txUGCBeautyManagerInstance  methodName:@"setRuddyLevel:" withArguments:@[@(ruddyLevel)]];
}

- (void)setFilter:(nullable UIImage *)image {
    if (image == nil) {
        return;
    }
    [ReflectUtil invokeMethod:_txUGCBeautyManagerInstance  methodName:@"setFilter:" withArguments:@[image]];
}

- (void)setFilterStrength:(float)strength {
    [ReflectUtil invokeMethod:_txUGCBeautyManagerInstance  methodName:@"setFilterStrength:" withArguments:@[@(strength)]];
}

@end
