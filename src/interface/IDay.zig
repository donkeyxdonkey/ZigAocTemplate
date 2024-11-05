const std = @import("std");
const print = std.debug.print;
const enumerations = @import("../enum.zig");

pub const IDay = struct {
    ptr: *anyopaque,
    vtable: *const VTable,

    pub const VTable = struct {
        part1: *const fn (ptr: *anyopaque, *const []const u8, debug_print: bool) anyerror!void,
        part2: *const fn (ptr: *anyopaque, *const []const u8, debug_print: bool) anyerror!void,
    };

    pub fn part1(self: IDay, input: *const []const u8, debug_print: bool) !void {
        return self.vtable.part1(self.ptr, input, debug_print);
    }

    pub fn part2(self: IDay, input: *const []const u8, debug_print: bool) !void {
        return self.vtable.part2(self.ptr, input, debug_print);
    }
};
