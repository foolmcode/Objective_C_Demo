//
//  CTLineView.m
//  Objective_C_Demo
//
//  Created by foolmcode on 2019/3/31.
//  Copyright © 2019 foolmcode. All rights reserved.
//

#import "CTLineView.h"
#import <CoreText/CoreText.h>
@implementation CTLineView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    
 
 CFStringRef string = CFSTR("Hello , world!");
    CTFontRef font = CFBridgingRetain([UIFont systemFontOfSize:14]);
    CGContextRef context = UIGraphicsGetCurrentContext();
 // Initialize the string, font, and context
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
 CFStringRef keys[] = { kCTFontAttributeName };
 CFTypeRef values[] = { font };
 
 CFDictionaryRef attributes =
 CFDictionaryCreate(kCFAllocatorDefault, (const void**)&keys,
 (const void**)&values, sizeof(keys) / sizeof(keys[0]),
 &kCFTypeDictionaryKeyCallBacks,
 &kCFTypeDictionaryValueCallBacks);
 

    
    
 CFAttributedStringRef attrString =
 CFAttributedStringCreate(kCFAllocatorDefault, string, attributes);
 CFAttributedStringSetAttribute(attrString, CFRangeMake(0, CFStringGetLength(string)),
                                   kCTForegroundColorAttributeName, UIColor.whiteColor.CGColor);
 CFRelease(string);
 CFRelease(attributes);
 
 CTLineRef line = CTLineCreateWithAttributedString(attrString);
 
 // Set text position and draw the line into the graphics context
 CGContextSetTextPosition(context, 10.0, 10.0);
 CTLineDraw(line, context);
 CFRelease(line);
}


@end
