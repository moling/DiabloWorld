#import "TestOC.h"

@implementation TestOC
-(void)test{
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://www.9miao.com/"]];
    //UIViewController * wevi=
    
}
-(void)firefly{
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://firefly.9miao.com/"]];
}
-(void)testWebView
{
//    UIWebView *_webView= [[UIWebView alloc] initWithFrame:[self.view bounds]];
//    [_webView setDelegate:self];
    
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
    web = [[UIWebView alloc]initWithFrame:CGRectMake(0, 44, 320, [UIScreen mainScreen].bounds.size.height)];
    web.scalesPageToFit = YES;
    web.delegate = self;
    [self.view addSubview:web];
    [web release];
    //    NSString*urlstring=@"http://qzs.qq.com/qzone/mobile/login.html";
    NSString * urlstring = @"http://www.baidu.com/index.php";
    NSURL*url=[NSURL URLWithString:urlstring];
    NSURLRequest*req=[NSURLRequest requestWithURL:url];
    [web loadRequest:req];
    ac=[[UIActivityIndicatorView alloc]init];
    ac.activityIndicatorViewStyle=UIActivityIndicatorViewStyleGray;
    ac.hidesWhenStopped=YES;
    ac.frame=CGRectMake(80, -64, 18, 18);
    [self.view addSubview:ac];
    [ac release];
    
    UINavigationBar *nav = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    //    UINavigationItem * item = [[UINavigationItem alloc]init];
    UINavigationItem *item = [[UINavigationItem alloc]initWithTitle:@"充值"];
    UIBarButtonItem * leftbutton = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonSystemItemUndo target:self action:@selector(click)];
    //    nav.topItem.leftBarButtonItem = leftbutton;
    [nav pushNavigationItem:item animated:YES];
    item.leftBarButtonItem = leftbutton;
    [self.view addSubview:nav];
    [nav release];
    NSLog(@"abc");
    
    
//    UIAlertView * messageBox = [[UIAlertView alloc] initWithTitle: @"abcc"
//                                                          message: @"dsfds"
//                                                         delegate: nil
//                                                cancelButtonTitle: @"OK"
//                                                otherButtonTitles: nil];
//    [messageBox autorelease];
//    [messageBox show];
    
    //[[self navigationController] pushViewController: self animated:YES];
}
@end
