//
//  ObjectsViewController.h
//  Bakken App Prototype Fun
//
//  Created by ajsmith15 on 2/10/15.
//  Copyright (c) 2015 ajsmith15. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Artifact.h"

@interface ObjectsViewController : UIViewController
@property (strong, nonatomic) Artifact *currentA;
@property (weak, nonatomic) IBOutlet UIImageView *IV;

@property (weak, nonatomic) IBOutlet UIImageView *image;

@end
