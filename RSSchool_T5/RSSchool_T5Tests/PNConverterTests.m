#import <XCTest/XCTest.h>
#import "Converter.h"

@interface PNConverterTests : XCTestCase

@end

@implementation PNConverterTests

// BY
- (void)testBY0 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"37529123456789"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+375 (29) 123-45-67"]);
    XCTAssertTrue([country isEqualToString:@"BY"]);
}

- (void)testBY1 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"375291234567"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+375 (29) 123-45-67"]);
    XCTAssertTrue([country isEqualToString:@"BY"]);
}

- (void)testBY2 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"37529123456"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+375 (29) 123-45-6"]);
    XCTAssertTrue([country isEqualToString:@"BY"]);
}

- (void)testBY3 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"3752912345"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+375 (29) 123-45"]);
    XCTAssertTrue([country isEqualToString:@"BY"]);
}

- (void)testBY4 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"375291"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+375 (29) 1"]);
    XCTAssertTrue([country isEqualToString:@"BY"]);
}

- (void)testBY5 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"37529"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+375 (29"]);
    XCTAssertTrue([country isEqualToString:@"BY"]);
}

- (void)testBY6 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"3752"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+375 (2"]);
    XCTAssertTrue([country isEqualToString:@"BY"]);
}

- (void)testBY7 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"375"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+375"]);
    XCTAssertTrue([country isEqualToString:@"BY"]);
}

- (void)testBY8 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"37"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+37"]);
    XCTAssertTrue([country isEqualToString:@""]);
}

// RU

- (void)testRU0 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"79261234567890"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (926) 123-45-67"]);
    XCTAssertTrue([country isEqualToString:@"RU"]);
}

- (void)testRU1 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"79261234567"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (926) 123-45-67"]);
    XCTAssertTrue([country isEqualToString:@"RU"]);
}

- (void)testRU2 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"7926123456"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (926) 123-45-6"]);
    XCTAssertTrue([country isEqualToString:@"RU"]);
}

- (void)testRU3 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"792612345"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (926) 123-45"]);
    XCTAssertTrue([country isEqualToString:@"RU"]);
}

- (void)testRU4 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"79261234"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (926) 123-4"]);
    XCTAssertTrue([country isEqualToString:@"RU"]);
}

- (void)testRU5 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"7926123"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (926) 123"]);
    XCTAssertTrue([country isEqualToString:@"RU"]);
}

- (void)testRU6 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"7926"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (926"]);
    XCTAssertTrue([country isEqualToString:@"RU"]);
}

- (void)testRU7 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"79"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (9"]);
    XCTAssertTrue([country isEqualToString:@"RU"]);
}

- (void)testRU8 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"7"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7"]);
    XCTAssertTrue([country isEqualToString:@"RU"]);
}

// KZ

- (void)testKZ0 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"77261234567890"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (726) 123-45-67"]);
    XCTAssertTrue([country isEqualToString:@"KZ"]);
}

- (void)testKZ1 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"77551234567"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (755) 123-45-67"]);
    XCTAssertTrue([country isEqualToString:@"KZ"]);
}

- (void)testKZ2 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"7726123456"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (726) 123-45-6"]);
    XCTAssertTrue([country isEqualToString:@"KZ"]);
}

- (void)testKZ3 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"772612345"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (726) 123-45"]);
    XCTAssertTrue([country isEqualToString:@"KZ"]);
}

- (void)testKZ4 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"77261234"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (726) 123-4"]);
    XCTAssertTrue([country isEqualToString:@"KZ"]);
}

- (void)testKZ5 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"7799123"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (799) 123"]);
    XCTAssertTrue([country isEqualToString:@"KZ"]);
}

- (void)testKZ6 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"7733"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (733"]);
    XCTAssertTrue([country isEqualToString:@"KZ"]);
}

- (void)testKZ7 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"771"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (71"]);
    XCTAssertTrue([country isEqualToString:@"KZ"]);
}

- (void)testKZ8 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"77"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7 (7"]);
    XCTAssertTrue([country isEqualToString:@"KZ"]);
}

- (void)testKZ9 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"7"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+7"]);
    XCTAssertTrue([country isEqualToString:@"RU"]);
}

// AM
- (void)testAM0 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"3741234567890"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+374 (12) 345-678"]);
    XCTAssertTrue([country isEqualToString:@"AM"]);
}

- (void)testAM1 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"37412345678"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+374 (12) 345-678"]);
    XCTAssertTrue([country isEqualToString:@"AM"]);
}

- (void)testAM2 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"374123456"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+374 (12) 345-6"]);
    XCTAssertTrue([country isEqualToString:@"AM"]);
}

- (void)testAM3 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"37412345"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+374 (12) 345"]);
    XCTAssertTrue([country isEqualToString:@"AM"]);
}

- (void)testAM4 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"37412"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+374 (12"]);
    XCTAssertTrue([country isEqualToString:@"AM"]);
}

- (void)testAM5 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"374"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+374"]);
    XCTAssertTrue([country isEqualToString:@"AM"]);
}

- (void)testAM6 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"37"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+37"]);
    XCTAssertTrue([country isEqualToString:@""]);
}

// MD

- (void)testMD0 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"3731234567890"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+373 (12) 345-678"]);
    XCTAssertTrue([country isEqualToString:@"MD"]);
}

- (void)testMD1 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"37312345678"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+373 (12) 345-678"]);
    XCTAssertTrue([country isEqualToString:@"MD"]);
}

// UA

- (void)testUA0 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"3801234567890"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+380 (12) 345-67-89"]);
    XCTAssertTrue([country isEqualToString:@"UA"]);
}

- (void)testUA1 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"38012345678"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+380 (12) 345-67-8"]);
    XCTAssertTrue([country isEqualToString:@"UA"]);
}

// TJ

- (void)testTJ0 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"9921234567890"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+992 (12) 345-67-89"]);
    XCTAssertTrue([country isEqualToString:@"TJ"]);
}

- (void)testTJ1 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"99212345678"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+992 (12) 345-67-8"]);
    XCTAssertTrue([country isEqualToString:@"TJ"]);
}

// TM

- (void)testTM0 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"9931234567890"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+993 (12) 345-678"]);
    XCTAssertTrue([country isEqualToString:@"TM"]);
}

- (void)testTM1 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"99312345678"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+993 (12) 345-678"]);
    XCTAssertTrue([country isEqualToString:@"TM"]);
}

// AZ

- (void)testAZ0 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"9941234567890"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+994 (12) 345-67-89"]);
    XCTAssertTrue([country isEqualToString:@"AZ"]);
}

- (void)testAZ1 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"9941234567"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+994 (12) 345-67"]);
    XCTAssertTrue([country isEqualToString:@"AZ"]);
}

// KG

- (void)testKG0 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"9961234567890"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+996 (12) 345-67-89"]);
    XCTAssertTrue([country isEqualToString:@"KG"]);
}

- (void)testKG1 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"9961234567"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+996 (12) 345-67"]);
    XCTAssertTrue([country isEqualToString:@"KG"]);
}

// UZ

- (void)testUZ0 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"9981234567890"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+998 (12) 345-67-89"]);
    XCTAssertTrue([country isEqualToString:@"UZ"]);
}

- (void)testUZ1 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"9981234567"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+998 (12) 345-67"]);
    XCTAssertTrue([country isEqualToString:@"UZ"]);
}

// n

- (void)testN0 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"1234567890123456"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+123456789012"]);
    XCTAssertTrue([country isEqualToString:@""]);
}

- (void)testN1 {
    NSDictionary *result = [[PNConverter new] converToPhoneNumberNextString:@"+123456789012"];
    NSString *number = result[KeyPhoneNumber];
    NSString *country = result[KeyCountry];
    XCTAssertTrue([number isEqualToString:@"+123456789012"]);
    XCTAssertTrue([country isEqualToString:@""]);
}

@end
