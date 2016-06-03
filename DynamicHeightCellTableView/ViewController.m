//
//  ViewController.m
//  DynamicHeightCellTableView
//
//  Created by OHSEUNGWOOK on 2016. 6. 3..
//  Copyright © 2016년 OHSEUNGWOOK. All rights reserved.
//

#import "ViewController.h"
#import "DynamicHeightTableViewCell.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation ViewController {
	NSArray *textArray_;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	textArray_ = [NSArray arrayWithObjects:@"I knew going in if I could hold 'em to 12, we had a chance, the Mariners starter said after his teammates rallied from a 10-run deficit to pull out a 16-13 win over the Padres on Thursday night at Petco Park", @"Pitcher-friendly Petco Park? Not on this night. And not in this series. Seattle wound up outscoring the Padres, 45-34, over a wild four days between Safeco Field -- another place not normally prone to offensive outbursts -- and the normally serene San Diego stadium", @"The Mariners won by scores of 9-3 and 16-4 in Seattle on Monday and Tuesday, then lost a 14-6 battle Wednesday before rallying for the 16-13 win in Thursday's finale with the biggest comeback in franchise history", @"Seattle's pitching staff came to San Diego with the lowest ERA in the American League at 3.37 and departed two days later at 3.65. But the Mariners also head to Texas now in a tie with the Rangers atop the AL West at 31-22 and feeling like they can do just about anything at this point", @"Nelson Cruz blasted a 435-foot homer to center field early in the game and Robinson Cano had a pair of hits, but it was the Mariners' non-stars who came through in the clutch with Stefen Romero tying the game and Shawn O'Malley hitting the go-ahead RBI to make a winner out of reliever Cody Martin. Romero and O'Malley are recent callups and Martin just joined the team Thursday from Triple-A Tacoma", nil];
	
	self.tableView.estimatedRowHeight = 80.0f;
	self.tableView.rowHeight = UITableViewAutomaticDimension;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [textArray_ count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *identifier = @"DynamicHeightTableViewCell";
	DynamicHeightTableViewCell *cell = (DynamicHeightTableViewCell *)[tableView dequeueReusableCellWithIdentifier:identifier];
	
	if (cell == nil) {
		cell = [[DynamicHeightTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
	}
	
	cell.numLabel.text = [NSString stringWithFormat:@"Line : %zd", indexPath.row];
	cell.descLabel.text = [textArray_ objectAtIndex:indexPath.row];
	
	return cell;
}

@end
