//
//  ContatosTableViewController.m
//  Knoowl
//
//  Created by Felipe Escote on 9/11/16.
//  Copyright © 2016 Felipe. All rights reserved.
//

#import "ContatosTableViewController.h"

@interface ContatosTableViewController ()

@property (strong, nonatomic) NSMutableArray<NSString *> *contatos;


@end

@implementation ContatosTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.contatos = [@[@"Alessandro Zimmer",
                     @"Bruno Almeida",
                     @"Cassia Lima",
                     @"Daiane dos Santos",
                     @"Fabrício Costa",
                     @"Fernando de Melo",
                     @"José da Silva",
                     @"Maria Aparecida",
                     @"Patrícia Rocha",
                     @"Ricardo Galvão",
                     @"Tatiana Albuquerque",
                     @"Zélia Maria Portela"] mutableCopy];
    
    
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contatos.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contato" forIndexPath:indexPath];
    
    if (indexPath.row % 2) {
        [cell setBackgroundColor:[UIColor colorWithRed:1.0 green:0.85 blue:0.7 alpha:1 ]];
    }else {
        [cell setBackgroundColor:[UIColor colorWithRed:1.0 green:0.85 blue:0.7 alpha:0.8 ]];
    }
    
    [cell.textLabel setText:[self.contatos objectAtIndex:indexPath.row]];
    [cell.textLabel setTextColor:[UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:1 ]];
    
    return cell;
}





// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.contatos removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
}



// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
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
