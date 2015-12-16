//
//  ViewController.m
//  imagepicker
//
//  Created by kuailefu on 15/12/16.
//  Copyright © 2015年 kuailefu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController
- (IBAction)show:(id)sender {
    self.imagePicker = [[GKImagePicker alloc] init];
    self.imagePicker.cropSize = CGSizeMake(296, 300);
    self.imagePicker.delegate = self;
    self.imagePicker.imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;//摄像机
//    self.imagePicker.imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;//相册
    self.imagePicker.resizeableCropArea = YES;
    [self presentViewController:self.imagePicker.imagePickerController animated:YES completion:nil];
    
}
# pragma mark GKImagePicker Delegate Methods
- (void)imagePicker:(GKImagePicker *)imagePicker pickedImage:(UIImage *)image{
    //最终的图片
    self.imgView.image = image;
    [self hideImagePicker];
}

- (void)hideImagePicker{
    [self.imagePicker.imagePickerController dismissViewControllerAnimated:YES completion:nil];
}

# pragma mark UIImagePickerDelegate Methods
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo{
    self.imgView.image = image;
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
