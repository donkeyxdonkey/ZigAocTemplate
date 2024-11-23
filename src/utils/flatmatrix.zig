const std = @import("std");
// const print = std.debug.print;

pub fn FlatMatrix(comptime T: type) type {
    return struct {
        const Self = @This();
        data: std.ArrayList(T),
        width: usize,
        height: usize,

        pub fn init(allocator: std.mem.Allocator, input: *const []const u8) !Self {
            var matrix = Self{
                .data = std.ArrayList(T).init(allocator),
                .width = 0,
                .height = 0,
            };

            var iter = std.mem.tokenizeSequence(u8, input.*, "\r\n");
            while (iter.next()) |line| {
                matrix.width = line.len;
                for (line) |char| {
                    try matrix.data.append(@as(T, char));
                }
                matrix.height += 1;
            }

            return matrix;
        }

        pub fn get(self: *const Self, x: usize, y: usize) T {
            return self.data.items[y * self.width + x];
        }

        pub fn set(self: *const Self, x: usize, y: usize, new_value: T) void {
            self.data.items[y * self.width + x] = new_value;
        }

        pub fn scan(self: *const Self, x: usize, y: usize, pattern: ScanPattern, callback: *const fn (T) MatrixScanCallbackAction, comptime ReturnType: type) ReturnType {
            const offsets = [_][2]isize{ .{ -1, -1 }, .{ 0, -1 }, .{ 1, -1 }, .{ -1, 0 }, .{ 1, 0 }, .{ -1, 1 }, .{ 0, 1 }, .{ 1, 1 } };

            var result: ReturnType = @as(ReturnType, @bitCast(@as(std.meta.Int(.unsigned, @bitSizeOf(ReturnType)), 0)));

            switch (pattern) {
                .adjacent => {
                    for (offsets) |offset| {
                        const nx = @as(isize, @intCast(x)) + offset[0];
                        const ny = @as(isize, @intCast(y)) + offset[1];

                        if (nx >= 0 and nx < @as(isize, @intCast(self.width)) and
                            ny >= 0 and ny < @as(isize, @intCast(self.height)))
                        {
                            const adjacent_cell = self.get(@intCast(nx), @intCast(ny));
                            switch (callback(adjacent_cell)) {
                                .zero_return => {
                                    result += 0;
                                },
                                .add_one => {
                                    result += 1;
                                },
                                .break_loop => {
                                    break;
                                },
                                .continue_scanning => {},
                            }
                        }
                    }
                },
                .diagonal => {
                    outer: for (offsets) |offset| {
                        var step: isize = 1;

                        while (true) {
                            const nx = @as(isize, @intCast(x)) + (offset[0] * step);
                            const ny = @as(isize, @intCast(y)) + (offset[1] * step);

                            if (nx < 0 or nx >= @as(isize, @intCast(self.width)) or
                                ny < 0 or ny >= @as(isize, @intCast(self.height)))
                            {
                                break;
                            }

                            const diagonal_cell = self.get(@intCast(nx), @intCast(ny));
                            switch (callback(diagonal_cell)) {
                                .zero_return => {
                                    continue :outer;
                                },
                                .add_one => {
                                    result += 1;
                                    break;
                                },
                                .break_loop => {
                                    break;
                                },
                                .continue_scanning => {},
                            }

                            step += 1;
                        }
                    }
                },
            }

            return result;
        }

        pub fn deinit(self: *Self) void {
            self.data.deinit();
        }
    };
}

pub const ScanPattern = enum {
    adjacent,
    diagonal,
};

pub const MatrixScanCallbackAction = enum {
    zero_return,
    add_one,
    break_loop,
    continue_scanning,
};
