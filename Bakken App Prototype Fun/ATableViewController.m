//
//  ATableViewController.m
//  Bakken App Prototype Fun
//
//  Created by ajsmith15 on 2/19/15.
//  Copyright (c) 2015 ajsmith15. All rights reserved.
//

#import "ATableViewController.h"
#import "Artifact.h"
#import "ObjectsViewController.h"

@interface ATableViewController ()

@property (strong, nonatomic) NSMutableArray *allArtifacts;
@property (strong, nonatomic) NSDictionary *artifactDictionary;

@end

@implementation ATableViewController

- (NSMutableArray *)allArtifacts {
    if (_allArtifacts == nil) {
        _allArtifacts = [[NSMutableArray alloc] init];
    }
    return _allArtifacts;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*Artifact *a1 = [[Artifact alloc] init];
    a1.name = @"Foo";
    a1.date = @"2000";
    a1.info = @"words!";
    a1.imageName = @"BakkenF.jpg";
    Artifact *a2 = [[Artifact alloc] init];
    a2.name = @"Schmoo";
    a2.date = @"1990";
    a2.info = @"more words! Let's see, I hope that this many words will eventually get this to the next line. Still going... Still going... ";
    //Extend to next paragraph. Work on that.
    Artifact *a3 = [[Artifact alloc] init];
    a3.name = @"Azi";
    a3.date = @"0000";
    a3.info = @"really really old";
    Artifact *a4 = [[Artifact alloc] init];
    a4.name = @"Pizza the hut";
    a4.date = @"3097";
    a4.info = @"um..... nope. Just nope.";
    
    
    NSArray *aA = @[a1, a2, a3, a4];
    self.allArtifacts = aA; */
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Property" ofType:@"plist"];
    //NSLog(@"%@", path);
    NSArray *rawArtifacts = [[NSArray alloc] initWithContentsOfFile:path];
    //NSLog(@"%@", rawArtifacts);
    //NSLog(@"%lu", rawArtifacts.count);
    
    //New Variable, only ever going to keep dictionaries in it.
    NSDictionary *eachA;
//    self.allArtifacts = [[NSMutableArray alloc] init];
    
    for (eachA in rawArtifacts){
        Artifact *anArtifact = [[Artifact alloc] initWithDictionary:eachA];
        [self.allArtifacts addObject:anArtifact];
//        NSLog(@"%@", self.allArtifacts);
//        NSLog(@"%@", anArtifact.name);
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return self.allArtifacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    // Configure the cell...
    Artifact *thisCellArtifact = self.allArtifacts[indexPath.row];
    cell.textLabel.text = thisCellArtifact.name;
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ObjectsViewController *ovc = [segue destinationViewController];
}


@end
