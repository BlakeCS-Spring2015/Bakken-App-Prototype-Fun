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
//@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation ObjectsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.name.text = self.currentA.name;
    self.date.text = self.currentA.date;
    self.info.text = self.currentA.info;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
