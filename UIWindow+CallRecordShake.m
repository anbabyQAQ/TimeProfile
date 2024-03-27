//
//  UIWindow+CallRecordShake.m
//  YYStubHook
//
//  Created by tianyulong 2022/04/27.
//

#import "UIWindow+CallRecordShake.h"
#import "TimeProfilerVC.h"

@implementation UIWindow (CallRecordShake)

/// 想要检测任何一个方法耗时，可以打开此注释，并且在需要兼容的方法前后调用startTrace() 和 stopTrace() ，摇一摇即可
/// 想要检测任何一个方法耗时，可以打开此注释，并且在需要兼容的方法前后调用startTrace() 和 stopTrace() ，摇一摇即可
/// 想要检测任何一个方法耗时，可以打开此注释，并且在需要兼容的方法前后调用startTrace() 和 stopTrace() ，摇一摇即可
/// 想要检测任何一个方法耗时，可以打开此注释，并且在需要兼容的方法前后调用startTrace() 和 stopTrace() ，摇一摇即可
/// 想要检测任何一个方法耗时，可以打开此注释，并且在需要兼容的方法前后调用startTrace() 和 stopTrace() ，摇一摇即可

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    TimeProfilerVC *vc = [[TimeProfilerVC alloc] init];
    [self.rootViewController presentViewController:vc animated:YES completion:nil];
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
}

@end
