// CocoaPods 下 pod 的 umbrella header 会隐式带 Foundation / UIKit，
// SPM 没有这个机制，由 tools/pod2spm/publish_source.py 补上
#import <Foundation/Foundation.h>

// Copyright (c) 2021 Tencent. All rights reserved.
// Author: eddardliu

#import "VideoRecordCore.h"
NS_ASSUME_NONNULL_BEGIN

@interface UGCReflectVideoRecordCore : VideoRecordCore

@end

NS_ASSUME_NONNULL_END
