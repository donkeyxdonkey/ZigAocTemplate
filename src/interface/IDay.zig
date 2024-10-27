const std = @import("std");
const print = std.debug.print;
const enumerations = @import("../enum.zig");
const e = @import("../error.zig");

pub const IDay = struct {
    ptr: *anyopaque,
    vtable: *const VTable,
    isTest: bool = false,
    res1: []u8 = "",
    res2: []u8 = "",

    // ---- Virtual Table Definition -----
    pub const VTable = struct {
        part1: *const fn (ptr: *anyopaque, *const []const u8, debug_print: bool) e.DayError![]const u8,
        part2: *const fn (ptr: *anyopaque, *const []const u8, debug_print: bool) e.DayError![]const u8,
    };

    pub fn part1(self: IDay, input: *const []const u8, debug_print: bool) e.DayError![]const u8 {
        return self.vtable.part1(self.ptr, input, debug_print);
    }

    pub fn part2(self: IDay, input: *const []const u8, debug_print: bool) e.DayError![]const u8 {
        return self.vtable.part2(self.ptr, input, debug_print);
    }
    // ---- Virtual Table Definition -----

    pub fn printResults(self: IDay) void {
        print("Part 1 result: {s}\n", .{self.res1});
        print("Part 2 result: {s}\n", .{self.res2});
    }
};
