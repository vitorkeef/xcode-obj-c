//
//  ViewController.m
//  l
//
//  Created by MakroTest on 04/07/17.
//  Copyright © 2017 MakroTest. All rights reserved.
//

#import "ViewController.h"
#import "AFURLSessionManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *URL = [NSURL URLWithString:@"https://jsonplaceholder.typicode.com/users"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            //imprimindo o array todo
          //NSLog(@"%@ %@", response, responseObject);
           self.data = responseObject;
            
            //imprimindo o array com a palavra que a gente quiser antes, no caso, data
         //   NSLog(@"%@ %@", @"data", self.data);
            
            //imprimindo o primeiro dicionario
//            NSString *index0 =[self.data objectAtIndex:0];
//            NSLog(@"index0: %@", index0);
           
            //imprimindo apenas um dado do dicionario, no caso, o titulo
            // NSString *index0title = [[self.data objectAtIndex:0]objectForKey:@"titulo"];
            //NSLog(@"titulo: %@", index0title);
            
            
            //imprimindo um dado que ta dentro de outro dado, no caso, a cidade
            //https://jsonplaceholder.typicode.com/users
            NSString *index0id = [[[self.data objectAtIndex:0]objectForKey:@"address"]objectForKey:@"city"];
            NSLog(@"index0id: %@", index0id);
   
            _labelJson.text = index0id;
            
//            NSString *index0id = [[[[self.data objectAtIndex:0]objectForKey:@"address"]objectForKey:@"geo"]objectForKey:@"lat"];
//            NSLog(@"index0id: %@", index0id);
        }
    }];
    [dataTask resume];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [animal count];

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *celula = [tableView dequeueReusableCellWithIdentifier:@"Celula"];
    if(celula==nil){
        celula = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Celula"];
    }
    celula.textLabel.text = [animal objectAtIndex:indexPath.row];
    return celula;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row == 0){
        NSLog(@"vai");
    }else if(indexPath.row == 1){

    }
    
}




@end
