#include "TestCpp.h"
//#include "WebViewController.h"
#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
#include "TestOC.h"
//#include "ViewController.h"
#endif
bool testOC::init(){
    if(!CCLayer::init()){
        return false;
    }
#if (CC_TARGET_PLATFORM==CC_PLATFORM_IOS)
    //this->initOc();
    this->firefly();
#endif
    
    return true;
}
void testOC::initOc(){
#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
    [[TestOC alloc] test];
//   // [[TestOC alloc] testWebView];
//        
//   //[[WebViewController alloc] init];
//    //[[ViewController alloc] init];
//    
//    UIWindow * wd=(UIWindow *)[[UIApplication sharedApplication]delegate];
//    
//    UIWindow * window= [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
//    ViewController * viewController=[[ViewController alloc] init];
////    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
////        viewController = [[[ViewController alloc] initWithNibName:@"ViewController_iPhone" bundle:nil] autorelease];
////    } else {
////        viewController = [[[ViewController alloc] initWithNibName:@"ViewController_iPad" bundle:nil] autorelease];
////    }
//    window.rootViewController = viewController;
//    [window makeKeyAndVisible];
    //[c click];
#else
    return;
#endif
}

void testOC::firefly(){
#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
    [[TestOC alloc] firefly];
#else
    return;
#endif
}
