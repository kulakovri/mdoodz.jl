using Clang.Generators
using mdoodz_jll
cd(@__DIR__)
include_dir = normpath(mdoodz_jll.artifact_dir, "include")
options = load_options(joinpath(@__DIR__, "generator.toml"))
args = get_default_args()
push!(args, "-I$include_dir")
headers = [string(include_dir, "/mdoodz.h")]
ctx = create_context(headers, args, options)
build!(ctx)
