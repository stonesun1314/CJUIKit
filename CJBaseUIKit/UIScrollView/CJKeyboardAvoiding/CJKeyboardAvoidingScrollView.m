//
//  CJKeyboardAvoidingScrollView.m
//  CJUIKitDemo
//
//  Created by ciyouzen on 8/10/13.
//  Copyright (c) 2013 dvlproad. All rights reserved.
//

#import "CJKeyboardAvoidingScrollView.h"

@interface CJKeyboardAvoidingScrollView () {
    
}

@end


@implementation CJKeyboardAvoidingScrollView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self commonInit];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)dealloc {
    [self cj_unRegisterKeyboardNotifications];
}

- (void)commonInit {
    [self cj_registerKeyboardNotifications];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self cj_resignFirstResponder];
    
    [super touchesEnded:touches withEvent:event];
}

@end
