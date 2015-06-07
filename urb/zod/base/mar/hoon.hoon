::
::::  /hoon/hook/mar
  ::
/?  314
!:
|_  own=@t
::
++  grow                                                ::  convert to
  |%
  ++  mime  `^mime`[/text/hoon (taco own)]              ::  convert to %mime
  ++  psal  ;div:pre(urb_codemirror ""):"{(trip own)}"  ::  convert to %html
  ++  hymn
    :: ;html:(head:title:"Source" "+{psal}")
    ;html
      ;head
        ;title:"Source"
        ;script@"//cdnjs.cloudflare.com/ajax/libs/codemirror/4.3.0/codemirror.js";
        ;script@"/{(trip &2:%)}/lib/syntax/hoon.js";
        ;link(rel "stylesheet", href "//cdnjs.cloudflare.com/ajax/libs/".
          "codemirror/4.3.0/codemirror.min.css");
        ;link/"/{(trip &2:%)}/lib/syntax/codemirror.css"(rel "stylesheet");
      == 
      ;body
        ;textarea#src:"{(trip own)}"
        ;script:'CodeMirror.fromTextArea(src, {lineNumbers:true, readOnly:true})'
      ==
    ==
  ++  txt
    (lore (cat 3 own '\0a'))
  --
++  grab
  |%                                            ::  convert from
  ++  mime  |=([p=mite q=octs] q.q)
  ++  noun  ,@t                                 ::  clam from %noun
  ++  txt
    |=  wan=wain
    ^-  @t
    =+  (role wan)
    (end 3 (dec (met 3 -)) -)
  --
++  grad
  |%
  ++  sted  %txt
  --
--