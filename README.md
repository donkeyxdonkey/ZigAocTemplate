# Zig Aoc Template (Windows)
  Input goes into src/days/dayxx.txt
  
  Then implement part1 and part2 in /src/day.

  Run and provide args as needed

```zig
  const Args = struct {
      day: i8 = 0, // 1-25 if 0 = auto
      status: bool = false,
      debug_print: bool = false,
      test_input: bool = false,
      set_status: bool = false,
      part1: bool = false,
      part2: bool = false,
  };
  ```

# Example use:
```
  zig build run -- --day 69 --debug_print --set_status --test_input --part2

  zig build run -- --part2 --test_input

  zig build run -- --day 13 --part1 --set_status
  
  zig build run -- --status
```

# Tips:
```
 --set_status for automagic handling of days

 --status to display current progress
```
