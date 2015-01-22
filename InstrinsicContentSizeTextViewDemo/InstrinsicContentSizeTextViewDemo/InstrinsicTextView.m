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
    self.preferredMaxLayoutWidth = self.frame.size.width;
}

- (void)layoutSubviews {
    [self invalidateIntrinsicContentSize];
    [super layoutSubviews];
    [self setContentOffset:CGPointZero];
}

- (CGSize)intrinsicContentSize {
    return CGSizeMake(self.preferredMaxLayoutWidth, self.contentSize.height);
}

@end
