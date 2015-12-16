//
//  ViewController.h
//  imagepicker
//
//  Created by kuailefu on 15/12/16.
//  Copyright © 2015年 kuailefu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GKImagePicker.h"
@interface ViewController : UIViewController<GKImagePickerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (nonatomic, strong) GKImagePicker *imagePicker;

@end

