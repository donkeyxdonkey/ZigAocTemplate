const i = @import("../interface/IDay.zig");
const enumerations = @import("../enum.zig");
const std = @import("std");
const print = std.debug.print;

pub const Day01 = struct {
    pub fn part1(self: *Day01, input: *const []const u8, debug_print: bool) []const u8 {
        _ = &self;
        _ = &debug_print;

        if (debug_print)
            print("{s}\n", .{input.*});

        return "Day1 part1";
    }

    pub fn part2(self: *Day01, input: *const []const u8, debug_print: bool) []const u8 {
        _ = &self;
        _ = &input;
        _ = &debug_print;

        return "Day1 part2";
    }

    const vtable = i.IDay.VTable{
        .part1 = (struct {
            fn f(ptr: *anyopaque, input: *const []const u8, debug_print: bool) []const u8 {
                return @as(*Day01, @ptrCast(@alignCast(ptr))).part1(input, debug_print);
            }
        }).f,
        .part2 = (struct {
            fn f(ptr: *anyopaque, input: *const []const u8, debug_print: bool) []const u8 {
                return @as(*Day01, @ptrCast(@alignCast(ptr))).part2(input, debug_print);
            }
        }).f,
    };

    pub fn create(self: *Day01) i.IDay {
        return .{
            .ptr = self,
            .vtable = &vtable,
        };
    }
};
