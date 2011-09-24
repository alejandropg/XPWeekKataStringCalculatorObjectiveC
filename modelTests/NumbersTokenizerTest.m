// XPWeekKataStringCalculatorObjectiveC, just the String Calculator kata done in Objective-C to the XPWeek 2011.
// Copyright (C) 2011  Alejandro Pérez García, Autentia Real Business Solutions S.L.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//
//  NumbersTokenizerTest.m
//  XpWeekTddObjectiveC
//
//  Created by Alejandro Pérez García on 17/09/11.
//

#import "NumbersTokenizerTest.h"

#import "NumbersTokenizer.h"


@implementation NumbersTokenizerTest

- (void)setUp {
    [super setUp];
	tokenizer = [[[NumbersTokenizer alloc] init] autorelease];
	expectedChunks = [NSArray arrayWithObjects:@"1", @"2", @"3", nil];
}

- (void)testTokenize_givenEmtyString_thenReturnEmptyString {
	STAssertEqualObjects([tokenizer tokenize:@""], [NSArray arrayWithObject:@""], nil);
}

- (void)testTokenize_givenOneNumber_thenReturnThisNumber {
	STAssertEqualObjects([tokenizer tokenize:@"1"], [NSArray arrayWithObject:@"1"], nil);
}

- (void)testTokenize_givenNumbersWithCommas_thenReturnEachNumber {
	STAssertEqualObjects([tokenizer tokenize:@"1,2,3"], expectedChunks, nil);
}

// TODO right now you have to add test to all the input string scenarios !!!

//- (void)testTokenize_givenNumbersWithCommasAndCarriageReturn_thenReturnEachNumber {	
//	STAssertEqualObjects([tokenizer tokenize:@"1\n2,3"], expectedChunks, nil);
//}

//- (void)testTokenize_givenNumbersWithDifferentDelimiter_thenReturnEachNumber {
//	STAssertEqualObjects([tokenizer tokenize:@"//;\n1;2;3"], expectedChunks, nil);
//}

// ...

@end
