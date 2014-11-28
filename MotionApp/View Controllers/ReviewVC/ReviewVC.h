//
//  ReviewVC.h

#import <UIKit/UIKit.h>
#import "CoreDataHelper.h"

@interface ReviewVC : UIViewController
{
    IBOutlet UITableView * reviewTableView;
    IBOutlet UIButton * editBtn;
    CoreDataHelper *cdh;
    NSManagedObjectContext* context;
    NSMutableArray *records;
    
}

- (IBAction)editBtn:(id)sender;

@end
