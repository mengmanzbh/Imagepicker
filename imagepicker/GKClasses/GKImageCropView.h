//
//  GKImageCropView.h
//  GKImagePicker
//
//  Created by Georg Kitz on 6/1/12.
//  Copyright (c) 2012 Aurora Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@interface GKImageCropView : UIView

@property (nonatomic, strong) UIImage *imageToCrop;
@property (nonatomic, assign) CGSize cropSize;
@property (nonatomic, assign) BOOL resizableCropArea;

- (UIImage *)croppedImage;

@end
