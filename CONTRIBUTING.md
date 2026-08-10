# Contributing

Thanks for wanting to contribute to this collection of Verilog/Vivado projects.

## Project Conventions

- One project folder under `projects/` per topic.
- Use Vivado's default layout: `<name>.srcs/sources_1/new/dut.v` for the synthesizable design and `<name>.srcs/sim_1/new/tb.v` for the testbench.
- Keep `dut.v` portable and synthesizable; do not depend on a specific FPGA board or pin constraints.
- Add or update a testbench where the design can be verified behaviorally.
- Do not commit Vivado-generated files (`.xpr`, `.cache`, `.runs`, `.dcp`, `.bit`, xsim output). They are already git-ignored.

## Before Submitting

- Verify the design simulates cleanly with xsim.
- Make sure the project appears in the project index table in the root `README.md`.
- Keep the root CI workflow green on your branch.

## Pull Requests

- Work from your own fork and open a pull request against `main`.
- Keep changes focused; one logical change per PR.
- Respond to review feedback.

## Reporting Issues

Use the GitHub issue tracker for bugs and feature requests. For security issues, see [SECURITY.md](SECURITY.md).
