include("mdoodz.jl")
using Main.LibMdoodz

function BuildInitialTopography(topo_chain::Ptr{markers}, model::params, scaling::scale)
    # topograpy routine
    return
end

const BuildInitialTopography_ptr = @cfunction(BuildInitialTopography, Cvoid, (Ptr{markers}, params, scale))

function SetParticles(particles::Ptr{markers}, scaling::scale, model::params, materials::Ptr{mat_prop})
    # particles routine
    return
end

const SetParticles_ptr = @cfunction(SetParticles, Cvoid, (Ptr{markers}, scale, params, Ptr{mat_prop}))

function SetBCs(mesh::Ptr{grid}, model::params, scaling::scale, particles::Ptr{markers}, materials::Ptr{mat_prop}, topo::Ptr{surface})
    # Boundary conditions routine
    return
end

const SetBCs_ptr = @cfunction(SetBCs, Cvoid, (Ptr{grid}, params, scale, Ptr{markers}, Ptr{mat_prop}, Ptr{surface}))

RunMDOODZ("testsetup.txt", BuildInitialTopography_ptr, SetParticles_ptr, SetBCs_ptr)

