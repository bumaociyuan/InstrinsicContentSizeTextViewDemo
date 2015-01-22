//
//  InstrinsicTextView.h
//  InstrinsicContentSizeTextViewDemo
//
//  Created by zx on 14-1-23.
//  Copyright (c) 2014年 zx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InstrinsicTextView : UITextView
/*!
 *  default is self.frame.size.width
 */
@property (nonatomic, assign) float preferredMaxLayoutWidth;
/*!
 *  default is self.frame.size.height
 */
@property (nonatomic, assign) float preferredMinLayoutHeight;
@end
