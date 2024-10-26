const std = @import("std");
const enumerations = @import("enum.zig");
const Interface = @import("interface/IDay.zig");

const d1 = @import("days/day01.zig");
const d2 = @import("days/day02.zig");
const d3 = @import("days/day03.zig");
const d4 = @import("days/day04.zig");
const d5 = @import("days/day05.zig");
const d6 = @import("days/day06.zig");
const d7 = @import("days/day07.zig");
const d8 = @import("days/day08.zig");
const d9 = @import("days/day09.zig");
const d10 = @import("days/day10.zig");
const d11 = @import("days/day11.zig");
const d12 = @import("days/day12.zig");
const d13 = @import("days/day13.zig");
const d14 = @import("days/day14.zig");
const d15 = @import("days/day15.zig");
const d16 = @import("days/day16.zig");
const d17 = @import("days/day17.zig");
const d18 = @import("days/day18.zig");
const d19 = @import("days/day19.zig");
const d20 = @import("days/day20.zig");
const d21 = @import("days/day21.zig");
const d22 = @import("days/day22.zig");
const d23 = @import("days/day23.zig");
const d24 = @import("days/day24.zig");
const d25 = @import("days/day25.zig");

pub fn createDay(day: enumerations.DayEnum, allocator: std.mem.Allocator) !*Interface.IDay {
    switch (day) {
        .D01 => {
            var day01 = try allocator.create(d1.Day01);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day01.create();
            return interface;
        },
        .D02 => {
            var day02 = try allocator.create(d2.Day02);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day02.create();
            return interface;
        },
        .D03 => {
            var day03 = try allocator.create(d3.Day03);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day03.create();
            return interface;
        },
        else => return error.UnsupportedDay,
    }
}

pub fn getInput(day: enumerations.DayEnum, mode: enumerations.ProgressEnum) ![]const u8 {
    return switch (day) {
        .D01 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day01test.txt")
            else
                @embedFile("input/day01.txt");
        },
        .D02 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day02test.txt")
            else
                @embedFile("input/day02.txt");
        },
        .D03 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day03test.txt")
            else
                @embedFile("input/day03.txt");
        },
        .D04 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day04test.txt")
            else
                @embedFile("input/day04.txt");
        },
        .D05 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day05test.txt")
            else
                @embedFile("input/day05.txt");
        },
        .D06 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day06test.txt")
            else
                @embedFile("input/day06.txt");
        },
        .D07 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day07test.txt")
            else
                @embedFile("input/day07.txt");
        },
        .D08 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day08test.txt")
            else
                @embedFile("input/day08.txt");
        },
        .D09 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day09test.txt")
            else
                @embedFile("input/day09.txt");
        },
        .D10 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day10test.txt")
            else
                @embedFile("input/day10.txt");
        },
        .D11 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day11test.txt")
            else
                @embedFile("input/day11.txt");
        },
        .D12 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day12test.txt")
            else
                @embedFile("input/day12.txt");
        },
        .D13 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day13test.txt")
            else
                @embedFile("input/day13.txt");
        },
        .D14 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day14test.txt")
            else
                @embedFile("input/day14.txt");
        },
        .D15 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day15test.txt")
            else
                @embedFile("input/day15.txt");
        },
        .D16 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day16test.txt")
            else
                @embedFile("input/day16.txt");
        },
        .D17 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day17test.txt")
            else
                @embedFile("input/day17.txt");
        },
        .D18 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day18test.txt")
            else
                @embedFile("input/day18.txt");
        },
        .D19 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day19test.txt")
            else
                @embedFile("input/day19.txt");
        },
        .D20 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day20test.txt")
            else
                @embedFile("input/day20.txt");
        },
        .D21 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day21test.txt")
            else
                @embedFile("input/day21.txt");
        },
        .D22 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day22test.txt")
            else
                @embedFile("input/day22.txt");
        },
        .D23 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day23test.txt")
            else
                @embedFile("input/day23.txt");
        },
        .D24 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day24test.txt")
            else
                @embedFile("input/day24.txt");
        },
        .D25 => {
            return if (mode == enumerations.ProgressEnum.Test)
                @embedFile("input/day25test.txt")
            else
                @embedFile("input/day25.txt");
        },
    };
}
