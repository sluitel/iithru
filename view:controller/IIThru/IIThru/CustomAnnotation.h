
#import <MapKit/MapKit.h>

@interface CustomAnnotation : MKPlacemark

@property (strong, nonatomic) NSString *phone;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *subtitle;
@property (nonatomic, strong) NSString *title1;
@property (nonatomic, strong) NSString *subtitle1;

@property (nonatomic) NSUInteger index;

@end
