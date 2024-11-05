const std = @import("std");
const enumerations = @import("enum.zig");
const utils = @import("utils.zig");
const print = std.debug.print;
const argsparser = @import("argsparser.zig");
const OpenFlags = std.fs.File.OpenFlags;
const OpenMode = std.fs.File.OpenMode;

const Args = struct {
    day: i8 = 0, // 1-25 if 0 = auto
    status: bool = false,
    debug_print: bool = false,
    test_input: bool = false,
    set_status: bool = false,
    part1: bool = false,
    part2: bool = false,
};

const progress = @embedFile("progress.txt");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();
    var args = std.process.argsAlloc(allocator) catch {
        print("Failed to allocate args\n", .{});
        return;
    };
    defer std.process.argsFree(allocator, args);

    var parsedArgs: Args = Args{};
    try argsparser.ParseArgs(@TypeOf(parsedArgs), args[1..], &parsedArgs);

    if (parsedArgs.status) {
        clearScreen();
        try printStatus();
        return;
    }

    var day_number: i8 = parsedArgs.day;

    if (parsedArgs.day == 0) {
        day_number = getProgressDay();
    }

    clearScreen();

    const enable_print: bool = parsedArgs.debug_print;
    const i: usize = @as(usize, @intCast(day_number)) - 1;

    const day = try enumerations.DayEnum.fromInt(day_number);
    var selected_day = try utils.createDay(day, allocator);
    defer allocator.destroy(selected_day);

    const input = try utils.getInput(day, parsedArgs.test_input);
    printLine();
    const index: i8 = if (parsedArgs.test_input == true) 0 else 1;
    const mode = try enumerations.ProgressEnum.fromInt(index);
    print("Current Day: {d}\nInput: {s}\n", .{ day_number, @tagName(mode) });
    printLine();

    const both: bool = (!parsedArgs.part1 and !parsedArgs.part2);

    if (both or parsedArgs.part1) {
        try selected_day.part1(&input, enable_print);
    }

    if (both or parsedArgs.part2) {
        try selected_day.part2(&input, enable_print);
    }

    if (parsedArgs.set_status) {
        var x: [5]u8 = undefined;
        const stdin = std.io.getStdIn().reader();
        print("\n[C]omplete, [S]kip: ", .{});
        _ = try stdin.readUntilDelimiter(&x, '\n');
        if (x[0] == 'C' or x[0] == 'c' or x[0] == 'S' or x[0] == 's') {
            var new_progress = try allocator.alloc(u8, progress.len);
            defer allocator.free(new_progress);
            std.mem.copyForwards(u8, new_progress, progress);
            new_progress[i] = if (x[0] == 'C' or x[0] == 'c') '1' else '2';

            // eftersom cwd är ../
            const file = try std.fs.cwd().openFile("src/progress.txt", OpenFlags{ .mode = OpenMode.write_only });
            defer file.close();
            _ = try file.write(@constCast(new_progress));
        }
    }
}

fn printLine() void {
    print("==============================\n", .{});
}

fn getProgressDay() i8 {
    for (0..progress.len) |i| {
        if (progress[i] != '0')
            continue;

        return @as(i8, @intCast(i)) + 1;
    }

    return 1;
}

fn printStatus() !void {
    for (progress, 0..) |char, index| {
        const status = try std.meta.intToEnum(enumerations.Status, char);

        if (index < 9) {
            print("Day  {d}: {s}\n", .{ index + 1, @tagName(status) });
        } else {
            print("Day {d}: {s}\n", .{ index + 1, @tagName(status) });
        }
    }
}

fn clearScreen() void {
    print("\x1B[2J\x1B[H", .{});
}
