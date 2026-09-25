<div align="center">

# Vivado Verilog Projects


<!-- README polish: repository metadata badges -->
<p>
  <a href="https://github.com/vishnuskandha/vivado-programs"><img alt="GitHub stars" src="https://img.shields.io/github/stars/vishnuskandha/vivado-programs?style=for-the-badge&logo=github&label=Stars"></a>
  <a href="https://github.com/vishnuskandha/vivado-programs/fork"><img alt="GitHub forks" src="https://img.shields.io/github/forks/vishnuskandha/vivado-programs?style=for-the-badge&logo=github&label=Forks"></a>
  <a href="https://github.com/vishnuskandha/vivado-programs/issues"><img alt="GitHub issues" src="https://img.shields.io/github

</div>


<!-- README polish: repository metadata badges -->
<p>
  <a href="https://github.com/vishnuskandha/vivado-programs"><img alt="GitHub stars" src="https://img.shields.io/github/stars/vishnuskandha/vivado-programs?style=for-the-badge&logo=github&label=Stars"></a>
  <a href="https://github.com/vishnuskandha/vivado-programs/fork"><img alt="GitHub forks" src="https://img.shields.io/github/forks/vishnuskandha/vivado-programs?style=for-the-badge&logo=github&label=Forks"></a>
  <a href="https://github.com/vishnuskandha/vivado-programs/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/vishnuskandha/vivado-programs?style=for-the-badge&logo=github&label=Issues"></a>
  <a href="https://github.com/vishnuskandha/vivado-programs/commits"><img alt="Last commit" src="https://img.shields.io/github/last-commit/vishnuskandha/vivado-programs?style=for-the-badge&logo=git&label=Updated"></a>
</p>
<!-- End README polish -->

[![CI](https://github.com/vishnuskandha/vivado-programs/actions/workflows/ci.yml/badge.svg)](https://github.com/vishnuskandha/vivado-programs/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A collection of compact, self-contained Xilinx Vivado projects demonstrating foundational digital-design blocks in Verilog. Each project holds a synthesizable design module and, where applicable, a simulation testbench.

## Projects

All projects live under `projects/`. Each folder follows Vivado's default source layout:

- `<name>.srcs/sources_1/new/dut.v` - synthesizable design module
- `<name>.srcs/sim_1/new/tb.v` - simulation testbench

| Project | Description |
|---------|-------------|
| [Gates](projects/Gates) | Basic logic gates (AND, OR, NOT, XOR, and friends) |
| [half adder](projects/half%20adder) | Half adder with sum and carry |
| [Full_adder](projects/Full_adder) | Full adder with carry-in/carry-out |
| [mux4x1](projects/mux4x1) | 4-to-1 multiplexer |
| [mux8x1](projects/mux8x1) | 8-to-1 multiplexer |
| [demux4x1](projects/demux4x1) | 1-to-4 demultiplexer |
| [demux8x1](projects/demux8x1) | 1-to-8 demultiplexer |
| [encoders](projects/encoders) | Priority encoder(s) |
| [decoders](projects/decoders) | Binary decoder (design only) |
| [binary-grey](projects/binary-grey) | Binary to Gray code converter |

Note: `projects/half adder` contains a space in its folder name, which is valid but must be quoted in shells.

## Prerequisites

- Xilinx Vivado 2020.x or later (any edition with xsim, e.g. Vivado ML Standard)
- A Verilog simulator (xsim ships with Vivado)

The design modules use only portable, synthesizable Verilog and do not target a specific FPGA board, so no board support package or pin constraints are required.

## How to Run (Vivado xsim)

1. Open Vivado and create a new project (or open an existing one).
2. Add the design source `<name>.srcs/sources_1/new/dut.v` as a design source.
3. Add `<name>.srcs/sim_1/new/tb.v` as a simulation source (where present).
4. Set the simulation top to the testbench module (usually `tb`).
5. Run behavioral simulation (`Run Simulation > Run Behavioral Simulation`).

## Repository Layout

```
vivado-programs/
├── projects/
│   └── <project>/
│       └── <project>.srcs/
│           ├── sources_1/new/dut.v
│           └── sim_1/new/tb.v
├── .github/workflows/    # CI checks
├── .gitattributes
├── .gitignore
├── LICENSE
└── README.md
```

## Notes

- Keep HDL portable and synthesizable in `dut.v`.
- Testbenches may use `initial` blocks and `$monitor`/`$display`.
- Vivado-generated files (`.xpr`, `.cache`, `.runs`, `.dcp`, `.bit`, xsim output) are git-ignored; only source and testbench `.v` files are tracked.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## Security

See [SECURITY.md](SECURITY.md).

## License

MIT, see [LICENSE](LICENSE).
