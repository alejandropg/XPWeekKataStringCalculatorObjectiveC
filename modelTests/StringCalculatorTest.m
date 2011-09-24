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
//  StringCalculatorTest.m
//  XpWeekTddObjectiveC
//
//  Created by Alejandro Pérez García on 16/09/11.
//

#import <OCMock/OCMock.h>

#import "StringCalculatorTest.h"

#import "StringCalculator.h"

#import "Tokenizer.h"



@implementation StringCalculatorTest

- (void)setUp {
	[super setUp];
	
	mockedTokenizer = [OCMockObject mockForProtocol:@protocol(Tokenizer)];
	
	calc = [[[StringCalculator alloc] initWithTokenizer:mockedTokenizer] autorelease];
}

- (void)testAdd_givenEmtyString_thenReturnZero {
	[[[mockedTokenizer expect] andReturn:[NSArray arrayWithObject:@""]] tokenize:[OCMArg any]];
	
	STAssertEquals([calc add:@""], 0, nil);
}

- (void)testAdd_givenOneNumber_thenReturnThisNumber {
	[[[mockedTokenizer expect] andReturn:[NSArray arrayWithObject:@"1"]] tokenize:[OCMArg any]];
	
	STAssertEquals([calc add:@"1"], 1, nil);
}

- (void)testAdd_givenMoreThanOneNumber_thenReturnSumOfTheNumbers {
	[[[mockedTokenizer expect] andReturn:[NSArray arrayWithObjects:@"1", @"2", @"3", nil]] tokenize:[OCMArg any]];
	
	STAssertEquals([calc add:@"1,2,3"], 6, nil);
}

@end
