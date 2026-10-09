// CocoaPods 下 pod 的 umbrella header 会隐式带 Foundation / UIKit，
// SPM 没有这个机制，由 tools/pod2spm/publish_source.py 补上
#import <UIKit/UIKit.h>

// Copyright (c) 2024 Tencent. All rights reserved.
// Created by eddardliu on 2024/10/21.

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VideoRecorderConfigInternal : NSObject
+ (instancetype)sharedInstance;
- (void)setCustomConfig:(NSString*)jsonString;
- (BOOL)isSupportRecordBeauty;
- (BOOL)isSupportRecordAspect;
- (BOOL)isSupportRecordTorch;
- (BOOL)isSupportRecordScrollFilter;

- (UIColor*)getThemeColor;
- (int)getMaxRecordDurationMs;
- (int)getMinRecordDurationMs;
- (int)getVideoQuality;
- (int)getRecordeMode;
- (BOOL)isDefaultFrontCamera;
@end

NS_ASSUME_NONNULL_END
