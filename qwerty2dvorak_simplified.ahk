#SingleInstance force
#MaxHotkeysPerInterval 100
#UseHook
Process, Priority,, Realtime
SetKeyDelay -1

Menu, Tray, NoStandard
Menu, Tray, Tip, 键盘布局 - Dvorak
Menu, Tray, Add, 切换 (&Q), MenuSuspend
Menu, Tray, Add, 退出 (&E), MenuExit
Menu, Tray, Default, 切换 (&Q)
Menu, Tray, Click, 1
Suspend Off
If (!A_IsCompiled) {
    Menu, Tray, Icon, D.ico, 1, 1
}

return

MenuExit:
    ExitApp

MenuSuspend:
    Suspend Permit
    if (A_IsSuspended) {
        Suspend Off
        If (!A_IsCompiled) {
            Menu, Tray, Icon, D.ico, 1, 1
        }
        Menu, Tray, Tip, 键盘布局 - Dvorak
    } else {
        Suspend On
        If (!A_IsCompiled) {
            Menu, Tray, Icon, Q.ico, 1, 1
        }
        Menu, Tray, Tip, 键盘布局 - QWERTY
    }
    return

LAlt & `::
  Suspend Permit
  Gosub, MenuSuspend
  Return,

-::[
=::]
q::'
w::,
e::.
r::p
t::y
y::f
u::g
i::c
o::r
p::l
[::/
]::=
a::a
s::o
d::e
f::u
g::i
h::d
j::h
k::t
l::n
`;::s
'::-
z::`;
x::q
c::j
v::k
b::x
n::b
m::m
,::w
.::v
/::z
