("(" @open
  ")" @close)

("[" @open
  "]" @close)

("{" @open
  "}" @close)

(("<" @open
  ">" @close)
  (#set! rainbow.exclude))

(((code_block_marker_begin) @open
  (code_block_marker_end) @close)
  (#set! rainbow.exclude))
