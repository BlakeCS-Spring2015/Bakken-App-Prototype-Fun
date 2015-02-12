//
//  TableViewController.m
//  Bakken App Prototype Fun
//
//  Created by ajsmith15 on 2/10/15.
//  Copyright (c) 2015 ajsmith15. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

@synthesize array;

- (void)viewDidLoad {
    [super viewDidLoad];
    array = @[@"Foo", @"Bar", @"Quark"];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [array count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [array objectAtIndex:indexPath.row];
    
    return cell;
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    ViewController *vc;
    vc = [segue destinationViewController];
    vc.intLabel = path.row; 
}


@end
