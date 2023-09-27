CAPI=2:
# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
${gen_core_comment}
name: "lowrisc:dv:flash_ctrl_ral:0.1"
description: "FLASH_CTRL DV ralgen collateral"
filesets:
  files_dv:
    depend:
      - lowrisc:dv:ralgen

generate:
  ral:
    generator: ralgen
    parameters:
      name: flash_ctrl
      ip_hjson: ../../../data/autogen/flash_ctrl.hjson

targets:
  default:
    filesets:
      - files_dv
    generate:
      - ral
