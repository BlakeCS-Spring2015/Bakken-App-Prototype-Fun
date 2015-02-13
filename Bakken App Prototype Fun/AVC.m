//
//  ViewController.m
//  Bakken App Prototype Fun
//
//  Created by ajsmith15 on 2/9/15.
//  Copyright (c) 2015 ajsmith15. All rights reserved.
//

#import "AVC.h"
#import "Artifact.h" 
#import "ObjectsViewController.h"

@interface AVC ()

@property (weak, nonatomic) IBOutlet UIButton *a1;
@property (weak, nonatomic) IBOutlet UIButton *a2;
@property (weak, nonatomic) IBOutlet UIButton *a3;
@property (weak, nonatomic) IBOutlet UIButton *a4;
@property (strong, nonatomic) NSArray *allArtifacts;




@end

@implementation AVC


- (void)viewDidLoad {
    [super viewDidLoad];
    Artifact *a1 = [[Artifact alloc] init];
    a1.name = @"Foo";
    a1.date = @"2000";
    a1.info = @"words!";
    Artifact *a2 = [[Artifact alloc] init];
    a2.name = @"Schmoo";
    a2.date = @"1990";
    a2.info = @"more words!";
    Artifact *a3 = [[Artifact alloc] init];
    a3.name = @"Azi";
    a3.date = @"0000";
    a3.info = @"really really old";
    Artifact *a4 = [[Artifact alloc] init];
    a4.name = @"Pizza the hut";
    a4.date = @"3097";
    a4.info = @"um..... nope. Just nope.";
    
    NSArray *aA = @[a1, a2, a3, a4];
    self.allArtifacts = aA;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ObjectsViewController *ovc = [segue destinationViewController];
    if (sender == self.a1) {
        ovc.currentA = self.allArtifacts[0];
    }
    else if (sender == self.a2) {
        ovc.currentA = self.allArtifacts[1];
    }
    else if (sender == self.a3) {
        ovc.currentA = self.allArtifacts[2];
    }
    else if (sender == self.a4) {
        ovc.currentA = self.allArtifacts[3];
    }
}

@end
