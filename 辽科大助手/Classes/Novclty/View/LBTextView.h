//
//  LBTextView.h
//  辽科大微博
//
//  Created by MacBook Pro on 16/1/12.
//  Copyright © 2016年 USTL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LBTextView : UITextView

/** 占位符*/
@property (nonatomic, copy) NSString *placeHolder;

/** 字体颜色*/
@property (nonatomic, strong) UIColor *placeHolderColor;

@end
