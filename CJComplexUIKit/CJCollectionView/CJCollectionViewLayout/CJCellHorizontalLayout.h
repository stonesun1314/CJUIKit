//
//  CJCellHorizontalLayout.h
//  CJUIKitDemo
//
//  Created by ciyouzen on 16-5-30.
//  Copyright (c) 2016年 dvlproad. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  在水平滑动下，可以让cell按行排列的布局(常用来实现QQ表情键盘或者微信表情键盘等)
 */
@interface CJCellHorizontalLayout : UICollectionViewLayout

@property (nonatomic, assign) CGFloat minimumLineSpacing;       /**< 行间距 */
@property (nonatomic, assign) CGFloat minimumInteritemSpacing;  /**< item间距 */
@property (nonatomic, assign) UIEdgeInsets sectionInset;        /**< sectionInset */


//以下值必须二选一设置（默认cellWidthFromFixedWidth设置后，另外一个自动失效）
@property (nonatomic, assign) CGFloat cellWidthFromFixedWidth;   /**< 通过cell的固定宽度来设置每个cell的宽度 */
@property (nonatomic, assign) NSUInteger cellWidthFromPerRowMaxShowCount; /**< 通过每行可显示的最多个数来设置每个cell的宽度*/

//以下值可选设置，（默认cellHeightFromFixedHeight设置后，另外一个自动失效，如果两个都没设置，则高等于宽）
@property (nonatomic, assign) CGFloat cellHeightFromFixedHeight; /**< cell高,没设置的话等于其宽 */
@property (nonatomic, assign) NSUInteger cellHeightFromPerColumnMaxShowCount; /**< 通过每列可显示的最多个数来设置每个cell的高度(循环的时候可设这个值为1即可) */


- (instancetype)init;

@end
