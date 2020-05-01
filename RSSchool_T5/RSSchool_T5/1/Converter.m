#import "Converter.h"

// Do not change
NSString *KeyPhoneNumber = @"phoneNumber";
NSString *KeyCountry = @"country";

@implementation PNConverter
- (NSDictionary*)converToPhoneNumberNextString:(NSString*)string; {
    // good luck
    NSDictionary *countriesDictionary = @{
        @"7" : @"RU",
        @"70" : @"RU",
        @"71" : @"RU",
        @"72" : @"RU",
        @"73" : @"RU",
        @"74" : @"RU",
        @"75" : @"RU",
        @"76" : @"RU",
        @"78" : @"RU",
        @"79" : @"RU",
        @"77" : @"KZ",
        @"373" : @"MD",
        @"374" : @"AM",
        @"375" : @"BY",
        @"380" : @"UA",
        @"992" : @"TJ",
        @"993" : @"TM",
        @"994" : @"AZ",
        @"996" : @"KG",
        @"998" : @"UZ"
    };
    
    NSString *rowString = [[NSString alloc] initWithString:string];
    
    if ([string length] > 0) {
        NSString *firstCharacter = [string substringToIndex:1];
        
        if ([firstCharacter isEqualToString:@"+"]) {
            rowString = [string substringFromIndex:1];
        }
        
        if ([rowString length] > 12) {
            rowString = [rowString substringToIndex:12];
        }
        
        firstCharacter = [rowString substringToIndex:1];
        if (([string length] == 1) && ([countriesDictionary objectForKey:firstCharacter])) {
            //country detected
            NSString *value = [countriesDictionary objectForKey:firstCharacter];
            
            return @{KeyPhoneNumber: [self getFormatted:rowString For:value],
            KeyCountry: value};
            
        } else {
            
            if ([rowString length] > 1) {
                NSString *fistTwoCharacters = [rowString substringToIndex:2];
                if ([countriesDictionary objectForKey:fistTwoCharacters]) {
                    //country detected
                    NSString *value = [countriesDictionary objectForKey:fistTwoCharacters];
                    
                    return @{KeyPhoneNumber: [self getFormatted:rowString For:value],
                    KeyCountry: value};
                    
                } else {
                    
                    if ([rowString length] > 2) {
                        NSString *fistTthreeCharacters = [rowString substringToIndex:3];
                        if ([countriesDictionary objectForKey:fistTthreeCharacters]) {
                            //country detected
                            NSString *value = [countriesDictionary objectForKey:fistTthreeCharacters];
                            
                            return @{KeyPhoneNumber: [self getFormatted:rowString For:value],
                            KeyCountry: value};
                        }
                    }
                }
            }
        }
        
    }
    
    return @{KeyPhoneNumber: [NSString stringWithFormat:@"+%@", rowString],
             KeyCountry: @""};
}

-(NSString *)getFormatted:(NSString *)string For:(NSString *)code {
    NSDictionary *formats = @{
        @"RU" : @"+x (xxx) xxx-xx-xx", //10
        @"KZ" : @"+x (xxx) xxx-xx-xx", //10
        @"MD" : @"+xxx (xx) xxx-xxx", //8
        @"AM" : @"+xxx (xx) xxx-xxx", //8
        @"BY" : @"+xxx (xx) xxx-xx-xx", //9
        @"UA" : @"+xxx (xx) xxx-xx-xx", //9
        @"TJ" : @"+xxx (xx) xxx-xx-xx", //9
        @"TM" : @"+xxx (xx) xxx-xxx", //8
        @"AZ" : @"+xxx (xx) xxx-xx-xx", //9
        @"KG" : @"+xxx (xx) xxx-xx-xx", //9
        @"UZ" : @"+xxx (xx) xxx-xx-xx" //9
    };
    
    if ([formats objectForKey:code]) {
        
        NSString *requiredFormat = [formats objectForKey:code];
        unichar replacement;
        NSString *replacedString = [requiredFormat copy];
        
        for (NSInteger i = 0; i < string.length; i++)
        {
            replacement = [string characterAtIndex:i];
            NSRange rangeFound = [replacedString rangeOfString:@"x"];
            
            if (NSNotFound != rangeFound.location) {
                
                NSString* replacementChar = [NSString stringWithCharacters:&replacement length:1];
                replacedString = [replacedString stringByReplacingCharactersInRange:rangeFound withString:replacementChar];
                
            } }
        
        
        //determine first x occurence
        NSString *match = @"x";
        NSString *preMatch;

        NSScanner *scanner = [NSScanner scannerWithString:replacedString];
        [scanner scanUpToString:match intoString:&preMatch];
        
        NSCharacterSet *chset = [NSCharacterSet
        characterSetWithCharactersInString:@")(- "];
        return [preMatch stringByTrimmingCharactersInSet:chset];
    }
    
    return @"";
}
@end
