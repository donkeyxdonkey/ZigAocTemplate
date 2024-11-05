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
        .D04 => {
            var day04 = try allocator.create(d4.Day04);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day04.create();
            return interface;
        },
        .D05 => {
            var day05 = try allocator.create(d5.Day05);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day05.create();
            return interface;
        },
        .D06 => {
            var day06 = try allocator.create(d6.Day06);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day06.create();
            return interface;
        },
        .D07 => {
            var day07 = try allocator.create(d7.Day07);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day07.create();
            return interface;
        },
        .D08 => {
            var day08 = try allocator.create(d8.Day08);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day08.create();
            return interface;
        },
        .D09 => {
            var day09 = try allocator.create(d9.Day09);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day09.create();
            return interface;
        },
        .D10 => {
            var day10 = try allocator.create(d10.Day10);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day10.create();
            return interface;
        },
        .D11 => {
            var day11 = try allocator.create(d11.Day11);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day11.create();
            return interface;
        },
        .D12 => {
            var day12 = try allocator.create(d12.Day12);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day12.create();
            return interface;
        },
        .D13 => {
            var day13 = try allocator.create(d13.Day13);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day13.create();
            return interface;
        },
        .D14 => {
            var day14 = try allocator.create(d14.Day14);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day14.create();
            return interface;
        },
        .D15 => {
            var day15 = try allocator.create(d15.Day15);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day15.create();
            return interface;
        },
        .D16 => {
            var day16 = try allocator.create(d16.Day16);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day16.create();
            return interface;
        },
        .D17 => {
            var day17 = try allocator.create(d17.Day17);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day17.create();
            return interface;
        },
        .D18 => {
            var day18 = try allocator.create(d18.Day18);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day18.create();
            return interface;
        },
        .D19 => {
            var day19 = try allocator.create(d19.Day19);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day19.create();
            return interface;
        },
        .D20 => {
            var day20 = try allocator.create(d20.Day20);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day20.create();
            return interface;
        },
        .D21 => {
            var day21 = try allocator.create(d21.Day21);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day21.create();
            return interface;
        },
        .D22 => {
            var day22 = try allocator.create(d22.Day22);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day22.create();
            return interface;
        },
        .D23 => {
            var day23 = try allocator.create(d23.Day23);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day23.create();
            return interface;
        },
        .D24 => {
            var day24 = try allocator.create(d24.Day24);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day24.create();
            return interface;
        },
        .D25 => {
            var day25 = try allocator.create(d25.Day25);
            const interface = try allocator.create(Interface.IDay);
            interface.* = day25.create();
            return interface;
        },
    }
}

pub fn getInput(day: enumerations.DayEnum, testInput: bool) ![]const u8 {
    return switch (day) {
        .D01 => {
            return if (testInput)
                @embedFile("input/day01test.txt")
            else
                @embedFile("input/day01.txt");
        },
        .D02 => {
            return if (testInput)
                @embedFile("input/day02test.txt")
            else
                @embedFile("input/day02.txt");
        },
        .D03 => {
            return if (testInput)
                @embedFile("input/day03test.txt")
            else
                @embedFile("input/day03.txt");
        },
        .D04 => {
            return if (testInput)
                @embedFile("input/day04test.txt")
            else
                @embedFile("input/day04.txt");
        },
        .D05 => {
            return if (testInput)
                @embedFile("input/day05test.txt")
            else
                @embedFile("input/day05.txt");
        },
        .D06 => {
            return if (testInput)
                @embedFile("input/day06test.txt")
            else
                @embedFile("input/day06.txt");
        },
        .D07 => {
            return if (testInput)
                @embedFile("input/day07test.txt")
            else
                @embedFile("input/day07.txt");
        },
        .D08 => {
            return if (testInput)
                @embedFile("input/day08test.txt")
            else
                @embedFile("input/day08.txt");
        },
        .D09 => {
            return if (testInput)
                @embedFile("input/day09test.txt")
            else
                @embedFile("input/day09.txt");
        },
        .D10 => {
            return if (testInput)
                @embedFile("input/day10test.txt")
            else
                @embedFile("input/day10.txt");
        },
        .D11 => {
            return if (testInput)
                @embedFile("input/day11test.txt")
            else
                @embedFile("input/day11.txt");
        },
        .D12 => {
            return if (testInput)
                @embedFile("input/day12test.txt")
            else
                @embedFile("input/day12.txt");
        },
        .D13 => {
            return if (testInput)
                @embedFile("input/day13test.txt")
            else
                @embedFile("input/day13.txt");
        },
        .D14 => {
            return if (testInput)
                @embedFile("input/day14test.txt")
            else
                @embedFile("input/day14.txt");
        },
        .D15 => {
            return if (testInput)
                @embedFile("input/day15test.txt")
            else
                @embedFile("input/day15.txt");
        },
        .D16 => {
            return if (testInput)
                @embedFile("input/day16test.txt")
            else
                @embedFile("input/day16.txt");
        },
        .D17 => {
            return if (testInput)
                @embedFile("input/day17test.txt")
            else
                @embedFile("input/day17.txt");
        },
        .D18 => {
            return if (testInput)
                @embedFile("input/day18test.txt")
            else
                @embedFile("input/day18.txt");
        },
        .D19 => {
            return if (testInput)
                @embedFile("input/day19test.txt")
            else
                @embedFile("input/day19.txt");
        },
        .D20 => {
            return if (testInput)
                @embedFile("input/day20test.txt")
            else
                @embedFile("input/day20.txt");
        },
        .D21 => {
            return if (testInput)
                @embedFile("input/day21test.txt")
            else
                @embedFile("input/day21.txt");
        },
        .D22 => {
            return if (testInput)
                @embedFile("input/day22test.txt")
            else
                @embedFile("input/day22.txt");
        },
        .D23 => {
            return if (testInput)
                @embedFile("input/day23test.txt")
            else
                @embedFile("input/day23.txt");
        },
        .D24 => {
            return if (testInput)
                @embedFile("input/day24test.txt")
            else
                @embedFile("input/day24.txt");
        },
        .D25 => {
            return if (testInput)
                @embedFile("input/day25test.txt")
            else
                @embedFile("input/day25.txt");
        },
    };
}
