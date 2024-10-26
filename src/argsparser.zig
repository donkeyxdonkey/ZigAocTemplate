const std = @import("std");
const print = std.debug.print;

pub fn ParseArgs(comptime T: type, args: [][]u8, parsed: *T) !void {
    errdefer {
        std.log.err("Failed to parse args", .{});
        std.process.exit(1);
    }

    var skip: bool = false;

    inline for (std.meta.fields(T)) |field| {
        for (args, 0..) |arg, i| {
            if (skip) {
                defer skip = false;
                continue;
            }

            if (arg.len > 2 and std.mem.eql(u8, arg[0..2], "--")) {
                const option = arg[2..];
                if (!std.mem.eql(u8, option, field.name))
                    continue;

                switch (@TypeOf(@field(parsed.*, field.name))) {
                    bool => {
                        @field(parsed.*, field.name) = true;
                    },
                    []u8 => {
                        if (i + 1 != args.len and args[i].len > 2 and !std.mem.eql(u8, args[i + 1][0..2], "--")) {
                            @field(parsed.*, field.name) = args[i + 1];
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                        skip = true;
                    },
                    i8 => {
                        if (i + 1 != args.len) {
                            const parsedInt = std.fmt.parseInt(i8, args[i + 1], 10) catch -1;
                            @field(parsed.*, field.name) = parsedInt;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    i16 => {
                        if (i + 1 != args.len) {
                            const parsedInt = std.fmt.parseInt(i16, args[i + 1], 0) catch -1;
                            @field(parsed.*, field.name) = parsedInt;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    i32 => {
                        if (i + 1 != args.len) {
                            const parsedInt = std.fmt.parseInt(i32, args[i + 1], 0) catch -1;
                            @field(parsed.*, field.name) = parsedInt;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    i64 => {
                        if (i + 1 != args.len) {
                            const parsedInt = std.fmt.parseInt(i64, args[i + 1], 0) catch -1;
                            @field(parsed.*, field.name) = parsedInt;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    i128 => {
                        if (i + 1 != args.len) {
                            const parsedInt = std.fmt.parseInt(i128, args[i + 1], 0) catch -1;
                            @field(parsed.*, field.name) = parsedInt;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    u8 => {
                        if (i + 1 != args.len) {
                            const parsedUInt = std.fmt.parseUnsigned(u8, args[i + 1], 0) catch 0;
                            @field(parsed.*, field.name) = parsedUInt;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    u16 => {
                        if (i + 1 != args.len) {
                            const parsedUInt = std.fmt.parseUnsigned(u16, args[i + 1], 0) catch 0;
                            @field(parsed.*, field.name) = parsedUInt;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    u32 => {
                        if (i + 1 != args.len) {
                            const parsedUInt = std.fmt.parseUnsigned(u32, args[i + 1], 0) catch 0;
                            @field(parsed.*, field.name) = parsedUInt;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    u64 => {
                        if (i + 1 != args.len) {
                            const parsedUInt = std.fmt.parseUnsigned(u64, args[i + 1], 0) catch 0;
                            @field(parsed.*, field.name) = parsedUInt;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    u128 => {
                        if (i + 1 != args.len) {
                            const parsedUInt = std.fmt.parseUnsigned(u128, args[i + 1], 0) catch 0;
                            @field(parsed.*, field.name) = parsedUInt;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    f16 => {
                        if (i + 1 != args.len) {
                            const parsedFloat = std.fmt.parseFloat(f16, args[i + 1]) catch -1;
                            @field(parsed.*, field.name) = parsedFloat;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    f32 => {
                        if (i + 1 != args.len) {
                            const parsedFloat = std.fmt.parseFloat(f32, args[i + 1]) catch -1;
                            @field(parsed.*, field.name) = parsedFloat;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    f64 => {
                        if (i + 1 != args.len) {
                            const parsedFloat = std.fmt.parseFloat(f64, args[i + 1]) catch -1;
                            @field(parsed.*, field.name) = parsedFloat;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    f128 => {
                        if (i + 1 != args.len) {
                            const parsedFloat = std.fmt.parseFloat(f128, args[i + 1]) catch -1;
                            @field(parsed.*, field.name) = parsedFloat;
                            skip = true;
                        } else {
                            std.log.warn("Invalid argument provided for: {s}", .{field.name});
                            std.process.exit(1);
                        }
                    },
                    else => {
                        // do nothing, we don't care!
                    },
                }
            }
        }
    }
}
