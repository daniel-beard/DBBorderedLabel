//
//  DBBorderedLabel.m
//  DBBorderedLabel
//
//  Created by Daniel Beard on 4/01/13.
//  Copyright (c) 2013 Daniel Beard. All rights reserved.
//

#import "DBBorderedLabel.h"

@interface DBBorderedLabel ()

@property (nonatomic,strong) UIBezierPath *borderPath;

@end

@implementation DBBorderedLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(UIBezierPath*) borderPath {
    
    if (_borderPath == nil) {
        _borderPath = [UIBezierPath bezierPath];
    }
    
    //Top Left
    [_borderPath moveToPoint:CGPointMake(0, 0)];
    //Top Right
    [_borderPath addLineToPoint:CGPointMake(self.bounds.size.width, 0)];
    //Bottom Right
    [_borderPath addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height)];
    //Bottom Left
    [_borderPath addLineToPoint:CGPointMake(0, self.bounds.size.height)];
    
    //Close Path
    [_borderPath closePath];
    
    return _borderPath;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    //Stroke color
    if (self.borderColor)
        [self.borderColor setStroke];
    else
        [[UIColor blackColor] setStroke];
    
    //Border size
    if (self.borderWidth > 0)
        self.borderPath.lineWidth = self.borderWidth;
    else
        self.borderPath.lineWidth = 3.0f;
    
    [self.borderPath stroke];
    
    [super drawRect:rect];
}


@end
