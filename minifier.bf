List: listhelper character tmp0 tmp1 okchrflag null
[-]>[-]>[-]>[-]>[-]>[-]>[-]+>[-],>[-]+<

[
	Go one offset further
	>>>>>>
	
	Set listhelper
	<+>
	
	Set tmp0 to one and tmp1 okchrflag and null to zero then return to character cell
	>[-]+>[-]>[-]>[-]<<<<
	
	Set character
	,
]

We read EOF we want to remove the listhelper and tmp0 for this cell and go last real listhelper cell
<[-]<<<<<<

Go to the first cell of the list
[<<<<<<]>>>>>>

Go to the tmp0
>>

Calculate all tmp0s together
[<<<<<<[->>>>>>+<<<<<<]>>>>>>>>>>>>]

Length counter is one too big we need to decrement it by one
<<<<<<-<<<<<<

Go to the first cell
<<[<<<<<<]>>>>>>

Go through whole list
[
	Go to chr field
	>
	
	Copy it to tmp0 and tmp1
	[->+>+<<]
	
	Go to tmp1 and copy back to chr field
	>>[-<<+>>]
	
	Go back to listhelper
	<<<
	
	Go to next cell
	>>>>>>
]

Go to the first cell
<<<<<<[<<<<<<]>>>>>>

Go through whole list
[
	Zero the tmp1
	>>>[-]
	
	Go to tmp0 field
	<
	
	Remove 43 form it and if not zero add one to tmp1
	-------------------------------------------[>+<
		-[>+<
			-[>+<
				-[>+<
					--------------[>+<
						--[>+<
							-----------------------------[>+<
								--[>+<
									Zero the chr it was not brainfuck chr
									[-]
								]
							]
						]
					]
				]
			]
		]
	]
	
	Go back to the listhelper
	<<
	
	Go to the next cell
	>>>>>>
]

Go back to the first cell
<<<<<<[<<<<<<]>>>>>>

Go through whole list
[
	Go to okchrflag and set it to zero
	>>>>[-]
	
	Go to tmp1
	<
	
	If it was not 8
	--------[
		Set okchrflag to one
		>[-]+<
		[-]
	]
	
	Go to listhelper
	<<<
	
	Go to next cell
	>>>>>>
]

Go to the first cell
<<<<<<[<<<<<<]>>>>>>

Go through whole list
[
	Go to okchrflag
	>>>>
	
	If okchrflag is one, print the character
	[
		Go to character and print it
		<<<.
		
		Go to to okchrflag
		>>>
		
		Exit loop by clearing okchrflag
		[-]
	]
	
	Go back to listhelper
	<<<<
	
	Go to next cell
	>>>>>>
]
