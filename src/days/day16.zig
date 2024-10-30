const i = @import("../interface/IDay.zig");
const enumerations = @import("../enum.zig");
const std = @import("std");
const print = std.debug.print;

pub const Day16 = struct {
    pub fn part1(self: *Day16, input: *const []const u8, debug_print: bool) ![]const u8 {
        _ = &self;
        _ = &input;
        _ = &debug_print;

        return "Day16 part1";
    }

    pub fn part2(self: *Day16, input: *const []const u8, debug_print: bool) ![]const u8 {
        _ = &self;
        _ = &input;
        _ = &debug_print;

        return "Day16 part2";
    }

    const vtable = i.IDay.VTable{
        .part1 = (struct {
            fn f(ptr: *anyopaque, input: *const []const u8, debug_print: bool) ![]const u8 {
                return @as(*Day16, @ptrCast(@alignCast(ptr))).part1(input, debug_print);
            }
        }).f,
        .part2 = (struct {
            fn f(ptr: *anyopaque, input: *const []const u8, debug_print: bool) ![]const u8 {
                return @as(*Day16, @ptrCast(@alignCast(ptr))).part2(input, debug_print);
            }
        }).f,
    };

    pub fn create(self: *Day16) i.IDay {
        return .{
            .ptr = self,
            .vtable = &vtable,
        };
    }
};
