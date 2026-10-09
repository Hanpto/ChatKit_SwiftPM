// CocoaPods 下 pod 的 umbrella header 会隐式带 Foundation / UIKit，
// SPM 没有这个机制，由 tools/pod2spm/publish_source.py 补上
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// Copyright (c) 2024 Tencent. All rights reserved.
// Author: eddardliu

#import <AVFoundation/AVFoundation.h>

@protocol VideoRecorderPreviewViewDelegate;

@interface VideoRecorderPreviewView : UIView

@property(weak, nullable, nonatomic) id<VideoRecorderPreviewViewDelegate> delegate;
- (void) previewPhoto:(UIImage*_Nullable) image;
- (void) play:(NSString*_Nullable)videoPath;
- (void) stop;
- (void) pause;
- (void) resume;
@end

@protocol VideoRecorderPreviewViewDelegate <NSObject>
- (void)previewAccept:(NSString*) videoPath image:(UIImage*) image;
- (void)previewCancel;
@end
