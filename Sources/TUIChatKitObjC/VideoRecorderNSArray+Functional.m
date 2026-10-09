// CocoaPods 下 pod 的 umbrella header 会隐式带 Foundation / UIKit，
// SPM 没有这个机制，由 tools/pod2spm/publish_source.py 补上
#import <Foundation/Foundation.h>

// Copyright (c) 2024 Tencent. All rights reserved.
// Author: eddardliu

#import "VideoRecorderNSArray+Functional.h"

@implementation NSArray (Functional)

- (NSArray *)video_recorder_map:(id (^)(id))f {
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:self.count];
    for (id x in self) {
        [array addObject:f(x)];
    }
    return array;
}
@end
