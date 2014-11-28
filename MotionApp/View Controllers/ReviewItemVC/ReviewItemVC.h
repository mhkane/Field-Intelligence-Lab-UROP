//
//  ReviewItemVC.h

#import <UIKit/UIKit.h>
#import "RecordObject.h"
#import "GCDAsyncSocket.h"
#import<CoreData/CoreData.h>

@interface ReviewItemVC : UIViewController
{
    IBOutlet UITableView * tableview;
	GCDAsyncSocket *asyncSocket;
    int m_nIndexRecord;
    RecordObject *recordObject;
}

- (IBAction)backbtn:(id)sender;
- (IBAction)sendEmailBtn:(id)sender;
- (void)setRecordIndex:(int)nIndex;
- (void)setRecordObject:(RecordObject*)obj;

@end
