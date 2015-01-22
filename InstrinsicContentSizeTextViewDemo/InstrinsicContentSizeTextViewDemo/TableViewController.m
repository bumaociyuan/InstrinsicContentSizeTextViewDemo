//
//  TableViewController.m
//  InstrinsicContentSizeTextViewDemo
//
//  Created by zx on 1/22/15.
//  Copyright (c) 2015 zx. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@property (nonatomic, weak) IBOutlet UITableViewCell *contentTextCell;
@end

@implementation TableViewController

#pragma mark - UITextViewDelegate
- (void)textViewDidChange:(UITextView *)textView {
    [self.tableView beginUpdates];
    [self.tableView endUpdates];
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = self.contentTextCell;
    float height = 0;
    [cell setNeedsLayout];
    [cell layoutIfNeeded];
    height = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    return height;
}

@end
