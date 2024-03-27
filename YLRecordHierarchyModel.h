//
//  YLRecordHierarchyModel.h
//  YYStubHook
//
//  Created by tianyulong 2022/04/27.
//

#import <Foundation/Foundation.h>
#import "YLRecordModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface YLRecordHierarchyModel : NSObject <NSCopying>

@property (nonatomic, strong)YLRecordModel *rootMethod;
@property (nonatomic, copy)NSArray *subMethods;
@property (nonatomic, assign)BOOL isExpand;   //是否展开所有的子函数

- (instancetype)initWithRecordModelArr:(NSArray *)recordModelArr;
- (YLRecordModel *)getRecordModel:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
