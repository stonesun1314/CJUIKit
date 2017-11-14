//
//  CJTextView.h
//  CJTextView
//
//  Created by ciyouzen on 2015/12/23.
//  Copyright © 2015年 dvlproad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CJTextView : UITextView

@property (nonatomic, strong) NSString *placeholder;        /**< 占位文字 */
@property (nonatomic, strong) UIColor *placeholderColor;    /**< 占位文字颜色 */
@property (nonatomic, assign) NSUInteger cornerRadius;      /**< 设置圆角 */

@property (nonatomic, assign, readonly) NSInteger originTextViewHeight;   /**< 文本框的初始高度 */

/**
 *  设置文本框的最大行数，在文本框文字高度改变变化的时候，利用block中返回的文本高度来更新textView的高度
 *
 *  @param maxNumberOfLines             textView的最大行数
 *  @param textViewHeightChangeBlock    文字高度改变block（文字高度改变会自动调用）
 *
 */
- (void)setMaxNumberOfLines:(NSUInteger)maxNumberOfLines
      textHeightChangeBlock:(void(^)(NSString *text, CGFloat currentTextViewHeight))textViewHeightChangeBlock;



/**
 *  设置文本框的最大高度，在文本框文字高度改变变化的时候，利用block中返回的文本高度来更新textView的高度
 *
 *  @param maxTextViewHeight            textView的最大高度
 *  @param textViewHeightChangeBlock    文字高度改变block（文字高度改变会自动调用）
 *
 */
- (void)setMaxTextViewHeight:(NSUInteger)maxTextViewHeight
       textHeightChangeBlock:(void (^)(NSString *text, CGFloat currentTextViewHeight))textViewHeightChangeBlock;

@end