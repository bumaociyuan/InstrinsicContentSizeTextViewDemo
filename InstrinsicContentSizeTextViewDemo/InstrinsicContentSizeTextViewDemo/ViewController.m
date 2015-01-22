//
//  ViewController.m
//  InstrinsicContentSizeTextViewDemo
//
//  Created by zx on 14-1-23.
//  Copyright (c) 2014年 zx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextViewDelegate>
//@property (nonatomic, strong) IBOutletCollection(NSLayoutConstraint) NSArray *sizeConstraints;
@property (nonatomic, weak) IBOutlet UITextView *textView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self.textView removeConstraints:self.sizeConstraints];
    [self.view layoutIfNeeded];
}

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView {
    NSLog(@"%s",__func__);
    
    return YES;
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView {
    NSLog(@"%s",__func__);
    return YES;
}

- (void)textViewDidBeginEditing:(UITextView *)textView {
    NSLog(@"%s",__func__);
    
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    NSLog(@"%s",__func__);
    
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text; {
    NSLog(@"%s",__func__);
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    NSLog(@"%s",__func__);
    
}

- (void)textViewDidChangeSelection:(UITextView *)textView {
    NSLog(@"%s",__func__);
    
}

#pragma mark - 
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}
@end
