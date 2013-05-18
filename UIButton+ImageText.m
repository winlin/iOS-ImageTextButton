//
//  UIButton+ImageText.m
//  BaccaratClient
//
//  Created by gtliu on 11/6/12.
//  Copyright (c) 2012 wicresoft. All rights reserved.
//

#import "UIButton+ImageText.h"

@implementation UIButton (ImageText)
-(void)setImage:(NSString *)imageName setTitle:(NSString *)title
{
    UIImage *image = [UIImage imageNamed:imageName];
    //[self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.titleLabel setFont:[UIFont boldSystemFontOfSize:15.0]];
    [self setImage:image forState:UIControlStateNormal];
    [self setTitle:title forState:UIControlStateNormal];
    CGFloat spacing = 8.0;
    CGSize imageSize = image.size;
    CGSize titleSize = [self.titleLabel.text sizeWithFont:[self.titleLabel font]];
    [self setBounds:CGRectMake(0, 0, imageSize.width+titleSize.width+spacing, imageSize.height)];
    //self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageSize.width+spacing), 0, 0);
    self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, (titleSize.width+spacing));
}
-(void)changeImage:(NSString *)imageName
{
    [self setImage:imageName setTitle:self.titleLabel.text];
}
@end
