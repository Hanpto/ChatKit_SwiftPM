// CocoaPods 下 pod 的 umbrella header 会隐式带 Foundation / UIKit，
// SPM 没有这个机制，由 tools/pod2spm/publish_source.py 补上
#import <Foundation/Foundation.h>

// Copyright (c) 2021 Tencent. All rights reserved.
// Author: eddardliu

NS_ASSUME_NONNULL_BEGIN

@interface ReflectUtil : NSObject
+ (id)safeValueForProperty:(id) instance propertyName:(NSString *)propertyName;
+ (id)invokeMethod:(id) instance methodName:(NSString *)methodName withArguments:(NSArray *)arguments;
@end

NS_ASSUME_NONNULL_END
