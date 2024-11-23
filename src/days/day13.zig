const interface = @import("../interface/IDay.zig");
const enumerations = @import("../enum.zig");
const std = @import("std");
const print = std.debug.print;

pub const Day13 = struct {
    pub fn part1(self: *Day13, input: *const []const u8, debug_print: bool) !void {
        _ = &self;
        _ = &input;

        if (debug_print)
            print("{s}\n", .{input.*});

        print("Part 1: \n", .{});
    }

    pub fn part2(self: *Day13, input: *const []const u8, debug_print: bool) !void {
        _ = &self;
        _ = &input;
        _ = &debug_print;

        if (debug_print)
            print("{s}\n", .{input.*});

        print("Part 2: \n", .{});
    }

    const vtable = interface.IDay.VTable{
        .part1 = (struct {
            fn f(ptr: *anyopaque, input: *const []const u8, debug_print: bool) !void {
                return @as(*Day13, @ptrCast(@alignCast(ptr))).part1(input, debug_print);
            }
        }).f,
        .part2 = (struct {
            fn f(ptr: *anyopaque, input: *const []const u8, debug_print: bool) !void {
                return @as(*Day13, @ptrCast(@alignCast(ptr))).part2(input, debug_print);
            }
        }).f,
    };

    pub fn create(self: *Day13) interface.IDay {
        return .{
            .ptr = self,
            .vtable = &vtable,
        };
    }
};
