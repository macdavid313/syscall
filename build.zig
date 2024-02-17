const std = @import("std");

const targets: []const std.Target.Query = &.{
    .{ .cpu_arch = .x86_64, .os_tag = .linux },
    .{ .cpu_arch = .aarch64, .os_tag = .linux },
    .{ .cpu_arch = .aarch64, .os_tag = .macos },
};

pub fn build(b: *std.Build) !void {
    for (targets) |t| {
        const os_arch = switch (t.os_tag orelse return) {
            .linux => switch (t.cpu_arch orelse return) {
                .x86_64 => "linux-x86_64",
                .aarch64 => "linux-aarch64",
                else => unreachable,
            },
            .macos => switch (t.cpu_arch orelse return) {
                .aarch64 => "macos-aarch64",
                else => unreachable,
            },
            else => unreachable,
        };
        const root_source_file_path = std.fmt.allocPrint(b.allocator, "src/platform/{s}/syscall.zig", .{os_arch}) catch return;
        defer b.allocator.free(root_source_file_path);

        const lib = b.addSharedLibrary(.{
            .name = "syscall",
            .root_source_file = .{ .path = root_source_file_path },
            .target = b.resolveTargetQuery(t),
            .optimize = .ReleaseFast,
        });

        const target_output = b.addInstallArtifact(lib, .{
            .dest_dir = .{
                .override = .{
                    .custom = try t.zigTriple(b.allocator),
                },
            },
            .dylib_symlinks = false,
        });

        b.getInstallStep().dependOn(&target_output.step);
    }
}
