const std = @import("std");

pub const DayEnum = enum(i8) {
    D01 = 1,
    D02 = 2,
    D03 = 3,
    D04 = 4,
    D05 = 5,
    D06 = 6,
    D07 = 7,
    D08 = 8,
    D09 = 9,
    D10 = 10,
    D11 = 11,
    D12 = 12,
    D13 = 13,
    D14 = 14,
    D15 = 15,
    D16 = 16,
    D17 = 17,
    D18 = 18,
    D19 = 19,
    D20 = 20,
    D21 = 21,
    D22 = 22,
    D23 = 23,
    D24 = 24,
    D25 = 25,

    pub fn fromInt(value: i8) !DayEnum {
        return std.meta.intToEnum(DayEnum, value);
    }
};

pub const ProgressEnum = enum(i8) {
    Test = 0,
    Real = 1,
    Complete = 2,
    Skip = 3,

    pub fn fromInt(value: i8) !ProgressEnum {
        return std.meta.intToEnum(ProgressEnum, value);
    }
};

pub const Status = enum(u8) {
    NotComplete = '0',
    Finished = '1',
    Skipped = '2',
};

pub const TestInput = enum(bool) {
    Test = true,
    Real = false,

    pub fn fromBool(value: bool) TestInput {
        return if (value) TestInput.Test else TestInput.Real;
    }
};
