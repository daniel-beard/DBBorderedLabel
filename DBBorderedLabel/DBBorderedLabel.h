//
//  DBBorderedLabel.h
//  DBBorderedLabel
//
//  Created by Daniel Beard on 4/01/13.
//  Copyright (c) 2013 Daniel Beard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBBorderedLabel : UILabel

@property (nonatomic) BOOL borderEnabled;
@property (nonatomic,strong) UIColor *borderColor;
@property (nonatomic) CGFloat borderWidth;

@end
