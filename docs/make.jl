using Documenter, ESDL

makedocs(
    modules  = [ESDL],
    clean    = true,
    doctest  = false,
    format   = Documenter.HTML(),
    sitename = "ESDL.jl",
    authors  = "Fabian Gans",
    pages    = [ 
        "Home" => "index.md",
        "Examples" => Any[
            "examples/time_mean.md",
        ],
        "API Documentation" => Any[
            "Index" => "API/api_index.md",
            "Accessing the Data Cube" => "API/cube_access.md",
            "Analisys" => "API/analysis.md",
            "Loading and Saving Results" => "API/iotools.md"
        ],
        "Other functions" => "lib/misc.md"
        ]
)

deploydocs(
    repo   = "github.com/esa-esdl/ESDL.jl.git",
    push_preview = true
)
