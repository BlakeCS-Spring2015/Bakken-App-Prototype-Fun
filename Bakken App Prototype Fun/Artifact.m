//
//  Thing.m
//  Bakken App Prototype Fun
//
//  Created by ajsmith15 on 2/10/15.
//  Copyright (c) 2015 ajsmith15. All rights reserved.
//

#import "Artifact.h"

@implementation Artifact

- (id)initWithDictionary:(NSDictionary *)aDictionary {
    
    self = [[Artifact alloc] init];
    if (self) {
        self.name = [aDictionary valueForKey:@"Name"];
        self.date = [aDictionary valueForKey:@"Date"];
        self.info = [aDictionary valueForKey:@"Info"];
        self.imageName = [aDictionary valueForKey:@"Image_Name"]; 
    }
    return self;
}

@end
