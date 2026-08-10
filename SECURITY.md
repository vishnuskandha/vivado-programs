# Security Policy

## Reporting a Vulnerability

If you find a security issue in this repository, do not open a public issue. Report it privately by emailing the repository owner at **vishnuskandha@gmail.com** with a description of the problem and, if possible, a minimal reproduction.

You can expect an acknowledgment within a few days and a proposed fix as soon as the issue is understood. Please do not disclose the issue publicly until a fix is released.

## Scope

This repository contains Verilog teaching examples and contains no production secrets. Still, the usual precautions apply:

- Never commit Vivado-issued license files, credentials, or IP authorization files.
- Vivado-generated output (checkpoints `.dcp`, bitstreams `.bit`, `.cache` and `.runs` directories) is large and should stay git-ignored.

## Reporting a Vulnerability in Vivado Itself

Issues in Xilinx/AMD Vivado tooling should be reported to AMD via the official [Vivado support channels](https://support.xilinx.com/).
