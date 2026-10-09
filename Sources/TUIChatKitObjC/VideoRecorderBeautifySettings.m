// CocoaPods 下 pod 的 umbrella header 会隐式带 Foundation / UIKit，
// SPM 没有这个机制，由 tools/pod2spm/publish_source.py 补上
#import <Foundation/Foundation.h>

// Copyright (c) 2024 Tencent. All rights reserved.
// Author: eddardliu

#import "VideoRecorderBeautifySettings.h"
#include "VideoRecorderCommon.h"

@implementation VideoRecorderBeautifySettings

- (instancetype)init {
    self = [super init];
    if (self != nil) {
        _activeBeautifyTag = VideoRecorderEffectItemTagNone;
        _beautifyItems = [VideoRecorderBeautifyEffectItem defaultBeautifyEffects];
        _filterItems = [VideoRecorderBeautifyEffectItem defaultFilterEffects];
    }
    return self;
}

@end
