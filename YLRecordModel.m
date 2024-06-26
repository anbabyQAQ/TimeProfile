//
//  YLRecordModel.m
//  YYStubHook
//
//  Created by tianyulong 2022/04/27.
//

#import "YLRecordModel.h"

@implementation YLRecordModel

- (instancetype)initWithCls:(Class)cls sel:(SEL)sel time:(uint64_t)costTime depth:(int)depth total:(int)total
{
    self = [super init];
    if (self) {
        self.callCount = 0;
        self.cls = cls;
        self.sel = sel;
        self.costTime = costTime;
        self.depth = depth;
        self.total = total;
        self.isUsed = NO;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    YLRecordModel *model = [[[self class]  allocWithZone:zone] init];
    model.cls = self.cls;
    model.sel = self.sel;
    model.costTime = self.costTime;
    model.depth = self.depth;
    model.total = self.total;
    model.isUsed = self.isUsed;
    model.callCount = self.callCount;
    return model;
}

- (BOOL)isEqualRecordModel:(YLRecordModel *)model
{
    if ([self.cls isEqual:model.cls] && self.sel==model.sel) {
        return YES;
    }
    return NO;
}

@end
