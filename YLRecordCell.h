//
//  YLRecordCell.h
//  YYStubHook
//
//  Created by tianyulong 2022/04/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class YLRecordModel;
@class YLRecordCell;

@protocol YSRecordCellDelegate <NSObject>

- (void)recordCell:(YLRecordCell *)cell clickExpandWithSection:(NSInteger)section;

@end

@interface YLRecordCell : UITableViewCell

@property (nonatomic, weak)id<YSRecordCellDelegate> delegate;

- (void)bindRecordModel:(YLRecordModel *)model isHiddenExpandBtn:(BOOL)isHidden isExpand:(BOOL)isExpand section:(NSInteger)section isCallCountType:(BOOL)isCallCountType;

@end

NS_ASSUME_NONNULL_END
