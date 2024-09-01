if exists("g:ttcn3_fold") && g:ttcn3_fold == 1
  syn region ttcn3Fold start="{" end="}" transparent fold
endif

syntax keyword ttcn3Keywords alive
    / all
    / alt
    / altstep
    / break
    / case
    / complement
    / component
    / const
    / continue
    / control
    / default
    / display
    / do
    / else
    / encode
    / enumerated
    / error
    / except
    / exception
    / extends
    / extension
    / external
    / for
    / friend
    / from
    / function
    / goto
    / group
    / if
    / ifpresent
    / import
    / in
    / inout
    / interleave
    / label
    / language
    / length
    / message
    / mixed
    / modifies
    / module
    / modulepar
    / mtc
    / noblock
    / nowait
    / of
    / optional
    / or
    / or4b
    / out
    / override
    / param
    / pattern
    / permutation
    / port
    / present
    / private
    / procedure
    / public
    / realtime
    / record
    / recursive
    / repeat
    / return
    / select
    / self
    / sender
    / set
    / signature
    / subset
    / superset
    / system
    / template
    / testcase
    / timeout
    / timestamp
    / to
    / type
    / union
    / value
    / var
    / variant
    / while
    / with

syn match ttcn3Error "\<runs\>"
syn match ttcn3Error "\<on\>"
syn match ttcn3Keywords   "\<runs\s\+on\>"
syn match ttcn3Keywords  "\<import\s\+from\>"
syn match ttcn3Keywords  "\<friend\s\+module\>"


" Predefined types
syntax keyword ttcn3Types address
    / anytype
    / bitstring
    / boolean
    / charstring
    / float
    / hexstring
    / integer
    / octetstring
    / timer
    / verdicttype

syn match ttcn3Error "\<universal\>"
syn match ttcn3Types "\<universal\s\+char\(string\)\?\>"

" Operators
syntax keyword ttcn3Operators and
    / and4b
    / mod
    / not
    / not4b
    / rem
    / xor
    / xor4b

syn match   ttcn3Operators    "[-+*/?]"
syn match   ttcn3Operators    "[<>]"
syn match   ttcn3Error        "="
syn match   ttcn3Operators    "[=!><]="
syn match   ttcn3Operators    "\(<[<@]\)\|\([>@]>\)"
syn match   ttcn3Operators    "&"
syn match   ttcn3Error   "&&\+"hs=s+1
syn match   ttcn3Operators    "\.\."
syn match   ttcn3Error   "\.\.\.\+"hs=s+2
syn match   ttcn3Operators    "->"
syn match   ttcn3Operators    ":="


" Functions
" syntax keyword ttcn3Functions action
syntax keyword ttcn3Functions action
    / activate
    / any2unistr
    / apply
    / bit2hex
    / bit2int
    / bit2oct
    / bit2str
    / call
    / catch
    / char
    / char2int
    / char2oct
    / check
    / clear
    / connect
    / create
    / deactivate
    / decmatch
    / disconnect
    / done
    / enum2int
    / execute
    / float2int
    / float2int
    / getcall
    / getreply
    / getverdict
    / halt
    / hex2bit
    / hex2int
    / hex2oct
    / hex2str
    / int2bit
    / int2char
    / int2enum
    / int2float
    / int2hex
    / int2oct
    / int2str
    / int2unichar
    / kill
    / killed
    / log
    / map
    / match
    / oct2bit
    / oct2char
    / oct2hex
    / oct2int
    / oct2str
    / oct2unichar
    / raise
    / read
    / receive
    / reply
    / running
    / send
    / setverdict
    / start
    / stop
    / str2float
    / str2hex
    / str2int
    / str2oct
    / trigger
    / unichar2int
    / unichar2oct
    / unmap
    / valueof
    / wait

syn match ttcn3Error "\<any\>"
syn match ttcn3Functions "\<\(any\|all\)\s\+\(from\|component\|port\|timer\)\?\>"

" Literals
syn match   ttcn3Error   "\_^0\d\+"he=s+1
syn match   ttcn3Error   "\(\s\|\t\)0\d\+"hs=s+1,he=s+2
syn match   ttcn3Number  "\<\(0\|\([1-9]\d*\)\)\>"
syn match   ttcn3Number  "\<\(0\|\([1-9]\d*\)\)\.\d\+\>"
syn match   ttcn3Number  "\<\(0\|\([1-9]\d*\)\)\(\.\d\+\)\?E-\?[1-9]\d*\>"
syn match   ttcn3Number  "[^a-zA-Z0-9_]\@<=[+-]\d"hs=e-1,he=e-1,me=e-1
syn match   ttcn3Number  "\<infinity\>"
syn match   ttcn3Number  "-infinity\>"
syn keyword ttcn3Bool    true false
syn keyword ttcn3Const   omit null pass fail inconc none error now
syn keyword ttcn3Preproc __MODULE__ __FILE__ __BFILE__ __LINE__ __SCOPE__
syn region  ttcn3String  start=/"/ end=/"/ skip=/""/ oneline
syn match   ttcn3String  /'[01]\+'B/
syn match   ttcn3String  /'\x\+'H/
syn match   ttcn3String  /'\(\x\x\)\+'O/

" Comments
if version < 700
  syn match   ttcn3Comments    "//.*" contains=ttcn3Todos
  syn region  ttcn3Comments    start="/\*" end="\*/" contains=ttcn3Todos
else
  syn match   ttcn3Comments    "//.*" contains=ttcn3Todos,@Spell
  syn region  ttcn3Comments    start="/\*" end="\*/" contains=ttcn3Todo,@Spell
endif

syn case ignore
syn keyword ttcn3Todos    xxx todo fixme contained
syn case match

highlight link ttcn3Comments  Comment
highlight link ttcn3Functions Function
highlight link ttcn3Bool      Boolean
highlight link ttcn3Const     Constant
highlight link ttcn3Error     Error
highlight link ttcn3Keywords  Keyword
highlight link ttcn3Number    Number
highlight link ttcn3Operators Operator
highlight link ttcn3Preproc   PreProc
highlight link ttcn3String    String
highlight link ttcn3Todos     Todo
highlight link ttcn3Types     Type

let b:current_syntax = "ttcn3"
