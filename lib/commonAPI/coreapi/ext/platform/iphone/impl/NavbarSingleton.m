
#import "NavbarSingleton.h"

extern void create_navbar(NSDictionary *p);
extern void remove_navbar();
extern BOOL navbar_started();


@implementation NavbarSingleton



-(void) create:(NSDictionary*)navBarProperties {
    create_navbar(navBarProperties);
}

-(void) remove {
    remove_navbar();
}

-(void) started:(id<IMethodResult>)methodResult {
    [methodResult setResult:[NSNumber numberWithBool:navbar_started()]];
}




@end