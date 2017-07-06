//
//  ViewController.h
//  l
//
//  Created by MakroTest on 04/07/17.
//  Copyright © 2017 MakroTest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    
    NSMutableArray *animal;
    
}

@property(strong, nonatomic) NSArray *data;

@property (weak, nonatomic) IBOutlet UITableView *minhaTableView;
@property (weak, nonatomic) IBOutlet UILabel *labelJson;

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView;
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
-(void)abriProximaTela:(id)sender;


@end

