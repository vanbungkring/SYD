//
//  VanKeyboardHelper.m
//  WSUP
//
//  Created by Arie Prasetyo on 6/2/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "VanKeyboardHelper.h"

@interface VanKeyboardHelper()

@property (strong, nonatomic) UIBarButtonItem *nextButton;
@property (strong, nonatomic) UIBarButtonItem *previousButton;
@property (strong, nonatomic) UIBarButtonItem *doneButton;
@property (strong, nonatomic) UIBarButtonItem *flexibleSpace;
@end

@implementation VanKeyboardHelper

- (instancetype)init {
    return [self initWithTextFields:@[]];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        _previousButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"previous_textfield_toolbar"]
                                                           style:UIBarButtonItemStylePlain
                                                          target:self
                                                          action:@selector(previousButtonTapped:)];
        
        _nextButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"next_textfield_toolbar"]
                                                       style:UIBarButtonItemStylePlain
                                                      target:self
                                                      action:@selector(nextButtonTapped:)];
        
        _flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                       target:nil
                                                                       action:nil];
        
        _doneButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Selesai", nil)
                                                       style:UIBarButtonItemStyleDone
                                                      target:self
                                                      action:@selector(doneButtonTapped:)];
        
        self.items = @[_previousButton, _nextButton, _flexibleSpace, _doneButton];
    }
    return self;
}

- (instancetype)initWithTextFields:(NSArray *)textFields {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        _textFields = textFields;
        
        _previousButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"previous_textfield_toolbar"]
                                                           style:UIBarButtonItemStylePlain
                                                          target:self
                                                          action:@selector(previousButtonTapped:)];
        
        _nextButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"next_textfield_toolbar"]
                                                       style:UIBarButtonItemStylePlain
                                                      target:self
                                                      action:@selector(nextButtonTapped:)];
        
        _flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                       target:nil
                                                                       action:nil];
        
        _doneButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Selesai", nil)
                                                       style:UIBarButtonItemStyleDone
                                                      target:self
                                                      action:@selector(doneButtonTapped:)];
        if (textFields.count == 1) {
            self.items = @[_flexibleSpace, _doneButton];
        }
        else {
            self.items = @[_previousButton, _nextButton, _flexibleSpace, _doneButton];
        }
        
        [self sizeToFit];
        
        for (id textField in _textFields) {
            if ([textField isKindOfClass:[UITextField class]]) {
                ((UITextField *)textField).inputAccessoryView = self;
            }
            if ([textField isKindOfClass:[UITextView class]]) {
                ((UITextView *)textField).inputAccessoryView = self;
            }
        }
    }
    return self;
}

+ (instancetype)addToTextFields:(NSArray *)textFields {
    return [[self alloc] initWithTextFields:textFields];
}

- (void)setTextFields:(NSArray *)textFields {
    if (_textFields != textFields) {
        _textFields = textFields;
    }
    
    if (textFields.count == 1) {
        self.items = @[self.flexibleSpace, self.doneButton];
    }
    
    for (id textField in _textFields) {
        if ([textField isKindOfClass:[UITextField class]]) {
            ((UITextField *)textField).inputAccessoryView = self;
        }
        if ([textField isKindOfClass:[UITextView class]]) {
            ((UITextView *)textField).inputAccessoryView = self;
        }
    }
}

#pragma mark - UIBarButton Action
- (void)nextButtonTapped:(UIBarButtonItem *)sender {
    NSInteger activeIndex = 0;
    for (NSInteger i = 0; i < self.textFields.count; i++) {
        id textField = [self.textFields objectAtIndex:i];
        if ([textField isKindOfClass:[UITextField class]]) {
            if ([(UITextField *)textField isFirstResponder]) {
                activeIndex = i;
            }
        }
        if ([textField isKindOfClass:[UITextView class]]) {
            if ([(UITextView *)textField isFirstResponder]) {
                activeIndex = i;
            }
        }
    }
    
    if (activeIndex < self.textFields.count - 1) {
        [[self.textFields objectAtIndex:++activeIndex] becomeFirstResponder];
    }
}

- (void)previousButtonTapped:(UIBarButtonItem *)sender {
    NSInteger activeIndex = 0;
    for (NSInteger i = 0; i < self.textFields.count; i++) {
        id textField = [self.textFields objectAtIndex:i];
        if ([textField isKindOfClass:[UITextField class]]) {
            if ([(UITextField *)textField isFirstResponder]) {
                activeIndex = i;
            }
        }
        if ([textField isKindOfClass:[UITextView class]]) {
            if ([(UITextView *)textField isFirstResponder]) {
                activeIndex = i;
            }
        }
    }
    if (activeIndex > 0) {
        [[self.textFields objectAtIndex:--activeIndex] becomeFirstResponder];
    }
}

- (void)doneButtonTapped:(UIBarButtonItem *)sender {
    for (id textField in self.textFields) {
        if ([textField isKindOfClass:[UITextField class]]) {
            if ([(UITextField *)textField isFirstResponder]) {
                [(UITextField *)textField resignFirstResponder];
            }
        }
        if ([textField isKindOfClass:[UITextView class]]) {
            if ([(UITextView *)textField isFirstResponder]) {
                [(UITextView *)textField resignFirstResponder];
            }
        }
    }
}

@end
