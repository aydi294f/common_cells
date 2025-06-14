// File: rtl/common_cells/src/addr_map_pkg.sv
`ifndef ADDR_MAP_PKG_SV
`define ADDR_MAP_PKG_SV

package addr_map_pkg;

  // -------------------------------------------------------------------------
  // Package Parameters — override these if you need different widths
  // -------------------------------------------------------------------------
  // Width of each address field in the rule
  parameter int unsigned ADDR_WIDTH = 32;
  // Width of the index field (must cover your NoIndices)
  parameter int unsigned IDX_WIDTH  = 4;

  // -------------------------------------------------------------------------
  // Typedefs
  // -------------------------------------------------------------------------
  // A single address (you can use this elsewhere if you like)
  typedef logic [ADDR_WIDTH-1:0] addr_t;

  // The “rule” for addr_decode_dync: holds an index and a start/end range
  typedef struct packed {
    logic [IDX_WIDTH-1:0]  idx;         // target port number
    addr_t                 start_addr;  // inclusive
    addr_t                 end_addr;    // exclusive (or mask for NAPOT)
  } rule_t;

endpackage : addr_map_pkg

`endif // ADDR_MAP_PKG_SV
