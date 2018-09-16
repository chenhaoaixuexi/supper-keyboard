; reference link : https://www.zhihu.com/question/19645501/answer/39906404
; make caplock convert esc to fit vi editor
SendMode Input
#SingleInstance force ;强制单进程
;#NoTrayIcon ; 不显示托盘图标
SetCapsLockState, AlwaysOff ; set caplock key always off

;====================================CapsLock========================================
CapsLock::
  	send , {Esc}
  	return

CapsLock & e::
	Send , {up}
	return
	
CapsLock & d::
	Send , {Down}
	return 
	
CapsLock & s::
	Send , {Left}
	return

CapsLock & f::
	Send , {right}
	return
	
CapsLock & h::
	Send,^+{Left}
	return

CapsLock & n::
	Send,^+{Right}
	return
	
CapsLock & p::
	Send,{Home}
	return

CapsLock & `;::
	Send,{End}
	return

CapsLock & a::
	Send, ^{left}
	return
	
CapsLock & g::
	Send, ^{right}
	return

CapsLock & w::
	Send, {Backspace}
	return
	
CapsLock & r::
	Send, {delete}
	return

CapsLock & Enter::
	Send,{end}{enter}

CapsLock & u::
	Send,+{home}
	return

CapsLock & o::
	Send,+{end}
	return
	
	
CapsLock & i::
	Send, +{up}
	return

CapsLock & k::
	Send, +{down}
	return
	
CapsLock & z::
	Send, ^{z}
	return

CapsLock & c::
	Send ^{c}
	return
	
		
CapsLock & v::
	Send ^{v}
	return

CapsLock & x::
	send,^{x}
	return

CapsLock & j::
	Send ,+{left}
	return

CapsLock & l::
	Send,+{right}
	return
	
CapsLock & t::
	Send,^{c}!0^{v}
	return

CapsLock & q::
	Send,^{c}!b^{v}
	return
	
CapsLock & BackSpace::
	Send,{End}+{Home}{BackSpace}
	return

CapsLock & y::
	Send,{up 5}
	return

CapsLock & b::
	Send, {down 5}
	return

;====================================================| charactor complete |====================================================

CapsLock & {::
	Send,^{c}{{}{}}{left}^{v}
	return
	
CapsLock & }::
	Send,^{c}{[}{]}{left}^{v}
	return


CapsLock & '::
		Send,^{c}{`"}{`"}{Left}^{v}	
		return
		
;========================================================== window active hot key		===========================================================

CapsLock & -::
	Send ,^{w}
	return
	
CapsLock & =::
	Send, ^+{t}
	return


CapsLock & 1::
	if WinExist("ahk_exe C:\Program Files\Mozilla Firefox\firefox.exe")
		IfWinActive
			WinMinimize
		else
			WinActivate , ahk_exe C:\Program Files\Mozilla Firefox\firefox.exe	
	return

CapsLock & 2::
	if WinExist("ahk_exe C:\Program Files (x86)\XMind\XMind.exe")
		IfWinActive
			WinMinimize
		else
			WinActivate , ahk_exe C:\Program Files (x86)\XMind\XMind.exe
	return

;~ ! & CapsLock & 3::
	;~ if WinExist("ahk_exe C:\Program Files (x86)\XMind\XMind.exe")
		;~ IfWinActive
			;~ WinMinimize
		;~ else
			;~ WinActivate , ahk_exe C:\Program Files (x86)\XMind\XMind.exe
	;~ return
	
CapsLock & 4::
	if WinExist("ahk_exe C:\Program Files\Typora\Typora.exe")
		IfWinActive
			WinMinimize
		else
			WinActivate , ahk_exe C:\Program Files\Typora\Typora.exe
	return

CapsLock & 5::
	if WinExist("ahk_exe C:\Windows\explorer.exe")
		IfWinActive
			WinMinimize
		else
			WinActivate , ahk_exe C:\Windows\explorer.exe
	return

;~ CapsLock & 4::
	;~ if WinExist("ahk_exe C:\Program Files\Typora\Typora.exe")
		;~ IfWinActive
			;~ WinMinimize
		;~ else
			;~ WinActivate , ahk_exe C:\Program Files\Typora\Typora.exe
	;~ return
	



;====================================================| special configulation |====================================================
; add perfix $ make tab key can not reverse
$Tab::
	if WinExist("ahk_exe C:\Program Files\mindmaster\MindMaster.exe")
		IfWinActive
			Send,^{Enter}
		IfWinNotActive
			Send,{Tab}
			return
	IfWinNotExist ahk_exe C:\Program Files\mindmaster\MindMaster.exe
		Send,{Tab}
		return



; in xmind
$F2::
	if winExist( "ahk_exe C:\Program Files (x86)\XMind\XMind.exe")
		ifwinActive
			Send , {F2}{Right}
		IfWinNotActive 
			Send , {F2}
	IfWinNotExist ahk_exe C:\Program Files (x86)\XMind\XMind.exe
		Send, {F2}
	return

;space configuration
$+Space::
	Send, {PGUP}
	return
CapsLock & Space::
	Send,{PGDN}
	return


;============================================================hot string convert===========================================================
:*:()::(){left}
:*:[]::[]{left}
:*:""::""{left}
:*:''::''{left}
:*:<>::<>{left}
:*:{}::{{}{}}{left}
:*:````::{``}{``}{left}
:*:===::====================================================|  |===================================================={Left 54}
