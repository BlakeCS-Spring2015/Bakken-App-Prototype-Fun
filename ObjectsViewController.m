//
//  ObjectsViewController.m
//  Bakken App Prototype Fun
//
//  Created by ajsmith15 on 2/10/15.
//  Copyright (c) 2015 ajsmith15. All rights reserved.
//

#import "ObjectsViewController.h"
#import "Artifact.h" 

@interface ObjectsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *info;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation ObjectsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.name.text = self.currentA.name;
    self.date.text = self.currentA.date;
    self.info.text = self.currentA.info;
    UIImage *currentImage = [UIImage imageNamed:self.currentA.imageName];
    self.image.image = currentImage; 

}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
