//
//  ViewPageInfo.h
//  Bakken App Prototype Fun
//
//  Created by ajsmith15 on 2/9/15.
//  Copyright (c) 2015 ajsmith15. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ViewPageInfo : NSObject

@property (strong, nonatomic) NSString *BakkenText;
@property (strong, nonatomic) NSString *ObjectName;
@property (strong, nonatomic) NSString *ObjectDate;

- (NSString *)fullObject;


@end
