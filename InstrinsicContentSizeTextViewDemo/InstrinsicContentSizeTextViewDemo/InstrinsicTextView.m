//
//  InstrinsicTextView.m
//  InstrinsicContentSizeTextViewDemo
//
//  Created by zx on 14-1-23.
//  Copyright (c) 2014年 zx. All rights reserved.
//

#import "InstrinsicTextView.h"

@implementation InstrinsicTextView


- (void)awakeFromNib {
    [super awakeFromNib];
    self.preferredMaxLayoutWidth = self.frame.size.width;
    self.preferredMinLayoutHeight = self.frame.size.height;
}

- (void)layoutSubviews {
    [self invalidateIntrinsicContentSize];
    [super layoutSubviews];
    [self setContentOffset:CGPointZero];
}

- (CGSize)intrinsicContentSize {
    CGSize result;
    CGFloat height;
    
    if (self.preferredMinLayoutHeight) {
        height = MAX(self.preferredMinLayoutHeight, self.contentSize.height);
    } else {
        height = self.contentSize.height;
    }
    
    result = CGSizeMake(self.preferredMaxLayoutWidth, height);
    return result;
}

@end
