if exists("g:ttcn3_fold") && g:ttcn3_fold == 1
  syn region ttcn3Fold start="{" end="}" transparent fold
endif

syntax keyword ttcn3Keywords alive
syntax keyword ttcn3Keywords all
syntax keyword ttcn3Keywords alt
syntax keyword ttcn3Keywords altstep
syntax keyword ttcn3Keywords break
syntax keyword ttcn3Keywords case
syntax keyword ttcn3Keywords complement
syntax keyword ttcn3Keywords component
syntax keyword ttcn3Keywords const
syntax keyword ttcn3Keywords continue
syntax keyword ttcn3Keywords control
syntax keyword ttcn3Keywords default
syntax keyword ttcn3Keywords display
syntax keyword ttcn3Keywords do
syntax keyword ttcn3Keywords else
syntax keyword ttcn3Keywords encode
syntax keyword ttcn3Keywords enumerated
syntax keyword ttcn3Keywords error
syntax keyword ttcn3Keywords except
syntax keyword ttcn3Keywords exception
syntax keyword ttcn3Keywords extends
syntax keyword ttcn3Keywords extension
syntax keyword ttcn3Keywords external
syntax keyword ttcn3Keywords for
syntax keyword ttcn3Keywords friend
syntax keyword ttcn3Keywords from
syntax keyword ttcn3Keywords function
syntax keyword ttcn3Keywords goto
syntax keyword ttcn3Keywords group
syntax keyword ttcn3Keywords if
syntax keyword ttcn3Keywords ifpresent
syntax keyword ttcn3Keywords import
syntax keyword ttcn3Keywords in
syntax keyword ttcn3Keywords inout
syntax keyword ttcn3Keywords interleave
syntax keyword ttcn3Keywords label
syntax keyword ttcn3Keywords language
syntax keyword ttcn3Keywords length
syntax keyword ttcn3Keywords message
syntax keyword ttcn3Keywords mixed
syntax keyword ttcn3Keywords modifies
syntax keyword ttcn3Keywords module
syntax keyword ttcn3Keywords modulepar
syntax keyword ttcn3Keywords mtc
syntax keyword ttcn3Keywords noblock
syntax keyword ttcn3Keywords nowait
syntax keyword ttcn3Keywords of
syntax keyword ttcn3Keywords optional
syntax keyword ttcn3Keywords or
syntax keyword ttcn3Keywords or4b
syntax keyword ttcn3Keywords out
syntax keyword ttcn3Keywords override
syntax keyword ttcn3Keywords param
syntax keyword ttcn3Keywords pattern
syntax keyword ttcn3Keywords permutation
syntax keyword ttcn3Keywords port
syntax keyword ttcn3Keywords present
syntax keyword ttcn3Keywords private
syntax keyword ttcn3Keywords procedure
syntax keyword ttcn3Keywords public
syntax keyword ttcn3Keywords realtime
syntax keyword ttcn3Keywords record
syntax keyword ttcn3Keywords recursive
syntax keyword ttcn3Keywords repeat
syntax keyword ttcn3Keywords return
syntax keyword ttcn3Keywords select
syntax keyword ttcn3Keywords self
syntax keyword ttcn3Keywords sender
syntax keyword ttcn3Keywords set
syntax keyword ttcn3Keywords signature
syntax keyword ttcn3Keywords subset
syntax keyword ttcn3Keywords superset
syntax keyword ttcn3Keywords system
syntax keyword ttcn3Keywords template
syntax keyword ttcn3Keywords testcase
syntax keyword ttcn3Keywords timeout
syntax keyword ttcn3Keywords timestamp
syntax keyword ttcn3Keywords to
syntax keyword ttcn3Keywords type
syntax keyword ttcn3Keywords union
syntax keyword ttcn3Keywords value
syntax keyword ttcn3Keywords var
syntax keyword ttcn3Keywords variant
syntax keyword ttcn3Keywords while
syntax keyword ttcn3Keywords with

syn match ttcn3Error "\<runs\>"
syn match ttcn3Error "\<on\>"
syn match ttcn3Keywords   "\<runs\s\+on\>"
syn match ttcn3Keywords  "\<import\s\+from\>"
syn match ttcn3Keywords  "\<friend\s\+module\>"


" Predefined types
syntax keyword ttcn3Types address
syntax keyword ttcn3Types anytype
syntax keyword ttcn3Types bitstring
syntax keyword ttcn3Types boolean
syntax keyword ttcn3Types charstring
syntax keyword ttcn3Types float
syntax keyword ttcn3Types hexstring
syntax keyword ttcn3Types integer
syntax keyword ttcn3Types octetstring
syntax keyword ttcn3Types timer
syntax keyword ttcn3Types verdicttype

syn match ttcn3Error "\<universal\>"
syn match ttcn3Types "\<universal\s\+char\(string\)\?\>"

" Operators
syntax keyword ttcn3Operators and
syntax keyword ttcn3Operators and4b
syntax keyword ttcn3Operators mod
syntax keyword ttcn3Operators not
syntax keyword ttcn3Operators not4b
syntax keyword ttcn3Operators rem
syntax keyword ttcn3Operators xor
syntax keyword ttcn3Operators xor4b

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
syntax keyword ttcn3Functions activate
syntax keyword ttcn3Functions any2unistr
syntax keyword ttcn3Functions apply
syntax keyword ttcn3Functions bit2hex
syntax keyword ttcn3Functions bit2int
syntax keyword ttcn3Functions bit2oct
syntax keyword ttcn3Functions bit2str
syntax keyword ttcn3Functions call
syntax keyword ttcn3Functions catch
syntax keyword ttcn3Functions char
syntax keyword ttcn3Functions char2int
syntax keyword ttcn3Functions char2oct
syntax keyword ttcn3Functions check
syntax keyword ttcn3Functions clear
syntax keyword ttcn3Functions connect
syntax keyword ttcn3Functions create
syntax keyword ttcn3Functions deactivate
syntax keyword ttcn3Functions decmatch
syntax keyword ttcn3Functions disconnect
syntax keyword ttcn3Functions done
syntax keyword ttcn3Functions enum2int
syntax keyword ttcn3Functions execute
syntax keyword ttcn3Functions float2int
syntax keyword ttcn3Functions float2int
syntax keyword ttcn3Functions getcall
syntax keyword ttcn3Functions getreply
syntax keyword ttcn3Functions getverdict
syntax keyword ttcn3Functions halt
syntax keyword ttcn3Functions hex2bit
syntax keyword ttcn3Functions hex2int
syntax keyword ttcn3Functions hex2oct
syntax keyword ttcn3Functions hex2str
syntax keyword ttcn3Functions int2bit
syntax keyword ttcn3Functions int2char
syntax keyword ttcn3Functions int2enum
syntax keyword ttcn3Functions int2float
syntax keyword ttcn3Functions int2hex
syntax keyword ttcn3Functions int2oct
syntax keyword ttcn3Functions int2str
syntax keyword ttcn3Functions int2unichar
syntax keyword ttcn3Functions kill
syntax keyword ttcn3Functions killed
syntax keyword ttcn3Functions log
syntax keyword ttcn3Functions map
syntax keyword ttcn3Functions match
syntax keyword ttcn3Functions oct2bit
syntax keyword ttcn3Functions oct2char
syntax keyword ttcn3Functions oct2hex
syntax keyword ttcn3Functions oct2int
syntax keyword ttcn3Functions oct2str
syntax keyword ttcn3Functions oct2unichar
syntax keyword ttcn3Functions raise
syntax keyword ttcn3Functions read
syntax keyword ttcn3Functions receive
syntax keyword ttcn3Functions reply
syntax keyword ttcn3Functions running
syntax keyword ttcn3Functions send
syntax keyword ttcn3Functions setverdict
syntax keyword ttcn3Functions start
syntax keyword ttcn3Functions stop
syntax keyword ttcn3Functions str2float
syntax keyword ttcn3Functions str2hex
syntax keyword ttcn3Functions str2int
syntax keyword ttcn3Functions str2oct
syntax keyword ttcn3Functions trigger
syntax keyword ttcn3Functions unichar2int
syntax keyword ttcn3Functions unichar2oct
syntax keyword ttcn3Functions unmap
syntax keyword ttcn3Functions valueof
syntax keyword ttcn3Functions wait

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
