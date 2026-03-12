; Headings
[
  (heading)
] @title.markup

; Thematic breaks
(thematic_break) @punctuation.markup

; Divs
[
  (div_marker_begin)
  (div_marker_end)
] @punctuation.markup

; Code blocks and raw blocks
[
  (code_block)
  (raw_block)
  (frontmatter)
] @text

[
  (code_block_marker_begin)
  (code_block_marker_end)
  (raw_block_marker_begin)
  (raw_block_marker_end)
  (frontmatter_marker)
] @punctuation.embedded.markup

(language) @label

; Block quotes
(block_quote) @text
(block_quote_marker) @punctuation.markup

; Tables
(table_header) @title.markup
(table_header "|" @punctuation.markup)
(table_row "|" @punctuation.markup)
(table_separator) @punctuation.markup
(table_caption (marker) @punctuation.markup)
(table_caption) @text

; List markers
[
  (list_marker_dash)
  (list_marker_plus)
  (list_marker_star)
  (list_marker_definition)
  (list_marker_decimal_period)
  (list_marker_decimal_paren)
  (list_marker_decimal_parens)
  (list_marker_lower_alpha_period)
  (list_marker_lower_alpha_paren)
  (list_marker_lower_alpha_parens)
  (list_marker_upper_alpha_period)
  (list_marker_upper_alpha_paren)
  (list_marker_upper_alpha_parens)
  (list_marker_lower_roman_period)
  (list_marker_lower_roman_paren)
  (list_marker_lower_roman_parens)
  (list_marker_upper_roman_period)
  (list_marker_upper_roman_paren)
  (list_marker_upper_roman_parens)
] @punctuation.list_marker.markup

(list_marker_task (unchecked)) @punctuation.list_marker.markup
(list_marker_task (checked)) @punctuation.list_marker.markup

; Definition lists
(list_item (term) @title.markup)

; Inline formatting
(emphasis) @emphasis.markup
(strong) @strong.markup
(delete) @strikethrough.markup
(insert) @emphasis.markup
(highlighted) @emphasis.markup
(superscript) @text
(subscript) @text
(symbol) @label

; Formatting delimiters
[
  (emphasis_begin)
  (emphasis_end)
  (strong_begin)
  (strong_end)
  (superscript_begin)
  (superscript_end)
  (subscript_begin)
  (subscript_end)
  (highlighted_begin)
  (highlighted_end)
  (insert_begin)
  (insert_end)
  (delete_begin)
  (delete_end)
  (verbatim_marker_begin)
  (verbatim_marker_end)
  (math_marker)
  (math_marker_begin)
  (math_marker_end)
  (raw_inline_marker_begin)
  (raw_inline_marker_end)
  (raw_inline_attribute)
] @punctuation.markup

; Math
(math) @text

; Verbatim / inline code
(verbatim) @text
(raw_inline) @text

; Comments
[
  (comment)
  (inline_comment)
] @comment

; Attributes
(span
  ["[" "]"] @punctuation.markup)

(inline_attribute
  ["{" "}"] @punctuation.markup)

(block_attribute
  ["{" "}"] @punctuation.markup)

[
  (class)
  (class_name)
] @type

(identifier) @tag

(key_value "=" @operator)
(key_value (key) @property)
(key_value (value) @string)

; Links
(full_reference_link (link_text) @link_text.markup)
(full_reference_link (link_label) @link_text.markup)
(collapsed_reference_link (link_text) @link_text.markup)
(inline_link (link_text) @link_text.markup)

(link_text ["[" "]"] @punctuation.markup)
(autolink ["<" ">"] @punctuation.markup)

[
  (autolink)
  (inline_link_destination)
  (link_destination)
  (link_reference_definition)
] @link_uri.markup

(inline_link_destination ["(" ")"] @punctuation.markup)

(link_reference_definition ":" @punctuation.markup)
(link_reference_definition ["[" "]"] @punctuation.markup)
(link_reference_definition (link_label) @link_text.markup)

; Images
(image_description) @link_text.markup
(image_description ["![" "]"] @punctuation.markup)

(full_reference_image (link_label) @link_text.markup)
(full_reference_image ["[" "]"] @punctuation.markup)
(collapsed_reference_image "[]" @punctuation.markup)

; Footnotes
(footnote (reference_label) @link_text.markup)
(footnote_reference (reference_label) @link_text.markup)
[
  (footnote_marker_begin)
  (footnote_marker_end)
] @punctuation.markup

; Special characters
[
  (ellipsis)
  (en_dash)
  (em_dash)
  (quotation_marks)
] @string

[
  (hard_line_break)
  (backslash_escape)
] @string.escape

; Annotations
(todo) @keyword
(note) @keyword
(fixme) @keyword

; Paragraphs
(paragraph) @text
