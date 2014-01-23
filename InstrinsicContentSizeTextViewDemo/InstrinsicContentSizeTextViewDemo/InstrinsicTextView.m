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
    self.preferredMaxLayoutWidth = 280;
}

- (void)layoutSubviews {
    [self invalidateIntrinsicContentSize];
    [super layoutSubviews];
    [self setContentOffset:CGPointZero];
}

- (CGSize)intrinsicContentSize {
    if (self.contentSize.height <10) {
        return CGSizeMake(self.preferredMaxLayoutWidth, 15);
    }else {
        NSLog(@"%f",self.contentSize.height);
        return CGSizeMake(self.preferredMaxLayoutWidth, self.contentSize.height);
    }
}

@end
