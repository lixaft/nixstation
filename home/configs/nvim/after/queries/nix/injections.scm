; extends

; #-style Comments
((comment) @injection.language
  . ; this is to make sure only adjacent comments are accounted for the injections
  [
    (string_expression (string_fragment) @injection.content)
    (indented_string_expression (string_fragment) @injection.content)
  ]
  (#gsub! @injection.language "#%s*([%w%p]+)%s*" "%1")
  (#set! injection.combined))
