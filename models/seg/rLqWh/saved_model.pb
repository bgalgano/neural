ў&
Ш
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Р
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%ЭЬL>"
Ttype0:
2

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype

ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
О
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.0-49-g85c8b2a817f8ѓІ

conv2d_transpose_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:A**
shared_nameconv2d_transpose_4/kernel

-conv2d_transpose_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/kernel*&
_output_shapes
:A*
dtype0

conv2d_transpose_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_4/bias

+conv2d_transpose_4/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@ *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: *
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:*
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0

conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose/kernel

+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*&
_output_shapes
:*
dtype0

conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameconv2d_transpose/bias
{
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes
:*
dtype0

conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_1/kernel

-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*&
_output_shapes
:*
dtype0

conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_1/bias

+conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes
:*
dtype0

conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0**
shared_nameconv2d_transpose_2/kernel

-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*&
_output_shapes
: 0*
dtype0

conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameconv2d_transpose_2/bias

+conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/bias*
_output_shapes
: *
dtype0

conv2d_transpose_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`**
shared_nameconv2d_transpose_3/kernel

-conv2d_transpose_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/kernel*&
_output_shapes
:@`*
dtype0

conv2d_transpose_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameconv2d_transpose_3/bias

+conv2d_transpose_3/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/bias*
_output_shapes
:@*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
Є
 Adam/conv2d_transpose_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*1
shared_name" Adam/conv2d_transpose_4/kernel/m

4Adam/conv2d_transpose_4/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_4/kernel/m*&
_output_shapes
:A*
dtype0

Adam/conv2d_transpose_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_4/bias/m

2Adam/conv2d_transpose_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_4/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/m

(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:@*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_1/kernel/m

*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
:@ *
dtype0

Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_2/kernel/m

*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_2/bias/m
y
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_3/kernel/m

*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/m
y
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes
:*
dtype0
 
Adam/conv2d_transpose/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose/kernel/m

2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_transpose/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/conv2d_transpose/bias/m

0Adam/conv2d_transpose/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/m*
_output_shapes
:*
dtype0
Є
 Adam/conv2d_transpose_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/conv2d_transpose_1/kernel/m

4Adam/conv2d_transpose_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_transpose_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_1/bias/m

2Adam/conv2d_transpose_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/m*
_output_shapes
:*
dtype0
Є
 Adam/conv2d_transpose_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*1
shared_name" Adam/conv2d_transpose_2/kernel/m

4Adam/conv2d_transpose_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/m*&
_output_shapes
: 0*
dtype0

Adam/conv2d_transpose_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_2/bias/m

2Adam/conv2d_transpose_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/m*
_output_shapes
: *
dtype0
Є
 Adam/conv2d_transpose_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*1
shared_name" Adam/conv2d_transpose_3/kernel/m

4Adam/conv2d_transpose_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_3/kernel/m*&
_output_shapes
:@`*
dtype0

Adam/conv2d_transpose_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_3/bias/m

2Adam/conv2d_transpose_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_3/bias/m*
_output_shapes
:@*
dtype0
Є
 Adam/conv2d_transpose_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*1
shared_name" Adam/conv2d_transpose_4/kernel/v

4Adam/conv2d_transpose_4/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_4/kernel/v*&
_output_shapes
:A*
dtype0

Adam/conv2d_transpose_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_4/bias/v

2Adam/conv2d_transpose_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_4/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/v

(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:@*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_1/kernel/v

*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
:@ *
dtype0

Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_2/kernel/v

*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_2/bias/v
y
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_3/kernel/v

*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/v
y
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes
:*
dtype0
 
Adam/conv2d_transpose/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose/kernel/v

2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_transpose/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/conv2d_transpose/bias/v

0Adam/conv2d_transpose/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/v*
_output_shapes
:*
dtype0
Є
 Adam/conv2d_transpose_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/conv2d_transpose_1/kernel/v

4Adam/conv2d_transpose_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_transpose_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_1/bias/v

2Adam/conv2d_transpose_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/v*
_output_shapes
:*
dtype0
Є
 Adam/conv2d_transpose_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*1
shared_name" Adam/conv2d_transpose_2/kernel/v

4Adam/conv2d_transpose_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/v*&
_output_shapes
: 0*
dtype0

Adam/conv2d_transpose_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_2/bias/v

2Adam/conv2d_transpose_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/v*
_output_shapes
: *
dtype0
Є
 Adam/conv2d_transpose_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*1
shared_name" Adam/conv2d_transpose_3/kernel/v

4Adam/conv2d_transpose_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_3/kernel/v*&
_output_shapes
:@`*
dtype0

Adam/conv2d_transpose_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_3/bias/v

2Adam/conv2d_transpose_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_3/bias/v*
_output_shapes
:@*
dtype0

NoOpNoOp
и
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB Bћ
ы
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
 

layer_with_weights-0
layer-0
layer-1
trainable_variables
regularization_losses
	variables
	keras_api

layer_with_weights-0
layer-0
layer-1
trainable_variables
regularization_losses
	variables
	keras_api

layer_with_weights-0
layer-0
layer-1
 trainable_variables
!regularization_losses
"	variables
#	keras_api

$layer_with_weights-0
$layer-0
%layer-1
&trainable_variables
'regularization_losses
(	variables
)	keras_api

*layer_with_weights-0
*layer-0
+layer-1
,trainable_variables
-regularization_losses
.	variables
/	keras_api
R
0trainable_variables
1regularization_losses
2	variables
3	keras_api

4layer_with_weights-0
4layer-0
5layer-1
6trainable_variables
7regularization_losses
8	variables
9	keras_api

:layer_with_weights-0
:layer-0
;layer-1
<trainable_variables
=regularization_losses
>	variables
?	keras_api

@layer_with_weights-0
@layer-0
Alayer-1
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
x
F
activation

Gkernel
Hbias
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
Ј
Miter

Nbeta_1

Obeta_2
	Pdecay
Qlearning_rateGmУHmФRmХSmЦTmЧUmШVmЩWmЪXmЫYmЬZmЭ[mЮ\mЯ]mа^mб_mв`mгamдGvеHvжRvзSvиTvйUvкVvлWvмXvнYvоZvп[vр\vс]vт^vу_vф`vхavц

R0
S1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10
]11
^12
_13
`14
a15
G16
H17
 

R0
S1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10
]11
^12
_13
`14
a15
G16
H17
­
bmetrics
clayer_regularization_losses
trainable_variables
regularization_losses
dnon_trainable_variables
elayer_metrics

flayers
	variables
 
x
F
activation

Rkernel
Sbias
gtrainable_variables
hregularization_losses
i	variables
j	keras_api
R
ktrainable_variables
lregularization_losses
m	variables
n	keras_api

R0
S1
 

R0
S1
­
ometrics
player_regularization_losses
trainable_variables
regularization_losses
qnon_trainable_variables
rlayer_metrics

slayers
	variables
x
F
activation

Tkernel
Ubias
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
R
xtrainable_variables
yregularization_losses
z	variables
{	keras_api

T0
U1
 

T0
U1
Ў
|metrics
}layer_regularization_losses
trainable_variables
regularization_losses
~non_trainable_variables
layer_metrics
layers
	variables
|
F
activation

Vkernel
Wbias
trainable_variables
regularization_losses
	variables
	keras_api
V
trainable_variables
regularization_losses
	variables
	keras_api

V0
W1
 

V0
W1
В
metrics
 layer_regularization_losses
 trainable_variables
!regularization_losses
non_trainable_variables
layer_metrics
layers
"	variables
|
F
activation

Xkernel
Ybias
trainable_variables
regularization_losses
	variables
	keras_api
V
trainable_variables
regularization_losses
	variables
	keras_api

X0
Y1
 

X0
Y1
В
metrics
 layer_regularization_losses
&trainable_variables
'regularization_losses
non_trainable_variables
layer_metrics
layers
(	variables
|
F
activation

Zkernel
[bias
trainable_variables
regularization_losses
	variables
	keras_api
V
trainable_variables
 regularization_losses
Ё	variables
Ђ	keras_api

Z0
[1
 

Z0
[1
В
Ѓmetrics
 Єlayer_regularization_losses
,trainable_variables
-regularization_losses
Ѕnon_trainable_variables
Іlayer_metrics
Їlayers
.	variables
 
 
 
В
Јmetrics
 Љlayer_regularization_losses
0trainable_variables
1regularization_losses
Њnon_trainable_variables
Ћlayer_metrics
Ќlayers
2	variables
|
F
activation

\kernel
]bias
­trainable_variables
Ўregularization_losses
Џ	variables
А	keras_api
V
Бtrainable_variables
Вregularization_losses
Г	variables
Д	keras_api

\0
]1
 

\0
]1
В
Еmetrics
 Жlayer_regularization_losses
6trainable_variables
7regularization_losses
Зnon_trainable_variables
Иlayer_metrics
Йlayers
8	variables
|
F
activation

^kernel
_bias
Кtrainable_variables
Лregularization_losses
М	variables
Н	keras_api
V
Оtrainable_variables
Пregularization_losses
Р	variables
С	keras_api

^0
_1
 

^0
_1
В
Тmetrics
 Уlayer_regularization_losses
<trainable_variables
=regularization_losses
Фnon_trainable_variables
Хlayer_metrics
Цlayers
>	variables
|
F
activation

`kernel
abias
Чtrainable_variables
Шregularization_losses
Щ	variables
Ъ	keras_api
V
Ыtrainable_variables
Ьregularization_losses
Э	variables
Ю	keras_api

`0
a1
 

`0
a1
В
Яmetrics
 аlayer_regularization_losses
Btrainable_variables
Cregularization_losses
бnon_trainable_variables
вlayer_metrics
гlayers
D	variables
V
дtrainable_variables
еregularization_losses
ж	variables
з	keras_api
ec
VARIABLE_VALUEconv2d_transpose_4/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_4/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

G0
H1
 

G0
H1
В
иmetrics
 йlayer_regularization_losses
Itrainable_variables
Jregularization_losses
кnon_trainable_variables
лlayer_metrics
мlayers
K	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEconv2d/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEconv2d/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_1/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEconv2d_1/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_2/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEconv2d_2/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_3/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEconv2d_3/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEconv2d_transpose/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEconv2d_transpose/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_1/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose_1/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_2/kernel1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose_2/bias1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_3/kernel1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose_3/bias1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE

н0
о1
п2
 
 
 
N
0
1
2
3
4
5
6
7
	8

9
10

R0
S1
 

R0
S1
В
рmetrics
 сlayer_regularization_losses
gtrainable_variables
hregularization_losses
тnon_trainable_variables
уlayer_metrics
фlayers
i	variables
 
 
 
В
хmetrics
 цlayer_regularization_losses
ktrainable_variables
lregularization_losses
чnon_trainable_variables
шlayer_metrics
щlayers
m	variables
 
 
 
 

0
1

T0
U1
 

T0
U1
В
ъmetrics
 ыlayer_regularization_losses
ttrainable_variables
uregularization_losses
ьnon_trainable_variables
эlayer_metrics
юlayers
v	variables
 
 
 
В
яmetrics
 №layer_regularization_losses
xtrainable_variables
yregularization_losses
ёnon_trainable_variables
ђlayer_metrics
ѓlayers
z	variables
 
 
 
 

0
1

V0
W1
 

V0
W1
Е
єmetrics
 ѕlayer_regularization_losses
trainable_variables
regularization_losses
іnon_trainable_variables
їlayer_metrics
јlayers
	variables
 
 
 
Е
љmetrics
 њlayer_regularization_losses
trainable_variables
regularization_losses
ћnon_trainable_variables
ќlayer_metrics
§layers
	variables
 
 
 
 

0
1

X0
Y1
 

X0
Y1
Е
ўmetrics
 џlayer_regularization_losses
trainable_variables
regularization_losses
non_trainable_variables
layer_metrics
layers
	variables
 
 
 
Е
metrics
 layer_regularization_losses
trainable_variables
regularization_losses
non_trainable_variables
layer_metrics
layers
	variables
 
 
 
 

$0
%1

Z0
[1
 

Z0
[1
Е
metrics
 layer_regularization_losses
trainable_variables
regularization_losses
non_trainable_variables
layer_metrics
layers
	variables
 
 
 
Е
metrics
 layer_regularization_losses
trainable_variables
 regularization_losses
non_trainable_variables
layer_metrics
layers
Ё	variables
 
 
 
 

*0
+1
 
 
 
 
 

\0
]1
 

\0
]1
Е
metrics
 layer_regularization_losses
­trainable_variables
Ўregularization_losses
non_trainable_variables
layer_metrics
layers
Џ	variables
 
 
 
Е
metrics
 layer_regularization_losses
Бtrainable_variables
Вregularization_losses
non_trainable_variables
layer_metrics
layers
Г	variables
 
 
 
 

40
51

^0
_1
 

^0
_1
Е
metrics
 layer_regularization_losses
Кtrainable_variables
Лregularization_losses
non_trainable_variables
layer_metrics
 layers
М	variables
 
 
 
Е
Ёmetrics
 Ђlayer_regularization_losses
Оtrainable_variables
Пregularization_losses
Ѓnon_trainable_variables
Єlayer_metrics
Ѕlayers
Р	variables
 
 
 
 

:0
;1

`0
a1
 

`0
a1
Е
Іmetrics
 Їlayer_regularization_losses
Чtrainable_variables
Шregularization_losses
Јnon_trainable_variables
Љlayer_metrics
Њlayers
Щ	variables
 
 
 
Е
Ћmetrics
 Ќlayer_regularization_losses
Ыtrainable_variables
Ьregularization_losses
­non_trainable_variables
Ўlayer_metrics
Џlayers
Э	variables
 
 
 
 

@0
A1
 
 
 
Е
Аmetrics
 Бlayer_regularization_losses
дtrainable_variables
еregularization_losses
Вnon_trainable_variables
Гlayer_metrics
Дlayers
ж	variables
 
 
 
 

F0
8

Еtotal

Жcount
З	variables
И	keras_api
I

Йtotal

Кcount
Л
_fn_kwargs
М	variables
Н	keras_api
I

Оtotal

Пcount
Р
_fn_kwargs
С	variables
Т	keras_api
 
 
 
 

F0
 
 
 
 
 
 
 
 
 

F0
 
 
 
 
 
 
 
 
 

F0
 
 
 
 
 
 
 
 
 

F0
 
 
 
 
 
 
 
 
 

F0
 
 
 
 
 
 
 
 
 

F0
 
 
 
 
 
 
 
 
 

F0
 
 
 
 
 
 
 
 
 

F0
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Е0
Ж1

З	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Й0
К1

М	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

О0
П1

С	variables

VARIABLE_VALUE Adam/conv2d_transpose_4/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_4/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/conv2d/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_1/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_1/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_2/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_2/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_3/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_3/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_transpose/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_transpose/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_1/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/mMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_2/bias/mMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_3/kernel/mMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_3/bias/mMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_4/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_4/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/conv2d/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_1/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_1/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_2/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_2/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_3/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_3/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv2d_transpose/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_transpose/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_1/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/vMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_2/bias/vMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_3/kernel/vMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_3/bias/vMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_1Placeholder*1
_output_shapes
:џџџџџџџџџ*
dtype0*&
shape:џџџџџџџџџ
к
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_transpose_2/kernelconv2d_transpose_2/biasconv2d_transpose_3/kernelconv2d_transpose_3/biasconv2d_transpose_4/kernelconv2d_transpose_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_5219
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
е
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-conv2d_transpose_4/kernel/Read/ReadVariableOp+conv2d_transpose_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp+conv2d_transpose/kernel/Read/ReadVariableOp)conv2d_transpose/bias/Read/ReadVariableOp-conv2d_transpose_1/kernel/Read/ReadVariableOp+conv2d_transpose_1/bias/Read/ReadVariableOp-conv2d_transpose_2/kernel/Read/ReadVariableOp+conv2d_transpose_2/bias/Read/ReadVariableOp-conv2d_transpose_3/kernel/Read/ReadVariableOp+conv2d_transpose_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp4Adam/conv2d_transpose_4/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_4/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOp0Adam/conv2d_transpose/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_1/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_1/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_2/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_2/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_3/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_3/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_4/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_4/bias/v/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOp0Adam/conv2d_transpose/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_1/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_1/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_2/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_2/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_3/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_3/bias/v/Read/ReadVariableOpConst*N
TinG
E2C	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__traced_save_6549
М
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_transpose_4/kernelconv2d_transpose_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_transpose_2/kernelconv2d_transpose_2/biasconv2d_transpose_3/kernelconv2d_transpose_3/biastotalcounttotal_1count_1total_2count_2 Adam/conv2d_transpose_4/kernel/mAdam/conv2d_transpose_4/bias/mAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/mAdam/conv2d_transpose/kernel/mAdam/conv2d_transpose/bias/m Adam/conv2d_transpose_1/kernel/mAdam/conv2d_transpose_1/bias/m Adam/conv2d_transpose_2/kernel/mAdam/conv2d_transpose_2/bias/m Adam/conv2d_transpose_3/kernel/mAdam/conv2d_transpose_3/bias/m Adam/conv2d_transpose_4/kernel/vAdam/conv2d_transpose_4/bias/vAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/vAdam/conv2d_transpose/kernel/vAdam/conv2d_transpose/bias/v Adam/conv2d_transpose_1/kernel/vAdam/conv2d_transpose_1/bias/v Adam/conv2d_transpose_2/kernel/vAdam/conv2d_transpose_2/bias/v Adam/conv2d_transpose_3/kernel/vAdam/conv2d_transpose_3/bias/v*M
TinF
D2B*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_restore_6754Їт
ј
|
'__inference_conv2d_3_layer_call_fn_6281

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_40142
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs
ў&
ї
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_4128

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3Г
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOp№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЄ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddџ
leaky_re_lu/PartitionedCallPartitionedCallBiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_41192
leaky_re_lu/PartitionedCallЭ
IdentityIdentity$leaky_re_lu/PartitionedCall:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Ў
F__inference_sequential_1_layer_call_and_return_conditional_losses_3886

inputs
conv2d_1_3879
conv2d_1_3881
identityЂ conv2d_1/StatefulPartitionedCall
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_3879conv2d_1_3881*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_38262"
 conv2d_1/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`` * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_38052!
max_pooling2d_1/PartitionedCallЇ
IdentityIdentity(max_pooling2d_1/PartitionedCall:output:0!^conv2d_1/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ`` 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР@::2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџРР@
 
_user_specified_nameinputs


+__inference_sequential_2_layer_call_fn_3987
conv2d_2_input
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_2_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_39802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`` ::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:џџџџџџџџџ`` 
(
_user_specified_nameconv2d_2_input
ЫН
 
?__inference_model_layer_call_and_return_conditional_losses_5395

inputs4
0sequential_conv2d_conv2d_readvariableop_resource5
1sequential_conv2d_biasadd_readvariableop_resource8
4sequential_1_conv2d_1_conv2d_readvariableop_resource9
5sequential_1_conv2d_1_biasadd_readvariableop_resource8
4sequential_2_conv2d_2_conv2d_readvariableop_resource9
5sequential_2_conv2d_2_biasadd_readvariableop_resource8
4sequential_3_conv2d_3_conv2d_readvariableop_resource9
5sequential_3_conv2d_3_biasadd_readvariableop_resourceJ
Fsequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resourceA
=sequential_4_conv2d_transpose_biasadd_readvariableop_resourceL
Hsequential_5_conv2d_transpose_1_conv2d_transpose_readvariableop_resourceC
?sequential_5_conv2d_transpose_1_biasadd_readvariableop_resourceL
Hsequential_6_conv2d_transpose_2_conv2d_transpose_readvariableop_resourceC
?sequential_6_conv2d_transpose_2_biasadd_readvariableop_resourceL
Hsequential_7_conv2d_transpose_3_conv2d_transpose_readvariableop_resourceC
?sequential_7_conv2d_transpose_3_biasadd_readvariableop_resource?
;conv2d_transpose_4_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_4_biasadd_readvariableop_resource
identityЂ)conv2d_transpose_4/BiasAdd/ReadVariableOpЂ2conv2d_transpose_4/conv2d_transpose/ReadVariableOpЂ(sequential/conv2d/BiasAdd/ReadVariableOpЂ'sequential/conv2d/Conv2D/ReadVariableOpЂ,sequential_1/conv2d_1/BiasAdd/ReadVariableOpЂ+sequential_1/conv2d_1/Conv2D/ReadVariableOpЂ,sequential_2/conv2d_2/BiasAdd/ReadVariableOpЂ+sequential_2/conv2d_2/Conv2D/ReadVariableOpЂ,sequential_3/conv2d_3/BiasAdd/ReadVariableOpЂ+sequential_3/conv2d_3/Conv2D/ReadVariableOpЂ4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpЂ=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpЂ6sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOpЂ?sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOpЂ6sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOpЂ?sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOpЂ6sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOpЂ?sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOpЫ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpл
sequential/conv2d/Conv2DConv2Dinputs/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
sequential/conv2d/Conv2DТ
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOpв
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@2
sequential/conv2d/BiasAddЦ
'sequential/conv2d/leaky_re_lu/LeakyRelu	LeakyRelu"sequential/conv2d/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџ@*
alpha%>2)
'sequential/conv2d/leaky_re_lu/LeakyReluѕ
 sequential/max_pooling2d/MaxPoolMaxPool5sequential/conv2d/leaky_re_lu/LeakyRelu:activations:0*1
_output_shapes
:џџџџџџџџџРР@*
ksize
*
paddingVALID*
strides
2"
 sequential/max_pooling2d/MaxPoolз
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOp
sequential_1/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР *
paddingSAME*
strides
2
sequential_1/conv2d_1/Conv2DЮ
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpт
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР 2
sequential_1/conv2d_1/BiasAddв
+sequential_1/conv2d_1/leaky_re_lu/LeakyRelu	LeakyRelu&sequential_1/conv2d_1/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџРР *
alpha%>2-
+sequential_1/conv2d_1/leaky_re_lu/LeakyReluџ
$sequential_1/max_pooling2d_1/MaxPoolMaxPool9sequential_1/conv2d_1/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ`` *
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_1/MaxPoolз
+sequential_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_2/conv2d_2/Conv2D/ReadVariableOp
sequential_2/conv2d_2/Conv2DConv2D-sequential_1/max_pooling2d_1/MaxPool:output:03sequential_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``*
paddingSAME*
strides
2
sequential_2/conv2d_2/Conv2DЮ
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpр
sequential_2/conv2d_2/BiasAddBiasAdd%sequential_2/conv2d_2/Conv2D:output:04sequential_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``2
sequential_2/conv2d_2/BiasAddа
+sequential_2/conv2d_2/leaky_re_lu/LeakyRelu	LeakyRelu&sequential_2/conv2d_2/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ``*
alpha%>2-
+sequential_2/conv2d_2/leaky_re_lu/LeakyReluџ
$sequential_2/max_pooling2d_2/MaxPoolMaxPool9sequential_2/conv2d_2/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ00*
ksize
*
paddingVALID*
strides
2&
$sequential_2/max_pooling2d_2/MaxPoolз
+sequential_3/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+sequential_3/conv2d_3/Conv2D/ReadVariableOp
sequential_3/conv2d_3/Conv2DConv2D-sequential_2/max_pooling2d_2/MaxPool:output:03sequential_3/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
paddingSAME*
strides
2
sequential_3/conv2d_3/Conv2DЮ
,sequential_3/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_3/conv2d_3/BiasAdd/ReadVariableOpр
sequential_3/conv2d_3/BiasAddBiasAdd%sequential_3/conv2d_3/Conv2D:output:04sequential_3/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ002
sequential_3/conv2d_3/BiasAddа
+sequential_3/conv2d_3/leaky_re_lu/LeakyRelu	LeakyRelu&sequential_3/conv2d_3/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ00*
alpha%>2-
+sequential_3/conv2d_3/leaky_re_lu/LeakyReluџ
$sequential_3/max_pooling2d_3/MaxPoolMaxPool9sequential_3/conv2d_3/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2&
$sequential_3/max_pooling2d_3/MaxPoolЇ
#sequential_4/conv2d_transpose/ShapeShape-sequential_3/max_pooling2d_3/MaxPool:output:0*
T0*
_output_shapes
:2%
#sequential_4/conv2d_transpose/ShapeА
1sequential_4/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_4/conv2d_transpose/strided_slice/stackД
3sequential_4/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_4/conv2d_transpose/strided_slice/stack_1Д
3sequential_4/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_4/conv2d_transpose/strided_slice/stack_2
+sequential_4/conv2d_transpose/strided_sliceStridedSlice,sequential_4/conv2d_transpose/Shape:output:0:sequential_4/conv2d_transpose/strided_slice/stack:output:0<sequential_4/conv2d_transpose/strided_slice/stack_1:output:0<sequential_4/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_4/conv2d_transpose/strided_slice
%sequential_4/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_4/conv2d_transpose/stack/1
%sequential_4/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_4/conv2d_transpose/stack/2
%sequential_4/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_4/conv2d_transpose/stack/3Ц
#sequential_4/conv2d_transpose/stackPack4sequential_4/conv2d_transpose/strided_slice:output:0.sequential_4/conv2d_transpose/stack/1:output:0.sequential_4/conv2d_transpose/stack/2:output:0.sequential_4/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_4/conv2d_transpose/stackД
3sequential_4/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_4/conv2d_transpose/strided_slice_1/stackИ
5sequential_4/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_4/conv2d_transpose/strided_slice_1/stack_1И
5sequential_4/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_4/conv2d_transpose/strided_slice_1/stack_2 
-sequential_4/conv2d_transpose/strided_slice_1StridedSlice,sequential_4/conv2d_transpose/stack:output:0<sequential_4/conv2d_transpose/strided_slice_1/stack:output:0>sequential_4/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_4/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_4/conv2d_transpose/strided_slice_1
=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02?
=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp§
.sequential_4/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_4/conv2d_transpose/stack:output:0Esequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0-sequential_3/max_pooling2d_3/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
20
.sequential_4/conv2d_transpose/conv2d_transposeц
4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_4_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp
%sequential_4/conv2d_transpose/BiasAddBiasAdd7sequential_4/conv2d_transpose/conv2d_transpose:output:0<sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2'
%sequential_4/conv2d_transpose/BiasAddш
3sequential_4/conv2d_transpose/leaky_re_lu/LeakyRelu	LeakyRelu.sequential_4/conv2d_transpose/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ*
alpha%>25
3sequential_4/conv2d_transpose/leaky_re_lu/LeakyReluЕ
 sequential_4/up_sampling2d/ShapeShapeAsequential_4/conv2d_transpose/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2"
 sequential_4/up_sampling2d/ShapeЊ
.sequential_4/up_sampling2d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.sequential_4/up_sampling2d/strided_slice/stackЎ
0sequential_4/up_sampling2d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_4/up_sampling2d/strided_slice/stack_1Ў
0sequential_4/up_sampling2d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_4/up_sampling2d/strided_slice/stack_2№
(sequential_4/up_sampling2d/strided_sliceStridedSlice)sequential_4/up_sampling2d/Shape:output:07sequential_4/up_sampling2d/strided_slice/stack:output:09sequential_4/up_sampling2d/strided_slice/stack_1:output:09sequential_4/up_sampling2d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2*
(sequential_4/up_sampling2d/strided_slice
 sequential_4/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2"
 sequential_4/up_sampling2d/ConstЪ
sequential_4/up_sampling2d/mulMul1sequential_4/up_sampling2d/strided_slice:output:0)sequential_4/up_sampling2d/Const:output:0*
T0*
_output_shapes
:2 
sequential_4/up_sampling2d/mulЦ
7sequential_4/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborAsequential_4/conv2d_transpose/leaky_re_lu/LeakyRelu:activations:0"sequential_4/up_sampling2d/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
half_pixel_centers(29
7sequential_4/up_sampling2d/resize/ResizeNearestNeighbort
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis
concatenate/concatConcatV2Hsequential_4/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0-sequential_2/max_pooling2d_2/MaxPool:output:0 concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ002
concatenate/concat
%sequential_5/conv2d_transpose_1/ShapeShapeconcatenate/concat:output:0*
T0*
_output_shapes
:2'
%sequential_5/conv2d_transpose_1/ShapeД
3sequential_5/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_5/conv2d_transpose_1/strided_slice/stackИ
5sequential_5/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_5/conv2d_transpose_1/strided_slice/stack_1И
5sequential_5/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_5/conv2d_transpose_1/strided_slice/stack_2Ђ
-sequential_5/conv2d_transpose_1/strided_sliceStridedSlice.sequential_5/conv2d_transpose_1/Shape:output:0<sequential_5/conv2d_transpose_1/strided_slice/stack:output:0>sequential_5/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_5/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_5/conv2d_transpose_1/strided_slice
'sequential_5/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :02)
'sequential_5/conv2d_transpose_1/stack/1
'sequential_5/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :02)
'sequential_5/conv2d_transpose_1/stack/2
'sequential_5/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_5/conv2d_transpose_1/stack/3в
%sequential_5/conv2d_transpose_1/stackPack6sequential_5/conv2d_transpose_1/strided_slice:output:00sequential_5/conv2d_transpose_1/stack/1:output:00sequential_5/conv2d_transpose_1/stack/2:output:00sequential_5/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_5/conv2d_transpose_1/stackИ
5sequential_5/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_5/conv2d_transpose_1/strided_slice_1/stackМ
7sequential_5/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_5/conv2d_transpose_1/strided_slice_1/stack_1М
7sequential_5/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_5/conv2d_transpose_1/strided_slice_1/stack_2Ќ
/sequential_5/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_5/conv2d_transpose_1/stack:output:0>sequential_5/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_5/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_5/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_5/conv2d_transpose_1/strided_slice_1
?sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_5_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02A
?sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOpѓ
0sequential_5/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_5/conv2d_transpose_1/stack:output:0Gsequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0concatenate/concat:output:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
paddingSAME*
strides
22
0sequential_5/conv2d_transpose_1/conv2d_transposeь
6sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_5_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOp
'sequential_5/conv2d_transpose_1/BiasAddBiasAdd9sequential_5/conv2d_transpose_1/conv2d_transpose:output:0>sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ002)
'sequential_5/conv2d_transpose_1/BiasAddю
5sequential_5/conv2d_transpose_1/leaky_re_lu/LeakyRelu	LeakyRelu0sequential_5/conv2d_transpose_1/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ00*
alpha%>27
5sequential_5/conv2d_transpose_1/leaky_re_lu/LeakyReluЛ
"sequential_5/up_sampling2d_1/ShapeShapeCsequential_5/conv2d_transpose_1/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"sequential_5/up_sampling2d_1/ShapeЎ
0sequential_5/up_sampling2d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_5/up_sampling2d_1/strided_slice/stackВ
2sequential_5/up_sampling2d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_5/up_sampling2d_1/strided_slice/stack_1В
2sequential_5/up_sampling2d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_5/up_sampling2d_1/strided_slice/stack_2ќ
*sequential_5/up_sampling2d_1/strided_sliceStridedSlice+sequential_5/up_sampling2d_1/Shape:output:09sequential_5/up_sampling2d_1/strided_slice/stack:output:0;sequential_5/up_sampling2d_1/strided_slice/stack_1:output:0;sequential_5/up_sampling2d_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*sequential_5/up_sampling2d_1/strided_slice
"sequential_5/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2$
"sequential_5/up_sampling2d_1/Constв
 sequential_5/up_sampling2d_1/mulMul3sequential_5/up_sampling2d_1/strided_slice:output:0+sequential_5/up_sampling2d_1/Const:output:0*
T0*
_output_shapes
:2"
 sequential_5/up_sampling2d_1/mulЮ
9sequential_5/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborCsequential_5/conv2d_transpose_1/leaky_re_lu/LeakyRelu:activations:0$sequential_5/up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ``*
half_pixel_centers(2;
9sequential_5/up_sampling2d_1/resize/ResizeNearestNeighborx
concatenate/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat_1/axis
concatenate/concat_1ConcatV2Jsequential_5/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0-sequential_1/max_pooling2d_1/MaxPool:output:0"concatenate/concat_1/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ``02
concatenate/concat_1
%sequential_6/conv2d_transpose_2/ShapeShapeconcatenate/concat_1:output:0*
T0*
_output_shapes
:2'
%sequential_6/conv2d_transpose_2/ShapeД
3sequential_6/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_6/conv2d_transpose_2/strided_slice/stackИ
5sequential_6/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_6/conv2d_transpose_2/strided_slice/stack_1И
5sequential_6/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_6/conv2d_transpose_2/strided_slice/stack_2Ђ
-sequential_6/conv2d_transpose_2/strided_sliceStridedSlice.sequential_6/conv2d_transpose_2/Shape:output:0<sequential_6/conv2d_transpose_2/strided_slice/stack:output:0>sequential_6/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_6/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_6/conv2d_transpose_2/strided_slice
'sequential_6/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2)
'sequential_6/conv2d_transpose_2/stack/1
'sequential_6/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2)
'sequential_6/conv2d_transpose_2/stack/2
'sequential_6/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_6/conv2d_transpose_2/stack/3в
%sequential_6/conv2d_transpose_2/stackPack6sequential_6/conv2d_transpose_2/strided_slice:output:00sequential_6/conv2d_transpose_2/stack/1:output:00sequential_6/conv2d_transpose_2/stack/2:output:00sequential_6/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_6/conv2d_transpose_2/stackИ
5sequential_6/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_6/conv2d_transpose_2/strided_slice_1/stackМ
7sequential_6/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_6/conv2d_transpose_2/strided_slice_1/stack_1М
7sequential_6/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_6/conv2d_transpose_2/strided_slice_1/stack_2Ќ
/sequential_6/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_6/conv2d_transpose_2/stack:output:0>sequential_6/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_6/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_6/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_6/conv2d_transpose_2/strided_slice_1
?sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_6_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: 0*
dtype02A
?sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOpѕ
0sequential_6/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_6/conv2d_transpose_2/stack:output:0Gsequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0concatenate/concat_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`` *
paddingSAME*
strides
22
0sequential_6/conv2d_transpose_2/conv2d_transposeь
6sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_6_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOp
'sequential_6/conv2d_transpose_2/BiasAddBiasAdd9sequential_6/conv2d_transpose_2/conv2d_transpose:output:0>sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ`` 2)
'sequential_6/conv2d_transpose_2/BiasAddю
5sequential_6/conv2d_transpose_2/leaky_re_lu/LeakyRelu	LeakyRelu0sequential_6/conv2d_transpose_2/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ`` *
alpha%>27
5sequential_6/conv2d_transpose_2/leaky_re_lu/LeakyReluЛ
"sequential_6/up_sampling2d_2/ShapeShapeCsequential_6/conv2d_transpose_2/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"sequential_6/up_sampling2d_2/ShapeЎ
0sequential_6/up_sampling2d_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_6/up_sampling2d_2/strided_slice/stackВ
2sequential_6/up_sampling2d_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_6/up_sampling2d_2/strided_slice/stack_1В
2sequential_6/up_sampling2d_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_6/up_sampling2d_2/strided_slice/stack_2ќ
*sequential_6/up_sampling2d_2/strided_sliceStridedSlice+sequential_6/up_sampling2d_2/Shape:output:09sequential_6/up_sampling2d_2/strided_slice/stack:output:0;sequential_6/up_sampling2d_2/strided_slice/stack_1:output:0;sequential_6/up_sampling2d_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*sequential_6/up_sampling2d_2/strided_slice
"sequential_6/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2$
"sequential_6/up_sampling2d_2/Constв
 sequential_6/up_sampling2d_2/mulMul3sequential_6/up_sampling2d_2/strided_slice:output:0+sequential_6/up_sampling2d_2/Const:output:0*
T0*
_output_shapes
:2"
 sequential_6/up_sampling2d_2/mulа
9sequential_6/up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborCsequential_6/conv2d_transpose_2/leaky_re_lu/LeakyRelu:activations:0$sequential_6/up_sampling2d_2/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџРР *
half_pixel_centers(2;
9sequential_6/up_sampling2d_2/resize/ResizeNearestNeighborx
concatenate/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat_2/axis
concatenate/concat_2ConcatV2Jsequential_6/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0)sequential/max_pooling2d/MaxPool:output:0"concatenate/concat_2/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџРР`2
concatenate/concat_2
%sequential_7/conv2d_transpose_3/ShapeShapeconcatenate/concat_2:output:0*
T0*
_output_shapes
:2'
%sequential_7/conv2d_transpose_3/ShapeД
3sequential_7/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_7/conv2d_transpose_3/strided_slice/stackИ
5sequential_7/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_7/conv2d_transpose_3/strided_slice/stack_1И
5sequential_7/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_7/conv2d_transpose_3/strided_slice/stack_2Ђ
-sequential_7/conv2d_transpose_3/strided_sliceStridedSlice.sequential_7/conv2d_transpose_3/Shape:output:0<sequential_7/conv2d_transpose_3/strided_slice/stack:output:0>sequential_7/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_7/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_7/conv2d_transpose_3/strided_slice
'sequential_7/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :Р2)
'sequential_7/conv2d_transpose_3/stack/1
'sequential_7/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :Р2)
'sequential_7/conv2d_transpose_3/stack/2
'sequential_7/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_7/conv2d_transpose_3/stack/3в
%sequential_7/conv2d_transpose_3/stackPack6sequential_7/conv2d_transpose_3/strided_slice:output:00sequential_7/conv2d_transpose_3/stack/1:output:00sequential_7/conv2d_transpose_3/stack/2:output:00sequential_7/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_7/conv2d_transpose_3/stackИ
5sequential_7/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_7/conv2d_transpose_3/strided_slice_1/stackМ
7sequential_7/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_7/conv2d_transpose_3/strided_slice_1/stack_1М
7sequential_7/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_7/conv2d_transpose_3/strided_slice_1/stack_2Ќ
/sequential_7/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_7/conv2d_transpose_3/stack:output:0>sequential_7/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_7/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_7/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_7/conv2d_transpose_3/strided_slice_1
?sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_7_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@`*
dtype02A
?sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOpї
0sequential_7/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_7/conv2d_transpose_3/stack:output:0Gsequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0concatenate/concat_2:output:0*
T0*1
_output_shapes
:џџџџџџџџџРР@*
paddingSAME*
strides
22
0sequential_7/conv2d_transpose_3/conv2d_transposeь
6sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOp
'sequential_7/conv2d_transpose_3/BiasAddBiasAdd9sequential_7/conv2d_transpose_3/conv2d_transpose:output:0>sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР@2)
'sequential_7/conv2d_transpose_3/BiasAdd№
5sequential_7/conv2d_transpose_3/leaky_re_lu/LeakyRelu	LeakyRelu0sequential_7/conv2d_transpose_3/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџРР@*
alpha%>27
5sequential_7/conv2d_transpose_3/leaky_re_lu/LeakyReluЛ
"sequential_7/up_sampling2d_3/ShapeShapeCsequential_7/conv2d_transpose_3/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"sequential_7/up_sampling2d_3/ShapeЎ
0sequential_7/up_sampling2d_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_7/up_sampling2d_3/strided_slice/stackВ
2sequential_7/up_sampling2d_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_7/up_sampling2d_3/strided_slice/stack_1В
2sequential_7/up_sampling2d_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_7/up_sampling2d_3/strided_slice/stack_2ќ
*sequential_7/up_sampling2d_3/strided_sliceStridedSlice+sequential_7/up_sampling2d_3/Shape:output:09sequential_7/up_sampling2d_3/strided_slice/stack:output:0;sequential_7/up_sampling2d_3/strided_slice/stack_1:output:0;sequential_7/up_sampling2d_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*sequential_7/up_sampling2d_3/strided_slice
"sequential_7/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2$
"sequential_7/up_sampling2d_3/Constв
 sequential_7/up_sampling2d_3/mulMul3sequential_7/up_sampling2d_3/strided_slice:output:0+sequential_7/up_sampling2d_3/Const:output:0*
T0*
_output_shapes
:2"
 sequential_7/up_sampling2d_3/mulа
9sequential_7/up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighborCsequential_7/conv2d_transpose_3/leaky_re_lu/LeakyRelu:activations:0$sequential_7/up_sampling2d_3/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
half_pixel_centers(2;
9sequential_7/up_sampling2d_3/resize/ResizeNearestNeighborx
concatenate/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat_3/axisѕ
concatenate/concat_3ConcatV2Jsequential_7/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0inputs"concatenate/concat_3/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџA2
concatenate/concat_3
conv2d_transpose_4/ShapeShapeconcatenate/concat_3:output:0*
T0*
_output_shapes
:2
conv2d_transpose_4/Shape
&conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_4/strided_slice/stack
(conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_1
(conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_2д
 conv2d_transpose_4/strided_sliceStridedSlice!conv2d_transpose_4/Shape:output:0/conv2d_transpose_4/strided_slice/stack:output:01conv2d_transpose_4/strided_slice/stack_1:output:01conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_4/strided_slice{
conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_4/stack/1{
conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_4/stack/2z
conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_4/stack/3
conv2d_transpose_4/stackPack)conv2d_transpose_4/strided_slice:output:0#conv2d_transpose_4/stack/1:output:0#conv2d_transpose_4/stack/2:output:0#conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_4/stack
(conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_4/strided_slice_1/stackЂ
*conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_1Ђ
*conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_2о
"conv2d_transpose_4/strided_slice_1StridedSlice!conv2d_transpose_4/stack:output:01conv2d_transpose_4/strided_slice_1/stack:output:03conv2d_transpose_4/strided_slice_1/stack_1:output:03conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_4/strided_slice_1ь
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:A*
dtype024
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpУ
#conv2d_transpose_4/conv2d_transposeConv2DBackpropInput!conv2d_transpose_4/stack:output:0:conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0concatenate/concat_3:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2%
#conv2d_transpose_4/conv2d_transposeХ
)conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_4/BiasAdd/ReadVariableOpр
conv2d_transpose_4/BiasAddBiasAdd,conv2d_transpose_4/conv2d_transpose:output:01conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ2
conv2d_transpose_4/BiasAddЩ
(conv2d_transpose_4/leaky_re_lu/LeakyRelu	LeakyRelu#conv2d_transpose_4/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџ*
alpha%>2*
(conv2d_transpose_4/leaky_re_lu/LeakyReluЩ
IdentityIdentity6conv2d_transpose_4/leaky_re_lu/LeakyRelu:activations:0*^conv2d_transpose_4/BiasAdd/ReadVariableOp3^conv2d_transpose_4/conv2d_transpose/ReadVariableOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_2/conv2d_2/BiasAdd/ReadVariableOp,^sequential_2/conv2d_2/Conv2D/ReadVariableOp-^sequential_3/conv2d_3/BiasAdd/ReadVariableOp,^sequential_3/conv2d_3/Conv2D/ReadVariableOp5^sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:џџџџџџџџџ::::::::::::::::::2V
)conv2d_transpose_4/BiasAdd/ReadVariableOp)conv2d_transpose_4/BiasAdd/ReadVariableOp2h
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_2/BiasAdd/ReadVariableOp,sequential_2/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_2/Conv2D/ReadVariableOp+sequential_2/conv2d_2/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_3/BiasAdd/ReadVariableOp,sequential_3/conv2d_3/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_3/Conv2D/ReadVariableOp+sequential_3/conv2d_3/Conv2D/ReadVariableOp2l
4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOp2
?sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOp2
?sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOp2
?sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


+__inference_sequential_1_layer_call_fn_5737

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`` *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_38862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ`` 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР@::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџРР@
 
_user_specified_nameinputs
Ч-
З
F__inference_sequential_4_layer_call_and_return_conditional_losses_5853

inputs=
9conv2d_transpose_conv2d_transpose_readvariableop_resource4
0conv2d_transpose_biasadd_readvariableop_resource
identityЂ'conv2d_transpose/BiasAdd/ReadVariableOpЂ0conv2d_transpose/conv2d_transpose/ReadVariableOpf
conv2d_transpose/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose/Shape
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$conv2d_transpose/strided_slice/stack
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_1
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_2Ш
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
conv2d_transpose/strided_slicev
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/1v
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/2v
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/3ј
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose/stack
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose/strided_slice_1/stack
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_1
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_2в
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose/strided_slice_1ц
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype022
0conv2d_transpose/conv2d_transpose/ReadVariableOpЂ
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2#
!conv2d_transpose/conv2d_transposeП
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'conv2d_transpose/BiasAdd/ReadVariableOpж
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_transpose/BiasAddС
&conv2d_transpose/leaky_re_lu/LeakyRelu	LeakyRelu!conv2d_transpose/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ*
alpha%>2(
&conv2d_transpose/leaky_re_lu/LeakyRelu
up_sampling2d/ShapeShape4conv2d_transpose/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2
up_sampling2d/Shape
!up_sampling2d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!up_sampling2d/strided_slice/stack
#up_sampling2d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d/strided_slice/stack_1
#up_sampling2d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d/strided_slice/stack_2Ђ
up_sampling2d/strided_sliceStridedSliceup_sampling2d/Shape:output:0*up_sampling2d/strided_slice/stack:output:0,up_sampling2d/strided_slice/stack_1:output:0,up_sampling2d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d/strided_slice{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const
up_sampling2d/mulMul$up_sampling2d/strided_slice:output:0up_sampling2d/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d/mul
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor4conv2d_transpose/leaky_re_lu/LeakyRelu:activations:0up_sampling2d/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighborє
IdentityIdentity;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ::2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

o
E__inference_concatenate_layer_call_and_return_conditional_losses_4912

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџA2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:џџџџџџџџџA2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:YU
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
/
П
F__inference_sequential_6_layer_call_and_return_conditional_losses_6101

inputs?
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_2_biasadd_readvariableop_resource
identityЂ)conv2d_transpose_2/BiasAdd/ReadVariableOpЂ2conv2d_transpose_2/conv2d_transpose/ReadVariableOpj
conv2d_transpose_2/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_2/Shape
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_2/strided_slice/stack
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_1
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_2д
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_2/strided_slicez
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_2/stack/1z
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_2/stack/2z
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_2/stack/3
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_2/stack
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_2/strided_slice_1/stackЂ
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_1Ђ
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_2о
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_2/strided_slice_1ь
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: 0*
dtype024
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpЊ
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:џџџџџџџџџ`` *
paddingSAME*
strides
2%
#conv2d_transpose_2/conv2d_transposeХ
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)conv2d_transpose_2/BiasAdd/ReadVariableOpо
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ`` 2
conv2d_transpose_2/BiasAddЧ
(conv2d_transpose_2/leaky_re_lu/LeakyRelu	LeakyRelu#conv2d_transpose_2/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ`` *
alpha%>2*
(conv2d_transpose_2/leaky_re_lu/LeakyRelu
up_sampling2d_2/ShapeShape6conv2d_transpose_2/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_2/Shape
#up_sampling2d_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d_2/strided_slice/stack
%up_sampling2d_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_2/strided_slice/stack_1
%up_sampling2d_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_2/strided_slice/stack_2Ў
up_sampling2d_2/strided_sliceStridedSliceup_sampling2d_2/Shape:output:0,up_sampling2d_2/strided_slice/stack:output:0.up_sampling2d_2/strided_slice/stack_1:output:0.up_sampling2d_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d_2/strided_slice
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const
up_sampling2d_2/mulMul&up_sampling2d_2/strided_slice:output:0up_sampling2d_2/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mul
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighbor6conv2d_transpose_2/leaky_re_lu/LeakyRelu:activations:0up_sampling2d_2/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџРР *
half_pixel_centers(2.
,up_sampling2d_2/resize/ResizeNearestNeighborќ
IdentityIdentity=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџРР 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ``0::2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ``0
 
_user_specified_nameinputs
З
a
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_4254

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%>2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ќ
ё
$__inference_model_layer_call_fn_5168
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_51292
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:џџџџџџџџџ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1

й
@__inference_conv2d_layer_call_and_return_conditional_losses_6212

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЅ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@2	
BiasAdd
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*1
_output_shapes
:џџџџџџџџџ@*
alpha%>2
leaky_re_lu/LeakyReluВ
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
џ
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3899

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Ў
F__inference_sequential_1_layer_call_and_return_conditional_losses_3867

inputs
conv2d_1_3860
conv2d_1_3862
identityЂ conv2d_1/StatefulPartitionedCall
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_3860conv2d_1_3862*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_38262"
 conv2d_1/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`` * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_38052!
max_pooling2d_1/PartitionedCallЇ
IdentityIdentity(max_pooling2d_1/PartitionedCall:output:0!^conv2d_1/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ`` 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР@::2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџРР@
 
_user_specified_nameinputs
ЫН
 
?__inference_model_layer_call_and_return_conditional_losses_5571

inputs4
0sequential_conv2d_conv2d_readvariableop_resource5
1sequential_conv2d_biasadd_readvariableop_resource8
4sequential_1_conv2d_1_conv2d_readvariableop_resource9
5sequential_1_conv2d_1_biasadd_readvariableop_resource8
4sequential_2_conv2d_2_conv2d_readvariableop_resource9
5sequential_2_conv2d_2_biasadd_readvariableop_resource8
4sequential_3_conv2d_3_conv2d_readvariableop_resource9
5sequential_3_conv2d_3_biasadd_readvariableop_resourceJ
Fsequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resourceA
=sequential_4_conv2d_transpose_biasadd_readvariableop_resourceL
Hsequential_5_conv2d_transpose_1_conv2d_transpose_readvariableop_resourceC
?sequential_5_conv2d_transpose_1_biasadd_readvariableop_resourceL
Hsequential_6_conv2d_transpose_2_conv2d_transpose_readvariableop_resourceC
?sequential_6_conv2d_transpose_2_biasadd_readvariableop_resourceL
Hsequential_7_conv2d_transpose_3_conv2d_transpose_readvariableop_resourceC
?sequential_7_conv2d_transpose_3_biasadd_readvariableop_resource?
;conv2d_transpose_4_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_4_biasadd_readvariableop_resource
identityЂ)conv2d_transpose_4/BiasAdd/ReadVariableOpЂ2conv2d_transpose_4/conv2d_transpose/ReadVariableOpЂ(sequential/conv2d/BiasAdd/ReadVariableOpЂ'sequential/conv2d/Conv2D/ReadVariableOpЂ,sequential_1/conv2d_1/BiasAdd/ReadVariableOpЂ+sequential_1/conv2d_1/Conv2D/ReadVariableOpЂ,sequential_2/conv2d_2/BiasAdd/ReadVariableOpЂ+sequential_2/conv2d_2/Conv2D/ReadVariableOpЂ,sequential_3/conv2d_3/BiasAdd/ReadVariableOpЂ+sequential_3/conv2d_3/Conv2D/ReadVariableOpЂ4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpЂ=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpЂ6sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOpЂ?sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOpЂ6sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOpЂ?sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOpЂ6sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOpЂ?sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOpЫ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpл
sequential/conv2d/Conv2DConv2Dinputs/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
sequential/conv2d/Conv2DТ
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOpв
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@2
sequential/conv2d/BiasAddЦ
'sequential/conv2d/leaky_re_lu/LeakyRelu	LeakyRelu"sequential/conv2d/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџ@*
alpha%>2)
'sequential/conv2d/leaky_re_lu/LeakyReluѕ
 sequential/max_pooling2d/MaxPoolMaxPool5sequential/conv2d/leaky_re_lu/LeakyRelu:activations:0*1
_output_shapes
:џџџџџџџџџРР@*
ksize
*
paddingVALID*
strides
2"
 sequential/max_pooling2d/MaxPoolз
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOp
sequential_1/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР *
paddingSAME*
strides
2
sequential_1/conv2d_1/Conv2DЮ
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpт
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР 2
sequential_1/conv2d_1/BiasAddв
+sequential_1/conv2d_1/leaky_re_lu/LeakyRelu	LeakyRelu&sequential_1/conv2d_1/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџРР *
alpha%>2-
+sequential_1/conv2d_1/leaky_re_lu/LeakyReluџ
$sequential_1/max_pooling2d_1/MaxPoolMaxPool9sequential_1/conv2d_1/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ`` *
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_1/MaxPoolз
+sequential_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_2/conv2d_2/Conv2D/ReadVariableOp
sequential_2/conv2d_2/Conv2DConv2D-sequential_1/max_pooling2d_1/MaxPool:output:03sequential_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``*
paddingSAME*
strides
2
sequential_2/conv2d_2/Conv2DЮ
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_2/conv2d_2/BiasAdd/ReadVariableOpр
sequential_2/conv2d_2/BiasAddBiasAdd%sequential_2/conv2d_2/Conv2D:output:04sequential_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``2
sequential_2/conv2d_2/BiasAddа
+sequential_2/conv2d_2/leaky_re_lu/LeakyRelu	LeakyRelu&sequential_2/conv2d_2/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ``*
alpha%>2-
+sequential_2/conv2d_2/leaky_re_lu/LeakyReluџ
$sequential_2/max_pooling2d_2/MaxPoolMaxPool9sequential_2/conv2d_2/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ00*
ksize
*
paddingVALID*
strides
2&
$sequential_2/max_pooling2d_2/MaxPoolз
+sequential_3/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+sequential_3/conv2d_3/Conv2D/ReadVariableOp
sequential_3/conv2d_3/Conv2DConv2D-sequential_2/max_pooling2d_2/MaxPool:output:03sequential_3/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
paddingSAME*
strides
2
sequential_3/conv2d_3/Conv2DЮ
,sequential_3/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_3/conv2d_3/BiasAdd/ReadVariableOpр
sequential_3/conv2d_3/BiasAddBiasAdd%sequential_3/conv2d_3/Conv2D:output:04sequential_3/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ002
sequential_3/conv2d_3/BiasAddа
+sequential_3/conv2d_3/leaky_re_lu/LeakyRelu	LeakyRelu&sequential_3/conv2d_3/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ00*
alpha%>2-
+sequential_3/conv2d_3/leaky_re_lu/LeakyReluџ
$sequential_3/max_pooling2d_3/MaxPoolMaxPool9sequential_3/conv2d_3/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2&
$sequential_3/max_pooling2d_3/MaxPoolЇ
#sequential_4/conv2d_transpose/ShapeShape-sequential_3/max_pooling2d_3/MaxPool:output:0*
T0*
_output_shapes
:2%
#sequential_4/conv2d_transpose/ShapeА
1sequential_4/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_4/conv2d_transpose/strided_slice/stackД
3sequential_4/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_4/conv2d_transpose/strided_slice/stack_1Д
3sequential_4/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_4/conv2d_transpose/strided_slice/stack_2
+sequential_4/conv2d_transpose/strided_sliceStridedSlice,sequential_4/conv2d_transpose/Shape:output:0:sequential_4/conv2d_transpose/strided_slice/stack:output:0<sequential_4/conv2d_transpose/strided_slice/stack_1:output:0<sequential_4/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_4/conv2d_transpose/strided_slice
%sequential_4/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_4/conv2d_transpose/stack/1
%sequential_4/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_4/conv2d_transpose/stack/2
%sequential_4/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_4/conv2d_transpose/stack/3Ц
#sequential_4/conv2d_transpose/stackPack4sequential_4/conv2d_transpose/strided_slice:output:0.sequential_4/conv2d_transpose/stack/1:output:0.sequential_4/conv2d_transpose/stack/2:output:0.sequential_4/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_4/conv2d_transpose/stackД
3sequential_4/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_4/conv2d_transpose/strided_slice_1/stackИ
5sequential_4/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_4/conv2d_transpose/strided_slice_1/stack_1И
5sequential_4/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_4/conv2d_transpose/strided_slice_1/stack_2 
-sequential_4/conv2d_transpose/strided_slice_1StridedSlice,sequential_4/conv2d_transpose/stack:output:0<sequential_4/conv2d_transpose/strided_slice_1/stack:output:0>sequential_4/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_4/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_4/conv2d_transpose/strided_slice_1
=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02?
=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp§
.sequential_4/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_4/conv2d_transpose/stack:output:0Esequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0-sequential_3/max_pooling2d_3/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
20
.sequential_4/conv2d_transpose/conv2d_transposeц
4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_4_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp
%sequential_4/conv2d_transpose/BiasAddBiasAdd7sequential_4/conv2d_transpose/conv2d_transpose:output:0<sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2'
%sequential_4/conv2d_transpose/BiasAddш
3sequential_4/conv2d_transpose/leaky_re_lu/LeakyRelu	LeakyRelu.sequential_4/conv2d_transpose/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ*
alpha%>25
3sequential_4/conv2d_transpose/leaky_re_lu/LeakyReluЕ
 sequential_4/up_sampling2d/ShapeShapeAsequential_4/conv2d_transpose/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2"
 sequential_4/up_sampling2d/ShapeЊ
.sequential_4/up_sampling2d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.sequential_4/up_sampling2d/strided_slice/stackЎ
0sequential_4/up_sampling2d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_4/up_sampling2d/strided_slice/stack_1Ў
0sequential_4/up_sampling2d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_4/up_sampling2d/strided_slice/stack_2№
(sequential_4/up_sampling2d/strided_sliceStridedSlice)sequential_4/up_sampling2d/Shape:output:07sequential_4/up_sampling2d/strided_slice/stack:output:09sequential_4/up_sampling2d/strided_slice/stack_1:output:09sequential_4/up_sampling2d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2*
(sequential_4/up_sampling2d/strided_slice
 sequential_4/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2"
 sequential_4/up_sampling2d/ConstЪ
sequential_4/up_sampling2d/mulMul1sequential_4/up_sampling2d/strided_slice:output:0)sequential_4/up_sampling2d/Const:output:0*
T0*
_output_shapes
:2 
sequential_4/up_sampling2d/mulЦ
7sequential_4/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborAsequential_4/conv2d_transpose/leaky_re_lu/LeakyRelu:activations:0"sequential_4/up_sampling2d/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
half_pixel_centers(29
7sequential_4/up_sampling2d/resize/ResizeNearestNeighbort
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis
concatenate/concatConcatV2Hsequential_4/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0-sequential_2/max_pooling2d_2/MaxPool:output:0 concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ002
concatenate/concat
%sequential_5/conv2d_transpose_1/ShapeShapeconcatenate/concat:output:0*
T0*
_output_shapes
:2'
%sequential_5/conv2d_transpose_1/ShapeД
3sequential_5/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_5/conv2d_transpose_1/strided_slice/stackИ
5sequential_5/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_5/conv2d_transpose_1/strided_slice/stack_1И
5sequential_5/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_5/conv2d_transpose_1/strided_slice/stack_2Ђ
-sequential_5/conv2d_transpose_1/strided_sliceStridedSlice.sequential_5/conv2d_transpose_1/Shape:output:0<sequential_5/conv2d_transpose_1/strided_slice/stack:output:0>sequential_5/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_5/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_5/conv2d_transpose_1/strided_slice
'sequential_5/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :02)
'sequential_5/conv2d_transpose_1/stack/1
'sequential_5/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :02)
'sequential_5/conv2d_transpose_1/stack/2
'sequential_5/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_5/conv2d_transpose_1/stack/3в
%sequential_5/conv2d_transpose_1/stackPack6sequential_5/conv2d_transpose_1/strided_slice:output:00sequential_5/conv2d_transpose_1/stack/1:output:00sequential_5/conv2d_transpose_1/stack/2:output:00sequential_5/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_5/conv2d_transpose_1/stackИ
5sequential_5/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_5/conv2d_transpose_1/strided_slice_1/stackМ
7sequential_5/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_5/conv2d_transpose_1/strided_slice_1/stack_1М
7sequential_5/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_5/conv2d_transpose_1/strided_slice_1/stack_2Ќ
/sequential_5/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_5/conv2d_transpose_1/stack:output:0>sequential_5/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_5/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_5/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_5/conv2d_transpose_1/strided_slice_1
?sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_5_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02A
?sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOpѓ
0sequential_5/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_5/conv2d_transpose_1/stack:output:0Gsequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0concatenate/concat:output:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
paddingSAME*
strides
22
0sequential_5/conv2d_transpose_1/conv2d_transposeь
6sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_5_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOp
'sequential_5/conv2d_transpose_1/BiasAddBiasAdd9sequential_5/conv2d_transpose_1/conv2d_transpose:output:0>sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ002)
'sequential_5/conv2d_transpose_1/BiasAddю
5sequential_5/conv2d_transpose_1/leaky_re_lu/LeakyRelu	LeakyRelu0sequential_5/conv2d_transpose_1/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ00*
alpha%>27
5sequential_5/conv2d_transpose_1/leaky_re_lu/LeakyReluЛ
"sequential_5/up_sampling2d_1/ShapeShapeCsequential_5/conv2d_transpose_1/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"sequential_5/up_sampling2d_1/ShapeЎ
0sequential_5/up_sampling2d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_5/up_sampling2d_1/strided_slice/stackВ
2sequential_5/up_sampling2d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_5/up_sampling2d_1/strided_slice/stack_1В
2sequential_5/up_sampling2d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_5/up_sampling2d_1/strided_slice/stack_2ќ
*sequential_5/up_sampling2d_1/strided_sliceStridedSlice+sequential_5/up_sampling2d_1/Shape:output:09sequential_5/up_sampling2d_1/strided_slice/stack:output:0;sequential_5/up_sampling2d_1/strided_slice/stack_1:output:0;sequential_5/up_sampling2d_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*sequential_5/up_sampling2d_1/strided_slice
"sequential_5/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2$
"sequential_5/up_sampling2d_1/Constв
 sequential_5/up_sampling2d_1/mulMul3sequential_5/up_sampling2d_1/strided_slice:output:0+sequential_5/up_sampling2d_1/Const:output:0*
T0*
_output_shapes
:2"
 sequential_5/up_sampling2d_1/mulЮ
9sequential_5/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborCsequential_5/conv2d_transpose_1/leaky_re_lu/LeakyRelu:activations:0$sequential_5/up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ``*
half_pixel_centers(2;
9sequential_5/up_sampling2d_1/resize/ResizeNearestNeighborx
concatenate/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat_1/axis
concatenate/concat_1ConcatV2Jsequential_5/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0-sequential_1/max_pooling2d_1/MaxPool:output:0"concatenate/concat_1/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ``02
concatenate/concat_1
%sequential_6/conv2d_transpose_2/ShapeShapeconcatenate/concat_1:output:0*
T0*
_output_shapes
:2'
%sequential_6/conv2d_transpose_2/ShapeД
3sequential_6/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_6/conv2d_transpose_2/strided_slice/stackИ
5sequential_6/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_6/conv2d_transpose_2/strided_slice/stack_1И
5sequential_6/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_6/conv2d_transpose_2/strided_slice/stack_2Ђ
-sequential_6/conv2d_transpose_2/strided_sliceStridedSlice.sequential_6/conv2d_transpose_2/Shape:output:0<sequential_6/conv2d_transpose_2/strided_slice/stack:output:0>sequential_6/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_6/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_6/conv2d_transpose_2/strided_slice
'sequential_6/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2)
'sequential_6/conv2d_transpose_2/stack/1
'sequential_6/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2)
'sequential_6/conv2d_transpose_2/stack/2
'sequential_6/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_6/conv2d_transpose_2/stack/3в
%sequential_6/conv2d_transpose_2/stackPack6sequential_6/conv2d_transpose_2/strided_slice:output:00sequential_6/conv2d_transpose_2/stack/1:output:00sequential_6/conv2d_transpose_2/stack/2:output:00sequential_6/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_6/conv2d_transpose_2/stackИ
5sequential_6/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_6/conv2d_transpose_2/strided_slice_1/stackМ
7sequential_6/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_6/conv2d_transpose_2/strided_slice_1/stack_1М
7sequential_6/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_6/conv2d_transpose_2/strided_slice_1/stack_2Ќ
/sequential_6/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_6/conv2d_transpose_2/stack:output:0>sequential_6/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_6/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_6/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_6/conv2d_transpose_2/strided_slice_1
?sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_6_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: 0*
dtype02A
?sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOpѕ
0sequential_6/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_6/conv2d_transpose_2/stack:output:0Gsequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0concatenate/concat_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`` *
paddingSAME*
strides
22
0sequential_6/conv2d_transpose_2/conv2d_transposeь
6sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_6_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOp
'sequential_6/conv2d_transpose_2/BiasAddBiasAdd9sequential_6/conv2d_transpose_2/conv2d_transpose:output:0>sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ`` 2)
'sequential_6/conv2d_transpose_2/BiasAddю
5sequential_6/conv2d_transpose_2/leaky_re_lu/LeakyRelu	LeakyRelu0sequential_6/conv2d_transpose_2/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ`` *
alpha%>27
5sequential_6/conv2d_transpose_2/leaky_re_lu/LeakyReluЛ
"sequential_6/up_sampling2d_2/ShapeShapeCsequential_6/conv2d_transpose_2/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"sequential_6/up_sampling2d_2/ShapeЎ
0sequential_6/up_sampling2d_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_6/up_sampling2d_2/strided_slice/stackВ
2sequential_6/up_sampling2d_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_6/up_sampling2d_2/strided_slice/stack_1В
2sequential_6/up_sampling2d_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_6/up_sampling2d_2/strided_slice/stack_2ќ
*sequential_6/up_sampling2d_2/strided_sliceStridedSlice+sequential_6/up_sampling2d_2/Shape:output:09sequential_6/up_sampling2d_2/strided_slice/stack:output:0;sequential_6/up_sampling2d_2/strided_slice/stack_1:output:0;sequential_6/up_sampling2d_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*sequential_6/up_sampling2d_2/strided_slice
"sequential_6/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2$
"sequential_6/up_sampling2d_2/Constв
 sequential_6/up_sampling2d_2/mulMul3sequential_6/up_sampling2d_2/strided_slice:output:0+sequential_6/up_sampling2d_2/Const:output:0*
T0*
_output_shapes
:2"
 sequential_6/up_sampling2d_2/mulа
9sequential_6/up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborCsequential_6/conv2d_transpose_2/leaky_re_lu/LeakyRelu:activations:0$sequential_6/up_sampling2d_2/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџРР *
half_pixel_centers(2;
9sequential_6/up_sampling2d_2/resize/ResizeNearestNeighborx
concatenate/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat_2/axis
concatenate/concat_2ConcatV2Jsequential_6/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0)sequential/max_pooling2d/MaxPool:output:0"concatenate/concat_2/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџРР`2
concatenate/concat_2
%sequential_7/conv2d_transpose_3/ShapeShapeconcatenate/concat_2:output:0*
T0*
_output_shapes
:2'
%sequential_7/conv2d_transpose_3/ShapeД
3sequential_7/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_7/conv2d_transpose_3/strided_slice/stackИ
5sequential_7/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_7/conv2d_transpose_3/strided_slice/stack_1И
5sequential_7/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_7/conv2d_transpose_3/strided_slice/stack_2Ђ
-sequential_7/conv2d_transpose_3/strided_sliceStridedSlice.sequential_7/conv2d_transpose_3/Shape:output:0<sequential_7/conv2d_transpose_3/strided_slice/stack:output:0>sequential_7/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_7/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_7/conv2d_transpose_3/strided_slice
'sequential_7/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :Р2)
'sequential_7/conv2d_transpose_3/stack/1
'sequential_7/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :Р2)
'sequential_7/conv2d_transpose_3/stack/2
'sequential_7/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_7/conv2d_transpose_3/stack/3в
%sequential_7/conv2d_transpose_3/stackPack6sequential_7/conv2d_transpose_3/strided_slice:output:00sequential_7/conv2d_transpose_3/stack/1:output:00sequential_7/conv2d_transpose_3/stack/2:output:00sequential_7/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_7/conv2d_transpose_3/stackИ
5sequential_7/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_7/conv2d_transpose_3/strided_slice_1/stackМ
7sequential_7/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_7/conv2d_transpose_3/strided_slice_1/stack_1М
7sequential_7/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_7/conv2d_transpose_3/strided_slice_1/stack_2Ќ
/sequential_7/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_7/conv2d_transpose_3/stack:output:0>sequential_7/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_7/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_7/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_7/conv2d_transpose_3/strided_slice_1
?sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_7_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@`*
dtype02A
?sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOpї
0sequential_7/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_7/conv2d_transpose_3/stack:output:0Gsequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0concatenate/concat_2:output:0*
T0*1
_output_shapes
:џџџџџџџџџРР@*
paddingSAME*
strides
22
0sequential_7/conv2d_transpose_3/conv2d_transposeь
6sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOp
'sequential_7/conv2d_transpose_3/BiasAddBiasAdd9sequential_7/conv2d_transpose_3/conv2d_transpose:output:0>sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР@2)
'sequential_7/conv2d_transpose_3/BiasAdd№
5sequential_7/conv2d_transpose_3/leaky_re_lu/LeakyRelu	LeakyRelu0sequential_7/conv2d_transpose_3/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџРР@*
alpha%>27
5sequential_7/conv2d_transpose_3/leaky_re_lu/LeakyReluЛ
"sequential_7/up_sampling2d_3/ShapeShapeCsequential_7/conv2d_transpose_3/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2$
"sequential_7/up_sampling2d_3/ShapeЎ
0sequential_7/up_sampling2d_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_7/up_sampling2d_3/strided_slice/stackВ
2sequential_7/up_sampling2d_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_7/up_sampling2d_3/strided_slice/stack_1В
2sequential_7/up_sampling2d_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_7/up_sampling2d_3/strided_slice/stack_2ќ
*sequential_7/up_sampling2d_3/strided_sliceStridedSlice+sequential_7/up_sampling2d_3/Shape:output:09sequential_7/up_sampling2d_3/strided_slice/stack:output:0;sequential_7/up_sampling2d_3/strided_slice/stack_1:output:0;sequential_7/up_sampling2d_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*sequential_7/up_sampling2d_3/strided_slice
"sequential_7/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2$
"sequential_7/up_sampling2d_3/Constв
 sequential_7/up_sampling2d_3/mulMul3sequential_7/up_sampling2d_3/strided_slice:output:0+sequential_7/up_sampling2d_3/Const:output:0*
T0*
_output_shapes
:2"
 sequential_7/up_sampling2d_3/mulа
9sequential_7/up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighborCsequential_7/conv2d_transpose_3/leaky_re_lu/LeakyRelu:activations:0$sequential_7/up_sampling2d_3/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
half_pixel_centers(2;
9sequential_7/up_sampling2d_3/resize/ResizeNearestNeighborx
concatenate/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat_3/axisѕ
concatenate/concat_3ConcatV2Jsequential_7/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0inputs"concatenate/concat_3/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџA2
concatenate/concat_3
conv2d_transpose_4/ShapeShapeconcatenate/concat_3:output:0*
T0*
_output_shapes
:2
conv2d_transpose_4/Shape
&conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_4/strided_slice/stack
(conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_1
(conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_2д
 conv2d_transpose_4/strided_sliceStridedSlice!conv2d_transpose_4/Shape:output:0/conv2d_transpose_4/strided_slice/stack:output:01conv2d_transpose_4/strided_slice/stack_1:output:01conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_4/strided_slice{
conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_4/stack/1{
conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_4/stack/2z
conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_4/stack/3
conv2d_transpose_4/stackPack)conv2d_transpose_4/strided_slice:output:0#conv2d_transpose_4/stack/1:output:0#conv2d_transpose_4/stack/2:output:0#conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_4/stack
(conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_4/strided_slice_1/stackЂ
*conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_1Ђ
*conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_2о
"conv2d_transpose_4/strided_slice_1StridedSlice!conv2d_transpose_4/stack:output:01conv2d_transpose_4/strided_slice_1/stack:output:03conv2d_transpose_4/strided_slice_1/stack_1:output:03conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_4/strided_slice_1ь
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:A*
dtype024
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpУ
#conv2d_transpose_4/conv2d_transposeConv2DBackpropInput!conv2d_transpose_4/stack:output:0:conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0concatenate/concat_3:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2%
#conv2d_transpose_4/conv2d_transposeХ
)conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_4/BiasAdd/ReadVariableOpр
conv2d_transpose_4/BiasAddBiasAdd,conv2d_transpose_4/conv2d_transpose:output:01conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ2
conv2d_transpose_4/BiasAddЩ
(conv2d_transpose_4/leaky_re_lu/LeakyRelu	LeakyRelu#conv2d_transpose_4/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџ*
alpha%>2*
(conv2d_transpose_4/leaky_re_lu/LeakyReluЩ
IdentityIdentity6conv2d_transpose_4/leaky_re_lu/LeakyRelu:activations:0*^conv2d_transpose_4/BiasAdd/ReadVariableOp3^conv2d_transpose_4/conv2d_transpose/ReadVariableOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_2/conv2d_2/BiasAdd/ReadVariableOp,^sequential_2/conv2d_2/Conv2D/ReadVariableOp-^sequential_3/conv2d_3/BiasAdd/ReadVariableOp,^sequential_3/conv2d_3/Conv2D/ReadVariableOp5^sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:џџџџџџџџџ::::::::::::::::::2V
)conv2d_transpose_4/BiasAdd/ReadVariableOp)conv2d_transpose_4/BiasAdd/ReadVariableOp2h
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_2/BiasAdd/ReadVariableOp,sequential_2/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_2/Conv2D/ReadVariableOp+sequential_2/conv2d_2/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_3/BiasAdd/ReadVariableOp,sequential_3/conv2d_3/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_3/Conv2D/ReadVariableOp+sequential_3/conv2d_3/Conv2D/ReadVariableOp2l
4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOp2
?sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOp2
?sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOp2
?sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѕ

+__inference_sequential_4_layer_call_fn_5894

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_41912
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Љ
J
.__inference_up_sampling2d_1_layer_call_fn_4291

inputs
identityъ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_42852
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

e
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_4553

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ю
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulе
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(2
resize/ResizeNearestNeighborЄ
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
м

F__inference_sequential_1_layer_call_and_return_conditional_losses_5707

inputs+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identityЂconv2d_1/BiasAdd/ReadVariableOpЂconv2d_1/Conv2D/ReadVariableOpА
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02 
conv2d_1/Conv2D/ReadVariableOpР
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР *
paddingSAME*
strides
2
conv2d_1/Conv2DЇ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpЎ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР 2
conv2d_1/BiasAddЋ
conv2d_1/leaky_re_lu/LeakyRelu	LeakyReluconv2d_1/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџРР *
alpha%>2 
conv2d_1/leaky_re_lu/LeakyReluи
max_pooling2d_1/MaxPoolMaxPool,conv2d_1/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ`` *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolП
IdentityIdentity max_pooling2d_1/MaxPool:output:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ`` 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР@::2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџРР@
 
_user_specified_nameinputs

Ц
F__inference_sequential_4_layer_call_and_return_conditional_losses_4191

inputs
conv2d_transpose_4184
conv2d_transpose_4186
identityЂ(conv2d_transpose/StatefulPartitionedCallа
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_4184conv2d_transpose_4186*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_41282*
(conv2d_transpose/StatefulPartitionedCallІ
up_sampling2d/PartitionedCallPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_41512
up_sampling2d/PartitionedCallП
IdentityIdentity&up_sampling2d/PartitionedCall:output:0)^conv2d_transpose/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ::2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


+__inference_sequential_3_layer_call_fn_4062
conv2d_3_input
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_40552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:џџџџџџџџџ00
(
_user_specified_nameconv2d_3_input
Љ
J
.__inference_max_pooling2d_1_layer_call_fn_3811

inputs
identityъ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_38052
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ

Ў
F__inference_sequential_3_layer_call_and_return_conditional_losses_4074

inputs
conv2d_3_4067
conv2d_3_4069
identityЂ conv2d_3/StatefulPartitionedCall
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_4067conv2d_3_4069*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_40142"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_39932!
max_pooling2d_3/PartitionedCallЇ
IdentityIdentity(max_pooling2d_3/PartitionedCall:output:0!^conv2d_3/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs
у
о
F__inference_sequential_6_layer_call_and_return_conditional_losses_4436
conv2d_transpose_2_input
conv2d_transpose_2_4429
conv2d_transpose_2_4431
identityЂ*conv2d_transpose_2/StatefulPartitionedCallь
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_2_inputconv2d_transpose_2_4429conv2d_transpose_2_4431*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_43962,
*conv2d_transpose_2/StatefulPartitionedCallЎ
up_sampling2d_2/PartitionedCallPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_44192!
up_sampling2d_2/PartitionedCallУ
IdentityIdentity(up_sampling2d_2/PartitionedCall:output:0+^conv2d_transpose_2/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ``0::2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall:i e
/
_output_shapes
:џџџџџџџџџ``0
2
_user_specified_nameconv2d_transpose_2_input
/
П
F__inference_sequential_7_layer_call_and_return_conditional_losses_6151

inputs?
;conv2d_transpose_3_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_3_biasadd_readvariableop_resource
identityЂ)conv2d_transpose_3/BiasAdd/ReadVariableOpЂ2conv2d_transpose_3/conv2d_transpose/ReadVariableOpj
conv2d_transpose_3/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_3/Shape
&conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_3/strided_slice/stack
(conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_1
(conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_2д
 conv2d_transpose_3/strided_sliceStridedSlice!conv2d_transpose_3/Shape:output:0/conv2d_transpose_3/strided_slice/stack:output:01conv2d_transpose_3/strided_slice/stack_1:output:01conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_3/strided_slice{
conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :Р2
conv2d_transpose_3/stack/1{
conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :Р2
conv2d_transpose_3/stack/2z
conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_3/stack/3
conv2d_transpose_3/stackPack)conv2d_transpose_3/strided_slice:output:0#conv2d_transpose_3/stack/1:output:0#conv2d_transpose_3/stack/2:output:0#conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_3/stack
(conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_3/strided_slice_1/stackЂ
*conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_1Ђ
*conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_2о
"conv2d_transpose_3/strided_slice_1StridedSlice!conv2d_transpose_3/stack:output:01conv2d_transpose_3/strided_slice_1/stack:output:03conv2d_transpose_3/strided_slice_1/stack_1:output:03conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_3/strided_slice_1ь
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@`*
dtype024
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpЌ
#conv2d_transpose_3/conv2d_transposeConv2DBackpropInput!conv2d_transpose_3/stack:output:0:conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:џџџџџџџџџРР@*
paddingSAME*
strides
2%
#conv2d_transpose_3/conv2d_transposeХ
)conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)conv2d_transpose_3/BiasAdd/ReadVariableOpр
conv2d_transpose_3/BiasAddBiasAdd,conv2d_transpose_3/conv2d_transpose:output:01conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР@2
conv2d_transpose_3/BiasAddЩ
(conv2d_transpose_3/leaky_re_lu/LeakyRelu	LeakyRelu#conv2d_transpose_3/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџРР@*
alpha%>2*
(conv2d_transpose_3/leaky_re_lu/LeakyRelu
up_sampling2d_3/ShapeShape6conv2d_transpose_3/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_3/Shape
#up_sampling2d_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d_3/strided_slice/stack
%up_sampling2d_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_3/strided_slice/stack_1
%up_sampling2d_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_3/strided_slice/stack_2Ў
up_sampling2d_3/strided_sliceStridedSliceup_sampling2d_3/Shape:output:0,up_sampling2d_3/strided_slice/stack:output:0.up_sampling2d_3/strided_slice/stack_1:output:0.up_sampling2d_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d_3/strided_slice
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const
up_sampling2d_3/mulMul&up_sampling2d_3/strided_slice:output:0up_sampling2d_3/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_3/mul
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbor6conv2d_transpose_3/leaky_re_lu/LeakyRelu:activations:0up_sampling2d_3/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
half_pixel_centers(2.
,up_sampling2d_3/resize/ResizeNearestNeighborќ
IdentityIdentity=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*^conv2d_transpose_3/BiasAdd/ReadVariableOp3^conv2d_transpose_3/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР`::2V
)conv2d_transpose_3/BiasAdd/ReadVariableOp)conv2d_transpose_3/BiasAdd/ReadVariableOp2h
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2conv2d_transpose_3/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџРР`
 
_user_specified_nameinputs
л

+__inference_sequential_5_layer_call_fn_4351
conv2d_transpose_1_input
unknown
	unknown_0
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_1_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_43442
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::22
StatefulPartitionedCallStatefulPartitionedCall:i e
/
_output_shapes
:џџџџџџџџџ00
2
_user_specified_nameconv2d_transpose_1_input
З
a
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_4119

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%>2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ѓ
Ф#
 __inference__traced_restore_6754
file_prefix.
*assignvariableop_conv2d_transpose_4_kernel.
*assignvariableop_1_conv2d_transpose_4_bias 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate$
 assignvariableop_7_conv2d_kernel"
assignvariableop_8_conv2d_bias&
"assignvariableop_9_conv2d_1_kernel%
!assignvariableop_10_conv2d_1_bias'
#assignvariableop_11_conv2d_2_kernel%
!assignvariableop_12_conv2d_2_bias'
#assignvariableop_13_conv2d_3_kernel%
!assignvariableop_14_conv2d_3_bias/
+assignvariableop_15_conv2d_transpose_kernel-
)assignvariableop_16_conv2d_transpose_bias1
-assignvariableop_17_conv2d_transpose_1_kernel/
+assignvariableop_18_conv2d_transpose_1_bias1
-assignvariableop_19_conv2d_transpose_2_kernel/
+assignvariableop_20_conv2d_transpose_2_bias1
-assignvariableop_21_conv2d_transpose_3_kernel/
+assignvariableop_22_conv2d_transpose_3_bias
assignvariableop_23_total
assignvariableop_24_count
assignvariableop_25_total_1
assignvariableop_26_count_1
assignvariableop_27_total_2
assignvariableop_28_count_28
4assignvariableop_29_adam_conv2d_transpose_4_kernel_m6
2assignvariableop_30_adam_conv2d_transpose_4_bias_m,
(assignvariableop_31_adam_conv2d_kernel_m*
&assignvariableop_32_adam_conv2d_bias_m.
*assignvariableop_33_adam_conv2d_1_kernel_m,
(assignvariableop_34_adam_conv2d_1_bias_m.
*assignvariableop_35_adam_conv2d_2_kernel_m,
(assignvariableop_36_adam_conv2d_2_bias_m.
*assignvariableop_37_adam_conv2d_3_kernel_m,
(assignvariableop_38_adam_conv2d_3_bias_m6
2assignvariableop_39_adam_conv2d_transpose_kernel_m4
0assignvariableop_40_adam_conv2d_transpose_bias_m8
4assignvariableop_41_adam_conv2d_transpose_1_kernel_m6
2assignvariableop_42_adam_conv2d_transpose_1_bias_m8
4assignvariableop_43_adam_conv2d_transpose_2_kernel_m6
2assignvariableop_44_adam_conv2d_transpose_2_bias_m8
4assignvariableop_45_adam_conv2d_transpose_3_kernel_m6
2assignvariableop_46_adam_conv2d_transpose_3_bias_m8
4assignvariableop_47_adam_conv2d_transpose_4_kernel_v6
2assignvariableop_48_adam_conv2d_transpose_4_bias_v,
(assignvariableop_49_adam_conv2d_kernel_v*
&assignvariableop_50_adam_conv2d_bias_v.
*assignvariableop_51_adam_conv2d_1_kernel_v,
(assignvariableop_52_adam_conv2d_1_bias_v.
*assignvariableop_53_adam_conv2d_2_kernel_v,
(assignvariableop_54_adam_conv2d_2_bias_v.
*assignvariableop_55_adam_conv2d_3_kernel_v,
(assignvariableop_56_adam_conv2d_3_bias_v6
2assignvariableop_57_adam_conv2d_transpose_kernel_v4
0assignvariableop_58_adam_conv2d_transpose_bias_v8
4assignvariableop_59_adam_conv2d_transpose_1_kernel_v6
2assignvariableop_60_adam_conv2d_transpose_1_bias_v8
4assignvariableop_61_adam_conv2d_transpose_2_kernel_v6
2assignvariableop_62_adam_conv2d_transpose_2_bias_v8
4assignvariableop_63_adam_conv2d_transpose_3_kernel_v6
2assignvariableop_64_adam_conv2d_transpose_3_bias_v
identity_66ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9ќ"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*"
valueў!Bћ!BB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*
valueBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesј
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*P
dtypesF
D2B	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЉ
AssignVariableOpAssignVariableOp*assignvariableop_conv2d_transpose_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Џ
AssignVariableOp_1AssignVariableOp*assignvariableop_1_conv2d_transpose_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2Ё
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ѓ
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ѓ
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ђ
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Њ
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѕ
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ѓ
AssignVariableOp_8AssignVariableOpassignvariableop_8_conv2d_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ї
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv2d_1_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Љ
AssignVariableOp_10AssignVariableOp!assignvariableop_10_conv2d_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ћ
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv2d_2_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Љ
AssignVariableOp_12AssignVariableOp!assignvariableop_12_conv2d_2_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ћ
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_3_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Љ
AssignVariableOp_14AssignVariableOp!assignvariableop_14_conv2d_3_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Г
AssignVariableOp_15AssignVariableOp+assignvariableop_15_conv2d_transpose_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Б
AssignVariableOp_16AssignVariableOp)assignvariableop_16_conv2d_transpose_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Е
AssignVariableOp_17AssignVariableOp-assignvariableop_17_conv2d_transpose_1_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Г
AssignVariableOp_18AssignVariableOp+assignvariableop_18_conv2d_transpose_1_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Е
AssignVariableOp_19AssignVariableOp-assignvariableop_19_conv2d_transpose_2_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Г
AssignVariableOp_20AssignVariableOp+assignvariableop_20_conv2d_transpose_2_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Е
AssignVariableOp_21AssignVariableOp-assignvariableop_21_conv2d_transpose_3_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Г
AssignVariableOp_22AssignVariableOp+assignvariableop_22_conv2d_transpose_3_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ё
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ё
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ѓ
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ѓ
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Ѓ
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_2Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ѓ
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_2Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29М
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_conv2d_transpose_4_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30К
AssignVariableOp_30AssignVariableOp2assignvariableop_30_adam_conv2d_transpose_4_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31А
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_conv2d_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Ў
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_conv2d_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33В
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv2d_1_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34А
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv2d_1_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35В
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_2_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36А
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_2_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37В
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv2d_3_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38А
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv2d_3_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39К
AssignVariableOp_39AssignVariableOp2assignvariableop_39_adam_conv2d_transpose_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40И
AssignVariableOp_40AssignVariableOp0assignvariableop_40_adam_conv2d_transpose_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41М
AssignVariableOp_41AssignVariableOp4assignvariableop_41_adam_conv2d_transpose_1_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42К
AssignVariableOp_42AssignVariableOp2assignvariableop_42_adam_conv2d_transpose_1_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43М
AssignVariableOp_43AssignVariableOp4assignvariableop_43_adam_conv2d_transpose_2_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44К
AssignVariableOp_44AssignVariableOp2assignvariableop_44_adam_conv2d_transpose_2_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45М
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_conv2d_transpose_3_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46К
AssignVariableOp_46AssignVariableOp2assignvariableop_46_adam_conv2d_transpose_3_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47М
AssignVariableOp_47AssignVariableOp4assignvariableop_47_adam_conv2d_transpose_4_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48К
AssignVariableOp_48AssignVariableOp2assignvariableop_48_adam_conv2d_transpose_4_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49А
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_conv2d_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50Ў
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_conv2d_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51В
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_conv2d_1_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52А
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_conv2d_1_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53В
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_conv2d_2_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54А
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_conv2d_2_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55В
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_conv2d_3_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56А
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_conv2d_3_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57К
AssignVariableOp_57AssignVariableOp2assignvariableop_57_adam_conv2d_transpose_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58И
AssignVariableOp_58AssignVariableOp0assignvariableop_58_adam_conv2d_transpose_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59М
AssignVariableOp_59AssignVariableOp4assignvariableop_59_adam_conv2d_transpose_1_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60К
AssignVariableOp_60AssignVariableOp2assignvariableop_60_adam_conv2d_transpose_1_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61М
AssignVariableOp_61AssignVariableOp4assignvariableop_61_adam_conv2d_transpose_2_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62К
AssignVariableOp_62AssignVariableOp2assignvariableop_62_adam_conv2d_transpose_2_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63М
AssignVariableOp_63AssignVariableOp4assignvariableop_63_adam_conv2d_transpose_3_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64К
AssignVariableOp_64AssignVariableOp2assignvariableop_64_adam_conv2d_transpose_3_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_649
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpє
Identity_65Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_65ч
Identity_66IdentityIdentity_65:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_66"#
identity_66Identity_66:output:0*
_input_shapes
: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
§
F
*__inference_leaky_re_lu_layer_call_fn_6311

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_45222
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Б
Ь
F__inference_sequential_7_layer_call_and_return_conditional_losses_4612

inputs
conv2d_transpose_3_4605
conv2d_transpose_3_4607
identityЂ*conv2d_transpose_3/StatefulPartitionedCallк
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_3_4605conv2d_transpose_3_4607*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_45302,
*conv2d_transpose_3/StatefulPartitionedCallЎ
up_sampling2d_3/PartitionedCallPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_45532!
up_sampling2d_3/PartitionedCallУ
IdentityIdentity(up_sampling2d_3/PartitionedCall:output:0+^conv2d_transpose_3/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР`::2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџРР`
 
_user_specified_nameinputs
'
љ
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_4530

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3Г
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@`*
dtype02!
conv2d_transpose/ReadVariableOp№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЄ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2	
BiasAddџ
leaky_re_lu/PartitionedCallPartitionedCallBiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_45222
leaky_re_lu/PartitionedCallЭ
IdentityIdentity$leaky_re_lu/PartitionedCall:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
Љ
№
$__inference_model_layer_call_fn_5612

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_50352
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:џџџџџџџџџ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
§.
П
F__inference_sequential_5_layer_call_and_return_conditional_losses_6019

inputs?
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_1_biasadd_readvariableop_resource
identityЂ)conv2d_transpose_1/BiasAdd/ReadVariableOpЂ2conv2d_transpose_1/conv2d_transpose/ReadVariableOpj
conv2d_transpose_1/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_1/Shape
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stack
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2д
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_1/strided_slicez
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :02
conv2d_transpose_1/stack/1z
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :02
conv2d_transpose_1/stack/2z
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/3
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stack
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stackЂ
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1Ђ
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2о
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1ь
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpЊ
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:џџџџџџџџџ00*
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transposeХ
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_1/BiasAdd/ReadVariableOpо
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ002
conv2d_transpose_1/BiasAddЧ
(conv2d_transpose_1/leaky_re_lu/LeakyRelu	LeakyRelu#conv2d_transpose_1/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ00*
alpha%>2*
(conv2d_transpose_1/leaky_re_lu/LeakyRelu
up_sampling2d_1/ShapeShape6conv2d_transpose_1/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_1/Shape
#up_sampling2d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d_1/strided_slice/stack
%up_sampling2d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_1/strided_slice/stack_1
%up_sampling2d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_1/strided_slice/stack_2Ў
up_sampling2d_1/strided_sliceStridedSliceup_sampling2d_1/Shape:output:0,up_sampling2d_1/strided_slice/stack:output:0.up_sampling2d_1/strided_slice/stack_1:output:0.up_sampling2d_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d_1/strided_slice
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const
up_sampling2d_1/mulMul&up_sampling2d_1/strided_slice:output:0up_sampling2d_1/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor6conv2d_transpose_1/leaky_re_lu/LeakyRelu:activations:0up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ``*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighborњ
IdentityIdentity=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ``2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs


+__inference_sequential_3_layer_call_fn_5821

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_40742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs

л
B__inference_conv2d_1_layer_call_and_return_conditional_losses_6232

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOpЅ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР 2	
BiasAdd
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*1
_output_shapes
:џџџџџџџџџРР *
alpha%>2
leaky_re_lu/LeakyReluВ
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџРР 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџРР@
 
_user_specified_nameinputs
Ѕ

+__inference_sequential_4_layer_call_fn_5903

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_42102
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

л
B__inference_conv2d_2_layer_call_and_return_conditional_losses_3920

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``2	
BiasAdd
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ``*
alpha%>2
leaky_re_lu/LeakyReluА
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ``2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`` ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ`` 
 
_user_specified_nameinputs
љ

Ќ
D__inference_sequential_layer_call_and_return_conditional_losses_3750
conv2d_input
conv2d_3743
conv2d_3745
identityЂconv2d/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_3743conv2d_3745*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_37322 
conv2d/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_37112
max_pooling2d/PartitionedCallЅ
IdentityIdentity&max_pooling2d/PartitionedCall:output:0^conv2d/StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџРР@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall:_ [
1
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameconv2d_input

Ж
F__inference_sequential_1_layer_call_and_return_conditional_losses_3854
conv2d_1_input
conv2d_1_3847
conv2d_1_3849
identityЂ conv2d_1/StatefulPartitionedCall 
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputconv2d_1_3847conv2d_1_3849*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_38262"
 conv2d_1/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`` * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_38052!
max_pooling2d_1/PartitionedCallЇ
IdentityIdentity(max_pooling2d_1/PartitionedCall:output:0!^conv2d_1/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ`` 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР@::2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall:a ]
1
_output_shapes
:џџџџџџџџџРР@
(
_user_specified_nameconv2d_1_input
Ѕ
H
,__inference_up_sampling2d_layer_call_fn_4157

inputs
identityш
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_41512
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Ц
F__inference_sequential_4_layer_call_and_return_conditional_losses_4210

inputs
conv2d_transpose_4203
conv2d_transpose_4205
identityЂ(conv2d_transpose/StatefulPartitionedCallа
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_4203conv2d_transpose_4205*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_41282*
(conv2d_transpose/StatefulPartitionedCallІ
up_sampling2d/PartitionedCallPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_41512
up_sampling2d/PartitionedCallП
IdentityIdentity&up_sampling2d/PartitionedCall:output:0)^conv2d_transpose/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ::2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е

1__inference_conv2d_transpose_4_layer_call_fn_4674

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_46642
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџA::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџA
 
_user_specified_nameinputs
ќ
z
%__inference_conv2d_layer_call_fn_6221

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_37322
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
у
о
F__inference_sequential_6_layer_call_and_return_conditional_losses_4446
conv2d_transpose_2_input
conv2d_transpose_2_4439
conv2d_transpose_2_4441
identityЂ*conv2d_transpose_2/StatefulPartitionedCallь
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_2_inputconv2d_transpose_2_4439conv2d_transpose_2_4441*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_43962,
*conv2d_transpose_2/StatefulPartitionedCallЎ
up_sampling2d_2/PartitionedCallPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_44192!
up_sampling2d_2/PartitionedCallУ
IdentityIdentity(up_sampling2d_2/PartitionedCall:output:0+^conv2d_transpose_2/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ``0::2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall:i e
/
_output_shapes
:џџџџџџџџџ``0
2
_user_specified_nameconv2d_transpose_2_input
З
a
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6296

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%>2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ч-
З
F__inference_sequential_4_layer_call_and_return_conditional_losses_5885

inputs=
9conv2d_transpose_conv2d_transpose_readvariableop_resource4
0conv2d_transpose_biasadd_readvariableop_resource
identityЂ'conv2d_transpose/BiasAdd/ReadVariableOpЂ0conv2d_transpose/conv2d_transpose/ReadVariableOpf
conv2d_transpose/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose/Shape
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$conv2d_transpose/strided_slice/stack
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_1
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_2Ш
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
conv2d_transpose/strided_slicev
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/1v
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/2v
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/3ј
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose/stack
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose/strided_slice_1/stack
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_1
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_2в
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose/strided_slice_1ц
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype022
0conv2d_transpose/conv2d_transpose/ReadVariableOpЂ
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2#
!conv2d_transpose/conv2d_transposeП
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'conv2d_transpose/BiasAdd/ReadVariableOpж
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2
conv2d_transpose/BiasAddС
&conv2d_transpose/leaky_re_lu/LeakyRelu	LeakyRelu!conv2d_transpose/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ*
alpha%>2(
&conv2d_transpose/leaky_re_lu/LeakyRelu
up_sampling2d/ShapeShape4conv2d_transpose/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2
up_sampling2d/Shape
!up_sampling2d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!up_sampling2d/strided_slice/stack
#up_sampling2d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d/strided_slice/stack_1
#up_sampling2d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d/strided_slice/stack_2Ђ
up_sampling2d/strided_sliceStridedSliceup_sampling2d/Shape:output:0*up_sampling2d/strided_slice/stack:output:0,up_sampling2d/strided_slice/stack_1:output:0,up_sampling2d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d/strided_slice{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const
up_sampling2d/mulMul$up_sampling2d/strided_slice:output:0up_sampling2d/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d/mul
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor4conv2d_transpose/leaky_re_lu/LeakyRelu:activations:0up_sampling2d/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighborє
IdentityIdentity;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ::2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

o
E__inference_concatenate_layer_call_and_return_conditional_losses_4875

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџРР`2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:џџџџџџџџџРР`2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :џџџџџџџџџРР@:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:YU
1
_output_shapes
:џџџџџџџџџРР@
 
_user_specified_nameinputs
л

+__inference_sequential_5_layer_call_fn_4332
conv2d_transpose_1_input
unknown
	unknown_0
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_1_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_43252
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::22
StatefulPartitionedCallStatefulPartitionedCall:i e
/
_output_shapes
:џџџџџџџџџ00
2
_user_specified_nameconv2d_transpose_1_input

~
)__inference_sequential_layer_call_fn_5695

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_37922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџРР@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Ж
F__inference_sequential_3_layer_call_and_return_conditional_losses_4032
conv2d_3_input
conv2d_3_4025
conv2d_3_4027
identityЂ conv2d_3/StatefulPartitionedCall
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputconv2d_3_4025conv2d_3_4027*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_40142"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_39932!
max_pooling2d_3/PartitionedCallЇ
IdentityIdentity(max_pooling2d_3/PartitionedCall:output:0!^conv2d_3/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall:_ [
/
_output_shapes
:џџџџџџџџџ00
(
_user_specified_nameconv2d_3_input
/
П
F__inference_sequential_7_layer_call_and_return_conditional_losses_6183

inputs?
;conv2d_transpose_3_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_3_biasadd_readvariableop_resource
identityЂ)conv2d_transpose_3/BiasAdd/ReadVariableOpЂ2conv2d_transpose_3/conv2d_transpose/ReadVariableOpj
conv2d_transpose_3/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_3/Shape
&conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_3/strided_slice/stack
(conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_1
(conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_2д
 conv2d_transpose_3/strided_sliceStridedSlice!conv2d_transpose_3/Shape:output:0/conv2d_transpose_3/strided_slice/stack:output:01conv2d_transpose_3/strided_slice/stack_1:output:01conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_3/strided_slice{
conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :Р2
conv2d_transpose_3/stack/1{
conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :Р2
conv2d_transpose_3/stack/2z
conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_3/stack/3
conv2d_transpose_3/stackPack)conv2d_transpose_3/strided_slice:output:0#conv2d_transpose_3/stack/1:output:0#conv2d_transpose_3/stack/2:output:0#conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_3/stack
(conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_3/strided_slice_1/stackЂ
*conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_1Ђ
*conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_2о
"conv2d_transpose_3/strided_slice_1StridedSlice!conv2d_transpose_3/stack:output:01conv2d_transpose_3/strided_slice_1/stack:output:03conv2d_transpose_3/strided_slice_1/stack_1:output:03conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_3/strided_slice_1ь
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@`*
dtype024
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpЌ
#conv2d_transpose_3/conv2d_transposeConv2DBackpropInput!conv2d_transpose_3/stack:output:0:conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:џџџџџџџџџРР@*
paddingSAME*
strides
2%
#conv2d_transpose_3/conv2d_transposeХ
)conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)conv2d_transpose_3/BiasAdd/ReadVariableOpр
conv2d_transpose_3/BiasAddBiasAdd,conv2d_transpose_3/conv2d_transpose:output:01conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР@2
conv2d_transpose_3/BiasAddЩ
(conv2d_transpose_3/leaky_re_lu/LeakyRelu	LeakyRelu#conv2d_transpose_3/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџРР@*
alpha%>2*
(conv2d_transpose_3/leaky_re_lu/LeakyRelu
up_sampling2d_3/ShapeShape6conv2d_transpose_3/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_3/Shape
#up_sampling2d_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d_3/strided_slice/stack
%up_sampling2d_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_3/strided_slice/stack_1
%up_sampling2d_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_3/strided_slice/stack_2Ў
up_sampling2d_3/strided_sliceStridedSliceup_sampling2d_3/Shape:output:0,up_sampling2d_3/strided_slice/stack:output:0.up_sampling2d_3/strided_slice/stack_1:output:0.up_sampling2d_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d_3/strided_slice
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_3/Const
up_sampling2d_3/mulMul&up_sampling2d_3/strided_slice:output:0up_sampling2d_3/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_3/mul
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbor6conv2d_transpose_3/leaky_re_lu/LeakyRelu:activations:0up_sampling2d_3/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
half_pixel_centers(2.
,up_sampling2d_3/resize/ResizeNearestNeighborќ
IdentityIdentity=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*^conv2d_transpose_3/BiasAdd/ReadVariableOp3^conv2d_transpose_3/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР`::2V
)conv2d_transpose_3/BiasAdd/ReadVariableOp)conv2d_transpose_3/BiasAdd/ReadVariableOp2h
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2conv2d_transpose_3/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџРР`
 
_user_specified_nameinputs

q
E__inference_concatenate_layer_call_and_return_conditional_losses_5910
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ002
concatk
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:џџџџџџџџџ00:k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:џџџџџџџџџ00
"
_user_specified_name
inputs/1
З
a
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6306

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
alpha%>2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

л
B__inference_conv2d_1_layer_call_and_return_conditional_losses_3826

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOpЅ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР 2	
BiasAdd
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*1
_output_shapes
:џџџџџџџџџРР *
alpha%>2
leaky_re_lu/LeakyReluВ
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџРР 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџРР@
 
_user_specified_nameinputs
'
љ
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_4396

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3Г
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: 0*
dtype02!
conv2d_transpose/ReadVariableOp№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЄ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2	
BiasAddџ
leaky_re_lu/PartitionedCallPartitionedCallBiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_43882
leaky_re_lu/PartitionedCallЭ
IdentityIdentity$leaky_re_lu/PartitionedCall:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
 
_user_specified_nameinputs
э
V
*__inference_concatenate_layer_call_fn_5942
inputs_0
inputs_1
identityи
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48382
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ``02

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:џџџџџџџџџ`` :k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:џџџџџџџџџ`` 
"
_user_specified_name
inputs/1
Љ
J
.__inference_max_pooling2d_3_layer_call_fn_3999

inputs
identityъ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_39932
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

o
E__inference_concatenate_layer_call_and_return_conditional_losses_4800

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ002
concatk
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:џџџџџџџџџ00:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:WS
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs

q
E__inference_concatenate_layer_call_and_return_conditional_losses_5936
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ``02
concatk
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:џџџџџџџџџ``02

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:џџџџџџџџџ`` :k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:џџџџџџџџџ`` 
"
_user_specified_name
inputs/1
ъ

я
"__inference_signature_wrapper_5219
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityЂStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_37052
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:џџџџџџџџџ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1

~
)__inference_sequential_layer_call_fn_5686

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_37732
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџРР@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЇA
ш
?__inference_model_layer_call_and_return_conditional_losses_4926
input_1
sequential_4696
sequential_4698
sequential_1_4719
sequential_1_4721
sequential_2_4742
sequential_2_4744
sequential_3_4765
sequential_3_4767
sequential_4_4788
sequential_4_4790
sequential_5_4827
sequential_5_4829
sequential_6_4864
sequential_6_4866
sequential_7_4901
sequential_7_4903
conv2d_transpose_4_4920
conv2d_transpose_4_4922
identityЂ*conv2d_transpose_4/StatefulPartitionedCallЂ"sequential/StatefulPartitionedCallЂ$sequential_1/StatefulPartitionedCallЂ$sequential_2/StatefulPartitionedCallЂ$sequential_3/StatefulPartitionedCallЂ$sequential_4/StatefulPartitionedCallЂ$sequential_5/StatefulPartitionedCallЂ$sequential_6/StatefulPartitionedCallЂ$sequential_7/StatefulPartitionedCallЃ
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_4696sequential_4698*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_37732$
"sequential/StatefulPartitionedCallЯ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_4719sequential_1_4721*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`` *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_38672&
$sequential_1/StatefulPartitionedCallб
$sequential_2/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0sequential_2_4742sequential_2_4744*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_39612&
$sequential_2/StatefulPartitionedCallб
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_4765sequential_3_4767*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_40552&
$sequential_3/StatefulPartitionedCallу
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_4788sequential_4_4790*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_41912&
$sequential_4/StatefulPartitionedCallК
concatenate/PartitionedCallPartitionedCall-sequential_4/StatefulPartitionedCall:output:0-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48002
concatenate/PartitionedCallк
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0sequential_5_4827sequential_5_4829*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_43252&
$sequential_5/StatefulPartitionedCallО
concatenate/PartitionedCall_1PartitionedCall-sequential_5/StatefulPartitionedCall:output:0-sequential_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48382
concatenate/PartitionedCall_1м
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate/PartitionedCall_1:output:0sequential_6_4864sequential_6_4866*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_6_layer_call_and_return_conditional_losses_44592&
$sequential_6/StatefulPartitionedCallО
concatenate/PartitionedCall_2PartitionedCall-sequential_6/StatefulPartitionedCall:output:0+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48752
concatenate/PartitionedCall_2м
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall&concatenate/PartitionedCall_2:output:0sequential_7_4901sequential_7_4903*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_45932&
$sequential_7/StatefulPartitionedCall
concatenate/PartitionedCall_3PartitionedCall-sequential_7/StatefulPartitionedCall:output:0input_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџA* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_49122
concatenate/PartitionedCall_3њ
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate/PartitionedCall_3:output:0conv2d_transpose_4_4920conv2d_transpose_4_4922*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_46642,
*conv2d_transpose_4/StatefulPartitionedCall
IdentityIdentity3conv2d_transpose_4/StatefulPartitionedCall:output:0+^conv2d_transpose_4/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:џџџџџџџџџ::::::::::::::::::2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall2L
$sequential_6/StatefulPartitionedCall$sequential_6/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1

e
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_4285

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ю
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulе
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(2
resize/ResizeNearestNeighborЄ
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Љ
№
$__inference_model_layer_call_fn_5653

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_51292
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:џџџџџџџџџ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ч
о
F__inference_sequential_7_layer_call_and_return_conditional_losses_4570
conv2d_transpose_3_input
conv2d_transpose_3_4563
conv2d_transpose_3_4565
identityЂ*conv2d_transpose_3/StatefulPartitionedCallь
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_3_inputconv2d_transpose_3_4563conv2d_transpose_3_4565*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_45302,
*conv2d_transpose_3/StatefulPartitionedCallЎ
up_sampling2d_3/PartitionedCallPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_45532!
up_sampling2d_3/PartitionedCallУ
IdentityIdentity(up_sampling2d_3/PartitionedCall:output:0+^conv2d_transpose_3/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР`::2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall:k g
1
_output_shapes
:џџџџџџџџџРР`
2
_user_specified_nameconv2d_transpose_3_input

Ж
F__inference_sequential_2_layer_call_and_return_conditional_losses_3948
conv2d_2_input
conv2d_2_3941
conv2d_2_3943
identityЂ conv2d_2/StatefulPartitionedCall
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallconv2d_2_inputconv2d_2_3941conv2d_2_3943*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_39202"
 conv2d_2/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_38992!
max_pooling2d_2/PartitionedCallЇ
IdentityIdentity(max_pooling2d_2/PartitionedCall:output:0!^conv2d_2/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`` ::2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:_ [
/
_output_shapes
:џџџџџџџџџ`` 
(
_user_specified_nameconv2d_2_input
ч

І
D__inference_sequential_layer_call_and_return_conditional_losses_3792

inputs
conv2d_3785
conv2d_3787
identityЂconv2d/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3785conv2d_3787*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_37322 
conv2d/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_37112
max_pooling2d/PartitionedCallЅ
IdentityIdentity&max_pooling2d/PartitionedCall:output:0^conv2d/StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџРР@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Ж
F__inference_sequential_1_layer_call_and_return_conditional_losses_3844
conv2d_1_input
conv2d_1_3837
conv2d_1_3839
identityЂ conv2d_1/StatefulPartitionedCall 
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputconv2d_1_3837conv2d_1_3839*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_38262"
 conv2d_1/StatefulPartitionedCall
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`` * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_38052!
max_pooling2d_1/PartitionedCallЇ
IdentityIdentity(max_pooling2d_1/PartitionedCall:output:0!^conv2d_1/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ`` 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР@::2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall:a ]
1
_output_shapes
:џџџџџџџџџРР@
(
_user_specified_nameconv2d_1_input
ѕ
V
*__inference_concatenate_layer_call_fn_5929
inputs_0
inputs_1
identityк
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџA* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_49122
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџA2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ:k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
­
Ь
F__inference_sequential_5_layer_call_and_return_conditional_losses_4325

inputs
conv2d_transpose_1_4318
conv2d_transpose_1_4320
identityЂ*conv2d_transpose_1/StatefulPartitionedCallк
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_1_4318conv2d_transpose_1_4320*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_42622,
*conv2d_transpose_1/StatefulPartitionedCallЎ
up_sampling2d_1/PartitionedCallPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_42852!
up_sampling2d_1/PartitionedCallУ
IdentityIdentity(up_sampling2d_1/PartitionedCall:output:0+^conv2d_transpose_1/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs


+__inference_sequential_1_layer_call_fn_3874
conv2d_1_input
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`` *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_38672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ`` 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР@::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:џџџџџџџџџРР@
(
_user_specified_nameconv2d_1_input
'
љ
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_4664

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3Г
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:A*
dtype02!
conv2d_transpose/ReadVariableOp№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЄ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddџ
leaky_re_lu/PartitionedCallPartitionedCallBiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_46562
leaky_re_lu/PartitionedCallЭ
IdentityIdentity$leaky_re_lu/PartitionedCall:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџA::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџA
 
_user_specified_nameinputs
Б
Ь
F__inference_sequential_7_layer_call_and_return_conditional_losses_4593

inputs
conv2d_transpose_3_4586
conv2d_transpose_3_4588
identityЂ*conv2d_transpose_3/StatefulPartitionedCallк
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_3_4586conv2d_transpose_3_4588*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_45302,
*conv2d_transpose_3/StatefulPartitionedCallЎ
up_sampling2d_3/PartitionedCallPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_45532!
up_sampling2d_3/PartitionedCallУ
IdentityIdentity(up_sampling2d_3/PartitionedCall:output:0+^conv2d_transpose_3/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР`::2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџРР`
 
_user_specified_nameinputs
Ѕ

+__inference_sequential_5_layer_call_fn_6037

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_43442
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs


)__inference_sequential_layer_call_fn_3799
conv2d_input
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_37922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџРР@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameconv2d_input


+__inference_sequential_1_layer_call_fn_5728

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`` *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_38672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ`` 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР@::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџРР@
 
_user_specified_nameinputs
ли
й
__inference__wrapped_model_3705
input_1:
6model_sequential_conv2d_conv2d_readvariableop_resource;
7model_sequential_conv2d_biasadd_readvariableop_resource>
:model_sequential_1_conv2d_1_conv2d_readvariableop_resource?
;model_sequential_1_conv2d_1_biasadd_readvariableop_resource>
:model_sequential_2_conv2d_2_conv2d_readvariableop_resource?
;model_sequential_2_conv2d_2_biasadd_readvariableop_resource>
:model_sequential_3_conv2d_3_conv2d_readvariableop_resource?
;model_sequential_3_conv2d_3_biasadd_readvariableop_resourceP
Lmodel_sequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resourceG
Cmodel_sequential_4_conv2d_transpose_biasadd_readvariableop_resourceR
Nmodel_sequential_5_conv2d_transpose_1_conv2d_transpose_readvariableop_resourceI
Emodel_sequential_5_conv2d_transpose_1_biasadd_readvariableop_resourceR
Nmodel_sequential_6_conv2d_transpose_2_conv2d_transpose_readvariableop_resourceI
Emodel_sequential_6_conv2d_transpose_2_biasadd_readvariableop_resourceR
Nmodel_sequential_7_conv2d_transpose_3_conv2d_transpose_readvariableop_resourceI
Emodel_sequential_7_conv2d_transpose_3_biasadd_readvariableop_resourceE
Amodel_conv2d_transpose_4_conv2d_transpose_readvariableop_resource<
8model_conv2d_transpose_4_biasadd_readvariableop_resource
identityЂ/model/conv2d_transpose_4/BiasAdd/ReadVariableOpЂ8model/conv2d_transpose_4/conv2d_transpose/ReadVariableOpЂ.model/sequential/conv2d/BiasAdd/ReadVariableOpЂ-model/sequential/conv2d/Conv2D/ReadVariableOpЂ2model/sequential_1/conv2d_1/BiasAdd/ReadVariableOpЂ1model/sequential_1/conv2d_1/Conv2D/ReadVariableOpЂ2model/sequential_2/conv2d_2/BiasAdd/ReadVariableOpЂ1model/sequential_2/conv2d_2/Conv2D/ReadVariableOpЂ2model/sequential_3/conv2d_3/BiasAdd/ReadVariableOpЂ1model/sequential_3/conv2d_3/Conv2D/ReadVariableOpЂ:model/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpЂCmodel/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpЂ<model/sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOpЂEmodel/sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOpЂ<model/sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOpЂEmodel/sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOpЂ<model/sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOpЂEmodel/sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOpн
-model/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp6model_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02/
-model/sequential/conv2d/Conv2D/ReadVariableOpю
model/sequential/conv2d/Conv2DConv2Dinput_15model/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2 
model/sequential/conv2d/Conv2Dд
.model/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp7model_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.model/sequential/conv2d/BiasAdd/ReadVariableOpъ
model/sequential/conv2d/BiasAddBiasAdd'model/sequential/conv2d/Conv2D:output:06model/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@2!
model/sequential/conv2d/BiasAddи
-model/sequential/conv2d/leaky_re_lu/LeakyRelu	LeakyRelu(model/sequential/conv2d/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџ@*
alpha%>2/
-model/sequential/conv2d/leaky_re_lu/LeakyRelu
&model/sequential/max_pooling2d/MaxPoolMaxPool;model/sequential/conv2d/leaky_re_lu/LeakyRelu:activations:0*1
_output_shapes
:џџџџџџџџџРР@*
ksize
*
paddingVALID*
strides
2(
&model/sequential/max_pooling2d/MaxPoolщ
1model/sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp:model_sequential_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype023
1model/sequential_1/conv2d_1/Conv2D/ReadVariableOpЂ
"model/sequential_1/conv2d_1/Conv2DConv2D/model/sequential/max_pooling2d/MaxPool:output:09model/sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР *
paddingSAME*
strides
2$
"model/sequential_1/conv2d_1/Conv2Dр
2model/sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp;model_sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype024
2model/sequential_1/conv2d_1/BiasAdd/ReadVariableOpњ
#model/sequential_1/conv2d_1/BiasAddBiasAdd+model/sequential_1/conv2d_1/Conv2D:output:0:model/sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР 2%
#model/sequential_1/conv2d_1/BiasAddф
1model/sequential_1/conv2d_1/leaky_re_lu/LeakyRelu	LeakyRelu,model/sequential_1/conv2d_1/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџРР *
alpha%>23
1model/sequential_1/conv2d_1/leaky_re_lu/LeakyRelu
*model/sequential_1/max_pooling2d_1/MaxPoolMaxPool?model/sequential_1/conv2d_1/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ`` *
ksize
*
paddingVALID*
strides
2,
*model/sequential_1/max_pooling2d_1/MaxPoolщ
1model/sequential_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp:model_sequential_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype023
1model/sequential_2/conv2d_2/Conv2D/ReadVariableOpЄ
"model/sequential_2/conv2d_2/Conv2DConv2D3model/sequential_1/max_pooling2d_1/MaxPool:output:09model/sequential_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``*
paddingSAME*
strides
2$
"model/sequential_2/conv2d_2/Conv2Dр
2model/sequential_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp;model_sequential_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2model/sequential_2/conv2d_2/BiasAdd/ReadVariableOpј
#model/sequential_2/conv2d_2/BiasAddBiasAdd+model/sequential_2/conv2d_2/Conv2D:output:0:model/sequential_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``2%
#model/sequential_2/conv2d_2/BiasAddт
1model/sequential_2/conv2d_2/leaky_re_lu/LeakyRelu	LeakyRelu,model/sequential_2/conv2d_2/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ``*
alpha%>23
1model/sequential_2/conv2d_2/leaky_re_lu/LeakyRelu
*model/sequential_2/max_pooling2d_2/MaxPoolMaxPool?model/sequential_2/conv2d_2/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ00*
ksize
*
paddingVALID*
strides
2,
*model/sequential_2/max_pooling2d_2/MaxPoolщ
1model/sequential_3/conv2d_3/Conv2D/ReadVariableOpReadVariableOp:model_sequential_3_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype023
1model/sequential_3/conv2d_3/Conv2D/ReadVariableOpЄ
"model/sequential_3/conv2d_3/Conv2DConv2D3model/sequential_2/max_pooling2d_2/MaxPool:output:09model/sequential_3/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
paddingSAME*
strides
2$
"model/sequential_3/conv2d_3/Conv2Dр
2model/sequential_3/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp;model_sequential_3_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2model/sequential_3/conv2d_3/BiasAdd/ReadVariableOpј
#model/sequential_3/conv2d_3/BiasAddBiasAdd+model/sequential_3/conv2d_3/Conv2D:output:0:model/sequential_3/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ002%
#model/sequential_3/conv2d_3/BiasAddт
1model/sequential_3/conv2d_3/leaky_re_lu/LeakyRelu	LeakyRelu,model/sequential_3/conv2d_3/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ00*
alpha%>23
1model/sequential_3/conv2d_3/leaky_re_lu/LeakyRelu
*model/sequential_3/max_pooling2d_3/MaxPoolMaxPool?model/sequential_3/conv2d_3/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2,
*model/sequential_3/max_pooling2d_3/MaxPoolЙ
)model/sequential_4/conv2d_transpose/ShapeShape3model/sequential_3/max_pooling2d_3/MaxPool:output:0*
T0*
_output_shapes
:2+
)model/sequential_4/conv2d_transpose/ShapeМ
7model/sequential_4/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7model/sequential_4/conv2d_transpose/strided_slice/stackР
9model/sequential_4/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9model/sequential_4/conv2d_transpose/strided_slice/stack_1Р
9model/sequential_4/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9model/sequential_4/conv2d_transpose/strided_slice/stack_2К
1model/sequential_4/conv2d_transpose/strided_sliceStridedSlice2model/sequential_4/conv2d_transpose/Shape:output:0@model/sequential_4/conv2d_transpose/strided_slice/stack:output:0Bmodel/sequential_4/conv2d_transpose/strided_slice/stack_1:output:0Bmodel/sequential_4/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1model/sequential_4/conv2d_transpose/strided_slice
+model/sequential_4/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2-
+model/sequential_4/conv2d_transpose/stack/1
+model/sequential_4/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2-
+model/sequential_4/conv2d_transpose/stack/2
+model/sequential_4/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2-
+model/sequential_4/conv2d_transpose/stack/3ъ
)model/sequential_4/conv2d_transpose/stackPack:model/sequential_4/conv2d_transpose/strided_slice:output:04model/sequential_4/conv2d_transpose/stack/1:output:04model/sequential_4/conv2d_transpose/stack/2:output:04model/sequential_4/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2+
)model/sequential_4/conv2d_transpose/stackР
9model/sequential_4/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9model/sequential_4/conv2d_transpose/strided_slice_1/stackФ
;model/sequential_4/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_4/conv2d_transpose/strided_slice_1/stack_1Ф
;model/sequential_4/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_4/conv2d_transpose/strided_slice_1/stack_2Ф
3model/sequential_4/conv2d_transpose/strided_slice_1StridedSlice2model/sequential_4/conv2d_transpose/stack:output:0Bmodel/sequential_4/conv2d_transpose/strided_slice_1/stack:output:0Dmodel/sequential_4/conv2d_transpose/strided_slice_1/stack_1:output:0Dmodel/sequential_4/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3model/sequential_4/conv2d_transpose/strided_slice_1
Cmodel/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpLmodel_sequential_4_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02E
Cmodel/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp
4model/sequential_4/conv2d_transpose/conv2d_transposeConv2DBackpropInput2model/sequential_4/conv2d_transpose/stack:output:0Kmodel/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:03model/sequential_3/max_pooling2d_3/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
26
4model/sequential_4/conv2d_transpose/conv2d_transposeј
:model/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpCmodel_sequential_4_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02<
:model/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpЂ
+model/sequential_4/conv2d_transpose/BiasAddBiasAdd=model/sequential_4/conv2d_transpose/conv2d_transpose:output:0Bmodel/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2-
+model/sequential_4/conv2d_transpose/BiasAddњ
9model/sequential_4/conv2d_transpose/leaky_re_lu/LeakyRelu	LeakyRelu4model/sequential_4/conv2d_transpose/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ*
alpha%>2;
9model/sequential_4/conv2d_transpose/leaky_re_lu/LeakyReluЧ
&model/sequential_4/up_sampling2d/ShapeShapeGmodel/sequential_4/conv2d_transpose/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2(
&model/sequential_4/up_sampling2d/ShapeЖ
4model/sequential_4/up_sampling2d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4model/sequential_4/up_sampling2d/strided_slice/stackК
6model/sequential_4/up_sampling2d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model/sequential_4/up_sampling2d/strided_slice/stack_1К
6model/sequential_4/up_sampling2d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model/sequential_4/up_sampling2d/strided_slice/stack_2
.model/sequential_4/up_sampling2d/strided_sliceStridedSlice/model/sequential_4/up_sampling2d/Shape:output:0=model/sequential_4/up_sampling2d/strided_slice/stack:output:0?model/sequential_4/up_sampling2d/strided_slice/stack_1:output:0?model/sequential_4/up_sampling2d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:20
.model/sequential_4/up_sampling2d/strided_sliceЁ
&model/sequential_4/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2(
&model/sequential_4/up_sampling2d/Constт
$model/sequential_4/up_sampling2d/mulMul7model/sequential_4/up_sampling2d/strided_slice:output:0/model/sequential_4/up_sampling2d/Const:output:0*
T0*
_output_shapes
:2&
$model/sequential_4/up_sampling2d/mulо
=model/sequential_4/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborGmodel/sequential_4/conv2d_transpose/leaky_re_lu/LeakyRelu:activations:0(model/sequential_4/up_sampling2d/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
half_pixel_centers(2?
=model/sequential_4/up_sampling2d/resize/ResizeNearestNeighbor
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model/concatenate/concat/axisА
model/concatenate/concatConcatV2Nmodel/sequential_4/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:03model/sequential_2/max_pooling2d_2/MaxPool:output:0&model/concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ002
model/concatenate/concatЋ
+model/sequential_5/conv2d_transpose_1/ShapeShape!model/concatenate/concat:output:0*
T0*
_output_shapes
:2-
+model/sequential_5/conv2d_transpose_1/ShapeР
9model/sequential_5/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9model/sequential_5/conv2d_transpose_1/strided_slice/stackФ
;model/sequential_5/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_5/conv2d_transpose_1/strided_slice/stack_1Ф
;model/sequential_5/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_5/conv2d_transpose_1/strided_slice/stack_2Ц
3model/sequential_5/conv2d_transpose_1/strided_sliceStridedSlice4model/sequential_5/conv2d_transpose_1/Shape:output:0Bmodel/sequential_5/conv2d_transpose_1/strided_slice/stack:output:0Dmodel/sequential_5/conv2d_transpose_1/strided_slice/stack_1:output:0Dmodel/sequential_5/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3model/sequential_5/conv2d_transpose_1/strided_slice 
-model/sequential_5/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :02/
-model/sequential_5/conv2d_transpose_1/stack/1 
-model/sequential_5/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :02/
-model/sequential_5/conv2d_transpose_1/stack/2 
-model/sequential_5/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2/
-model/sequential_5/conv2d_transpose_1/stack/3і
+model/sequential_5/conv2d_transpose_1/stackPack<model/sequential_5/conv2d_transpose_1/strided_slice:output:06model/sequential_5/conv2d_transpose_1/stack/1:output:06model/sequential_5/conv2d_transpose_1/stack/2:output:06model/sequential_5/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2-
+model/sequential_5/conv2d_transpose_1/stackФ
;model/sequential_5/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;model/sequential_5/conv2d_transpose_1/strided_slice_1/stackШ
=model/sequential_5/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/sequential_5/conv2d_transpose_1/strided_slice_1/stack_1Ш
=model/sequential_5/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/sequential_5/conv2d_transpose_1/strided_slice_1/stack_2а
5model/sequential_5/conv2d_transpose_1/strided_slice_1StridedSlice4model/sequential_5/conv2d_transpose_1/stack:output:0Dmodel/sequential_5/conv2d_transpose_1/strided_slice_1/stack:output:0Fmodel/sequential_5/conv2d_transpose_1/strided_slice_1/stack_1:output:0Fmodel/sequential_5/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5model/sequential_5/conv2d_transpose_1/strided_slice_1Ѕ
Emodel/sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpNmodel_sequential_5_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02G
Emodel/sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOp
6model/sequential_5/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput4model/sequential_5/conv2d_transpose_1/stack:output:0Mmodel/sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0!model/concatenate/concat:output:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
paddingSAME*
strides
28
6model/sequential_5/conv2d_transpose_1/conv2d_transposeў
<model/sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpEmodel_sequential_5_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02>
<model/sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOpЊ
-model/sequential_5/conv2d_transpose_1/BiasAddBiasAdd?model/sequential_5/conv2d_transpose_1/conv2d_transpose:output:0Dmodel/sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ002/
-model/sequential_5/conv2d_transpose_1/BiasAdd
;model/sequential_5/conv2d_transpose_1/leaky_re_lu/LeakyRelu	LeakyRelu6model/sequential_5/conv2d_transpose_1/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ00*
alpha%>2=
;model/sequential_5/conv2d_transpose_1/leaky_re_lu/LeakyReluЭ
(model/sequential_5/up_sampling2d_1/ShapeShapeImodel/sequential_5/conv2d_transpose_1/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2*
(model/sequential_5/up_sampling2d_1/ShapeК
6model/sequential_5/up_sampling2d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6model/sequential_5/up_sampling2d_1/strided_slice/stackО
8model/sequential_5/up_sampling2d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8model/sequential_5/up_sampling2d_1/strided_slice/stack_1О
8model/sequential_5/up_sampling2d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model/sequential_5/up_sampling2d_1/strided_slice/stack_2 
0model/sequential_5/up_sampling2d_1/strided_sliceStridedSlice1model/sequential_5/up_sampling2d_1/Shape:output:0?model/sequential_5/up_sampling2d_1/strided_slice/stack:output:0Amodel/sequential_5/up_sampling2d_1/strided_slice/stack_1:output:0Amodel/sequential_5/up_sampling2d_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:22
0model/sequential_5/up_sampling2d_1/strided_sliceЅ
(model/sequential_5/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2*
(model/sequential_5/up_sampling2d_1/Constъ
&model/sequential_5/up_sampling2d_1/mulMul9model/sequential_5/up_sampling2d_1/strided_slice:output:01model/sequential_5/up_sampling2d_1/Const:output:0*
T0*
_output_shapes
:2(
&model/sequential_5/up_sampling2d_1/mulц
?model/sequential_5/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborImodel/sequential_5/conv2d_transpose_1/leaky_re_lu/LeakyRelu:activations:0*model/sequential_5/up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ``*
half_pixel_centers(2A
?model/sequential_5/up_sampling2d_1/resize/ResizeNearestNeighbor
model/concatenate/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/concatenate/concat_1/axisИ
model/concatenate/concat_1ConcatV2Pmodel/sequential_5/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:03model/sequential_1/max_pooling2d_1/MaxPool:output:0(model/concatenate/concat_1/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ``02
model/concatenate/concat_1­
+model/sequential_6/conv2d_transpose_2/ShapeShape#model/concatenate/concat_1:output:0*
T0*
_output_shapes
:2-
+model/sequential_6/conv2d_transpose_2/ShapeР
9model/sequential_6/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9model/sequential_6/conv2d_transpose_2/strided_slice/stackФ
;model/sequential_6/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_6/conv2d_transpose_2/strided_slice/stack_1Ф
;model/sequential_6/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_6/conv2d_transpose_2/strided_slice/stack_2Ц
3model/sequential_6/conv2d_transpose_2/strided_sliceStridedSlice4model/sequential_6/conv2d_transpose_2/Shape:output:0Bmodel/sequential_6/conv2d_transpose_2/strided_slice/stack:output:0Dmodel/sequential_6/conv2d_transpose_2/strided_slice/stack_1:output:0Dmodel/sequential_6/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3model/sequential_6/conv2d_transpose_2/strided_slice 
-model/sequential_6/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2/
-model/sequential_6/conv2d_transpose_2/stack/1 
-model/sequential_6/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2/
-model/sequential_6/conv2d_transpose_2/stack/2 
-model/sequential_6/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2/
-model/sequential_6/conv2d_transpose_2/stack/3і
+model/sequential_6/conv2d_transpose_2/stackPack<model/sequential_6/conv2d_transpose_2/strided_slice:output:06model/sequential_6/conv2d_transpose_2/stack/1:output:06model/sequential_6/conv2d_transpose_2/stack/2:output:06model/sequential_6/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2-
+model/sequential_6/conv2d_transpose_2/stackФ
;model/sequential_6/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;model/sequential_6/conv2d_transpose_2/strided_slice_1/stackШ
=model/sequential_6/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/sequential_6/conv2d_transpose_2/strided_slice_1/stack_1Ш
=model/sequential_6/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/sequential_6/conv2d_transpose_2/strided_slice_1/stack_2а
5model/sequential_6/conv2d_transpose_2/strided_slice_1StridedSlice4model/sequential_6/conv2d_transpose_2/stack:output:0Dmodel/sequential_6/conv2d_transpose_2/strided_slice_1/stack:output:0Fmodel/sequential_6/conv2d_transpose_2/strided_slice_1/stack_1:output:0Fmodel/sequential_6/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5model/sequential_6/conv2d_transpose_2/strided_slice_1Ѕ
Emodel/sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpNmodel_sequential_6_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: 0*
dtype02G
Emodel/sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOp
6model/sequential_6/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput4model/sequential_6/conv2d_transpose_2/stack:output:0Mmodel/sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0#model/concatenate/concat_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`` *
paddingSAME*
strides
28
6model/sequential_6/conv2d_transpose_2/conv2d_transposeў
<model/sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOpEmodel_sequential_6_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02>
<model/sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOpЊ
-model/sequential_6/conv2d_transpose_2/BiasAddBiasAdd?model/sequential_6/conv2d_transpose_2/conv2d_transpose:output:0Dmodel/sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ`` 2/
-model/sequential_6/conv2d_transpose_2/BiasAdd
;model/sequential_6/conv2d_transpose_2/leaky_re_lu/LeakyRelu	LeakyRelu6model/sequential_6/conv2d_transpose_2/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ`` *
alpha%>2=
;model/sequential_6/conv2d_transpose_2/leaky_re_lu/LeakyReluЭ
(model/sequential_6/up_sampling2d_2/ShapeShapeImodel/sequential_6/conv2d_transpose_2/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2*
(model/sequential_6/up_sampling2d_2/ShapeК
6model/sequential_6/up_sampling2d_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6model/sequential_6/up_sampling2d_2/strided_slice/stackО
8model/sequential_6/up_sampling2d_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8model/sequential_6/up_sampling2d_2/strided_slice/stack_1О
8model/sequential_6/up_sampling2d_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model/sequential_6/up_sampling2d_2/strided_slice/stack_2 
0model/sequential_6/up_sampling2d_2/strided_sliceStridedSlice1model/sequential_6/up_sampling2d_2/Shape:output:0?model/sequential_6/up_sampling2d_2/strided_slice/stack:output:0Amodel/sequential_6/up_sampling2d_2/strided_slice/stack_1:output:0Amodel/sequential_6/up_sampling2d_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:22
0model/sequential_6/up_sampling2d_2/strided_sliceЅ
(model/sequential_6/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2*
(model/sequential_6/up_sampling2d_2/Constъ
&model/sequential_6/up_sampling2d_2/mulMul9model/sequential_6/up_sampling2d_2/strided_slice:output:01model/sequential_6/up_sampling2d_2/Const:output:0*
T0*
_output_shapes
:2(
&model/sequential_6/up_sampling2d_2/mulш
?model/sequential_6/up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborImodel/sequential_6/conv2d_transpose_2/leaky_re_lu/LeakyRelu:activations:0*model/sequential_6/up_sampling2d_2/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџРР *
half_pixel_centers(2A
?model/sequential_6/up_sampling2d_2/resize/ResizeNearestNeighbor
model/concatenate/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/concatenate/concat_2/axisЖ
model/concatenate/concat_2ConcatV2Pmodel/sequential_6/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0/model/sequential/max_pooling2d/MaxPool:output:0(model/concatenate/concat_2/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџРР`2
model/concatenate/concat_2­
+model/sequential_7/conv2d_transpose_3/ShapeShape#model/concatenate/concat_2:output:0*
T0*
_output_shapes
:2-
+model/sequential_7/conv2d_transpose_3/ShapeР
9model/sequential_7/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9model/sequential_7/conv2d_transpose_3/strided_slice/stackФ
;model/sequential_7/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_7/conv2d_transpose_3/strided_slice/stack_1Ф
;model/sequential_7/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_7/conv2d_transpose_3/strided_slice/stack_2Ц
3model/sequential_7/conv2d_transpose_3/strided_sliceStridedSlice4model/sequential_7/conv2d_transpose_3/Shape:output:0Bmodel/sequential_7/conv2d_transpose_3/strided_slice/stack:output:0Dmodel/sequential_7/conv2d_transpose_3/strided_slice/stack_1:output:0Dmodel/sequential_7/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3model/sequential_7/conv2d_transpose_3/strided_sliceЁ
-model/sequential_7/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :Р2/
-model/sequential_7/conv2d_transpose_3/stack/1Ё
-model/sequential_7/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :Р2/
-model/sequential_7/conv2d_transpose_3/stack/2 
-model/sequential_7/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2/
-model/sequential_7/conv2d_transpose_3/stack/3і
+model/sequential_7/conv2d_transpose_3/stackPack<model/sequential_7/conv2d_transpose_3/strided_slice:output:06model/sequential_7/conv2d_transpose_3/stack/1:output:06model/sequential_7/conv2d_transpose_3/stack/2:output:06model/sequential_7/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2-
+model/sequential_7/conv2d_transpose_3/stackФ
;model/sequential_7/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;model/sequential_7/conv2d_transpose_3/strided_slice_1/stackШ
=model/sequential_7/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/sequential_7/conv2d_transpose_3/strided_slice_1/stack_1Ш
=model/sequential_7/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/sequential_7/conv2d_transpose_3/strided_slice_1/stack_2а
5model/sequential_7/conv2d_transpose_3/strided_slice_1StridedSlice4model/sequential_7/conv2d_transpose_3/stack:output:0Dmodel/sequential_7/conv2d_transpose_3/strided_slice_1/stack:output:0Fmodel/sequential_7/conv2d_transpose_3/strided_slice_1/stack_1:output:0Fmodel/sequential_7/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5model/sequential_7/conv2d_transpose_3/strided_slice_1Ѕ
Emodel/sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpNmodel_sequential_7_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@`*
dtype02G
Emodel/sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOp
6model/sequential_7/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput4model/sequential_7/conv2d_transpose_3/stack:output:0Mmodel/sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0#model/concatenate/concat_2:output:0*
T0*1
_output_shapes
:џџџџџџџџџРР@*
paddingSAME*
strides
28
6model/sequential_7/conv2d_transpose_3/conv2d_transposeў
<model/sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOpEmodel_sequential_7_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02>
<model/sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOpЌ
-model/sequential_7/conv2d_transpose_3/BiasAddBiasAdd?model/sequential_7/conv2d_transpose_3/conv2d_transpose:output:0Dmodel/sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР@2/
-model/sequential_7/conv2d_transpose_3/BiasAdd
;model/sequential_7/conv2d_transpose_3/leaky_re_lu/LeakyRelu	LeakyRelu6model/sequential_7/conv2d_transpose_3/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџРР@*
alpha%>2=
;model/sequential_7/conv2d_transpose_3/leaky_re_lu/LeakyReluЭ
(model/sequential_7/up_sampling2d_3/ShapeShapeImodel/sequential_7/conv2d_transpose_3/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2*
(model/sequential_7/up_sampling2d_3/ShapeК
6model/sequential_7/up_sampling2d_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6model/sequential_7/up_sampling2d_3/strided_slice/stackО
8model/sequential_7/up_sampling2d_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8model/sequential_7/up_sampling2d_3/strided_slice/stack_1О
8model/sequential_7/up_sampling2d_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model/sequential_7/up_sampling2d_3/strided_slice/stack_2 
0model/sequential_7/up_sampling2d_3/strided_sliceStridedSlice1model/sequential_7/up_sampling2d_3/Shape:output:0?model/sequential_7/up_sampling2d_3/strided_slice/stack:output:0Amodel/sequential_7/up_sampling2d_3/strided_slice/stack_1:output:0Amodel/sequential_7/up_sampling2d_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:22
0model/sequential_7/up_sampling2d_3/strided_sliceЅ
(model/sequential_7/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2*
(model/sequential_7/up_sampling2d_3/Constъ
&model/sequential_7/up_sampling2d_3/mulMul9model/sequential_7/up_sampling2d_3/strided_slice:output:01model/sequential_7/up_sampling2d_3/Const:output:0*
T0*
_output_shapes
:2(
&model/sequential_7/up_sampling2d_3/mulш
?model/sequential_7/up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighborImodel/sequential_7/conv2d_transpose_3/leaky_re_lu/LeakyRelu:activations:0*model/sequential_7/up_sampling2d_3/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
half_pixel_centers(2A
?model/sequential_7/up_sampling2d_3/resize/ResizeNearestNeighbor
model/concatenate/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/concatenate/concat_3/axis
model/concatenate/concat_3ConcatV2Pmodel/sequential_7/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0input_1(model/concatenate/concat_3/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџA2
model/concatenate/concat_3
model/conv2d_transpose_4/ShapeShape#model/concatenate/concat_3:output:0*
T0*
_output_shapes
:2 
model/conv2d_transpose_4/ShapeІ
,model/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,model/conv2d_transpose_4/strided_slice/stackЊ
.model/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model/conv2d_transpose_4/strided_slice/stack_1Њ
.model/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model/conv2d_transpose_4/strided_slice/stack_2ј
&model/conv2d_transpose_4/strided_sliceStridedSlice'model/conv2d_transpose_4/Shape:output:05model/conv2d_transpose_4/strided_slice/stack:output:07model/conv2d_transpose_4/strided_slice/stack_1:output:07model/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&model/conv2d_transpose_4/strided_slice
 model/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :2"
 model/conv2d_transpose_4/stack/1
 model/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2"
 model/conv2d_transpose_4/stack/2
 model/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2"
 model/conv2d_transpose_4/stack/3Ј
model/conv2d_transpose_4/stackPack/model/conv2d_transpose_4/strided_slice:output:0)model/conv2d_transpose_4/stack/1:output:0)model/conv2d_transpose_4/stack/2:output:0)model/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2 
model/conv2d_transpose_4/stackЊ
.model/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.model/conv2d_transpose_4/strided_slice_1/stackЎ
0model/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0model/conv2d_transpose_4/strided_slice_1/stack_1Ў
0model/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model/conv2d_transpose_4/strided_slice_1/stack_2
(model/conv2d_transpose_4/strided_slice_1StridedSlice'model/conv2d_transpose_4/stack:output:07model/conv2d_transpose_4/strided_slice_1/stack:output:09model/conv2d_transpose_4/strided_slice_1/stack_1:output:09model/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(model/conv2d_transpose_4/strided_slice_1ў
8model/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpAmodel_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
:A*
dtype02:
8model/conv2d_transpose_4/conv2d_transpose/ReadVariableOpс
)model/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput'model/conv2d_transpose_4/stack:output:0@model/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0#model/concatenate/concat_3:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
2+
)model/conv2d_transpose_4/conv2d_transposeз
/model/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp8model_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/model/conv2d_transpose_4/BiasAdd/ReadVariableOpј
 model/conv2d_transpose_4/BiasAddBiasAdd2model/conv2d_transpose_4/conv2d_transpose:output:07model/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ2"
 model/conv2d_transpose_4/BiasAddл
.model/conv2d_transpose_4/leaky_re_lu/LeakyRelu	LeakyRelu)model/conv2d_transpose_4/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџ*
alpha%>20
.model/conv2d_transpose_4/leaky_re_lu/LeakyReluЛ	
IdentityIdentity<model/conv2d_transpose_4/leaky_re_lu/LeakyRelu:activations:00^model/conv2d_transpose_4/BiasAdd/ReadVariableOp9^model/conv2d_transpose_4/conv2d_transpose/ReadVariableOp/^model/sequential/conv2d/BiasAdd/ReadVariableOp.^model/sequential/conv2d/Conv2D/ReadVariableOp3^model/sequential_1/conv2d_1/BiasAdd/ReadVariableOp2^model/sequential_1/conv2d_1/Conv2D/ReadVariableOp3^model/sequential_2/conv2d_2/BiasAdd/ReadVariableOp2^model/sequential_2/conv2d_2/Conv2D/ReadVariableOp3^model/sequential_3/conv2d_3/BiasAdd/ReadVariableOp2^model/sequential_3/conv2d_3/Conv2D/ReadVariableOp;^model/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOpD^model/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp=^model/sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOpF^model/sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOp=^model/sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOpF^model/sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOp=^model/sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOpF^model/sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:џџџџџџџџџ::::::::::::::::::2b
/model/conv2d_transpose_4/BiasAdd/ReadVariableOp/model/conv2d_transpose_4/BiasAdd/ReadVariableOp2t
8model/conv2d_transpose_4/conv2d_transpose/ReadVariableOp8model/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2`
.model/sequential/conv2d/BiasAdd/ReadVariableOp.model/sequential/conv2d/BiasAdd/ReadVariableOp2^
-model/sequential/conv2d/Conv2D/ReadVariableOp-model/sequential/conv2d/Conv2D/ReadVariableOp2h
2model/sequential_1/conv2d_1/BiasAdd/ReadVariableOp2model/sequential_1/conv2d_1/BiasAdd/ReadVariableOp2f
1model/sequential_1/conv2d_1/Conv2D/ReadVariableOp1model/sequential_1/conv2d_1/Conv2D/ReadVariableOp2h
2model/sequential_2/conv2d_2/BiasAdd/ReadVariableOp2model/sequential_2/conv2d_2/BiasAdd/ReadVariableOp2f
1model/sequential_2/conv2d_2/Conv2D/ReadVariableOp1model/sequential_2/conv2d_2/Conv2D/ReadVariableOp2h
2model/sequential_3/conv2d_3/BiasAdd/ReadVariableOp2model/sequential_3/conv2d_3/BiasAdd/ReadVariableOp2f
1model/sequential_3/conv2d_3/Conv2D/ReadVariableOp1model/sequential_3/conv2d_3/Conv2D/ReadVariableOp2x
:model/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp:model/sequential_4/conv2d_transpose/BiasAdd/ReadVariableOp2
Cmodel/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOpCmodel/sequential_4/conv2d_transpose/conv2d_transpose/ReadVariableOp2|
<model/sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOp<model/sequential_5/conv2d_transpose_1/BiasAdd/ReadVariableOp2
Emodel/sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOpEmodel/sequential_5/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2|
<model/sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOp<model/sequential_6/conv2d_transpose_2/BiasAdd/ReadVariableOp2
Emodel/sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOpEmodel/sequential_6/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2|
<model/sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOp<model/sequential_7/conv2d_transpose_3/BiasAdd/ReadVariableOp2
Emodel/sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOpEmodel/sequential_7/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:Z V
1
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
§
F
*__inference_leaky_re_lu_layer_call_fn_6331

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_41192
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


+__inference_sequential_2_layer_call_fn_5770

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_39612
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`` ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ`` 
 
_user_specified_nameinputs
'
љ
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_4262

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3Г
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOp№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЄ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2	
BiasAddџ
leaky_re_lu/PartitionedCallPartitionedCallBiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_42542
leaky_re_lu/PartitionedCallЭ
IdentityIdentity$leaky_re_lu/PartitionedCall:output:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

й
@__inference_conv2d_layer_call_and_return_conditional_losses_3732

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЅ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@2	
BiasAdd
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*1
_output_shapes
:џџџџџџџџџ@*
alpha%>2
leaky_re_lu/LeakyReluВ
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е

1__inference_conv2d_transpose_1_layer_call_fn_4272

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_42622
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Љ
J
.__inference_up_sampling2d_3_layer_call_fn_4559

inputs
identityъ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_45532
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
б

/__inference_conv2d_transpose_layer_call_fn_4138

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_41282
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Ж
F__inference_sequential_2_layer_call_and_return_conditional_losses_3938
conv2d_2_input
conv2d_2_3931
conv2d_2_3933
identityЂ conv2d_2/StatefulPartitionedCall
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallconv2d_2_inputconv2d_2_3931conv2d_2_3933*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_39202"
 conv2d_2/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_38992!
max_pooling2d_2/PartitionedCallЇ
IdentityIdentity(max_pooling2d_2/PartitionedCall:output:0!^conv2d_2/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`` ::2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:_ [
/
_output_shapes
:џџџџџџџџџ`` 
(
_user_specified_nameconv2d_2_input
е

+__inference_sequential_4_layer_call_fn_4198
conv2d_transpose_input
unknown
	unknown_0
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_41912
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:g c
/
_output_shapes
:џџџџџџџџџ
0
_user_specified_nameconv2d_transpose_input
љ

Ќ
D__inference_sequential_layer_call_and_return_conditional_losses_3760
conv2d_input
conv2d_3753
conv2d_3755
identityЂconv2d/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_3753conv2d_3755*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_37322 
conv2d/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_37112
max_pooling2d/PartitionedCallЅ
IdentityIdentity&max_pooling2d/PartitionedCall:output:0^conv2d/StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџРР@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall:_ [
1
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameconv2d_input
в

F__inference_sequential_2_layer_call_and_return_conditional_losses_5761

inputs+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource
identityЂconv2d_2/BiasAdd/ReadVariableOpЂconv2d_2/Conv2D/ReadVariableOpА
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOpО
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``*
paddingSAME*
strides
2
conv2d_2/Conv2DЇ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpЌ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``2
conv2d_2/BiasAddЉ
conv2d_2/leaky_re_lu/LeakyRelu	LeakyReluconv2d_2/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ``*
alpha%>2 
conv2d_2/leaky_re_lu/LeakyReluи
max_pooling2d_2/MaxPoolMaxPool,conv2d_2/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ00*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolП
IdentityIdentity max_pooling2d_2/MaxPool:output:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`` ::2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ`` 
 
_user_specified_nameinputs

q
E__inference_concatenate_layer_call_and_return_conditional_losses_5949
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџРР`2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:џџџџџџџџџРР`2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :џџџџџџџџџРР@:k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:џџџџџџџџџРР@
"
_user_specified_name
inputs/1
л

+__inference_sequential_6_layer_call_fn_4466
conv2d_transpose_2_input
unknown
	unknown_0
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_2_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_6_layer_call_and_return_conditional_losses_44592
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ``0::22
StatefulPartitionedCallStatefulPartitionedCall:i e
/
_output_shapes
:џџџџџџџџџ``0
2
_user_specified_nameconv2d_transpose_2_input
З
a
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6326

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%>2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Љ

+__inference_sequential_7_layer_call_fn_6201

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_46122
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР`::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџРР`
 
_user_specified_nameinputs
З
a
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6286

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
alpha%>2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
џ

Ў
F__inference_sequential_2_layer_call_and_return_conditional_losses_3961

inputs
conv2d_2_3954
conv2d_2_3956
identityЂ conv2d_2/StatefulPartitionedCall
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_3954conv2d_2_3956*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_39202"
 conv2d_2/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_38992!
max_pooling2d_2/PartitionedCallЇ
IdentityIdentity(max_pooling2d_2/PartitionedCall:output:0!^conv2d_2/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`` ::2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ`` 
 
_user_specified_nameinputs

o
E__inference_concatenate_layer_call_and_return_conditional_losses_4838

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:џџџџџџџџџ``02
concatk
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:џџџџџџџџџ``02

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:џџџџџџџџџ`` :i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:WS
/
_output_shapes
:џџџџџџџџџ`` 
 
_user_specified_nameinputs
­
Ь
F__inference_sequential_5_layer_call_and_return_conditional_losses_4344

inputs
conv2d_transpose_1_4337
conv2d_transpose_1_4339
identityЂ*conv2d_transpose_1/StatefulPartitionedCallк
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_1_4337conv2d_transpose_1_4339*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_42622,
*conv2d_transpose_1/StatefulPartitionedCallЎ
up_sampling2d_1/PartitionedCallPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_42852!
up_sampling2d_1/PartitionedCallУ
IdentityIdentity(up_sampling2d_1/PartitionedCall:output:0+^conv2d_transpose_1/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs

e
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_4419

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ю
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulе
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(2
resize/ResizeNearestNeighborЄ
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_3805

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
в

F__inference_sequential_2_layer_call_and_return_conditional_losses_5749

inputs+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource
identityЂconv2d_2/BiasAdd/ReadVariableOpЂconv2d_2/Conv2D/ReadVariableOpА
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_2/Conv2D/ReadVariableOpО
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``*
paddingSAME*
strides
2
conv2d_2/Conv2DЇ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpЌ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``2
conv2d_2/BiasAddЉ
conv2d_2/leaky_re_lu/LeakyRelu	LeakyReluconv2d_2/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ``*
alpha%>2 
conv2d_2/leaky_re_lu/LeakyReluи
max_pooling2d_2/MaxPoolMaxPool,conv2d_2/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ00*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolП
IdentityIdentity max_pooling2d_2/MaxPool:output:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`` ::2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ`` 
 
_user_specified_nameinputs
ЃA
ч
?__inference_model_layer_call_and_return_conditional_losses_5129

inputs
sequential_5079
sequential_5081
sequential_1_5084
sequential_1_5086
sequential_2_5089
sequential_2_5091
sequential_3_5094
sequential_3_5096
sequential_4_5099
sequential_4_5101
sequential_5_5105
sequential_5_5107
sequential_6_5111
sequential_6_5113
sequential_7_5117
sequential_7_5119
conv2d_transpose_4_5123
conv2d_transpose_4_5125
identityЂ*conv2d_transpose_4/StatefulPartitionedCallЂ"sequential/StatefulPartitionedCallЂ$sequential_1/StatefulPartitionedCallЂ$sequential_2/StatefulPartitionedCallЂ$sequential_3/StatefulPartitionedCallЂ$sequential_4/StatefulPartitionedCallЂ$sequential_5/StatefulPartitionedCallЂ$sequential_6/StatefulPartitionedCallЂ$sequential_7/StatefulPartitionedCallЂ
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_5079sequential_5081*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_37922$
"sequential/StatefulPartitionedCallЯ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_5084sequential_1_5086*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`` *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_38862&
$sequential_1/StatefulPartitionedCallб
$sequential_2/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0sequential_2_5089sequential_2_5091*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_39802&
$sequential_2/StatefulPartitionedCallб
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_5094sequential_3_5096*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_40742&
$sequential_3/StatefulPartitionedCallу
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_5099sequential_4_5101*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_42102&
$sequential_4/StatefulPartitionedCallК
concatenate/PartitionedCallPartitionedCall-sequential_4/StatefulPartitionedCall:output:0-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48002
concatenate/PartitionedCallк
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0sequential_5_5105sequential_5_5107*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_43442&
$sequential_5/StatefulPartitionedCallО
concatenate/PartitionedCall_1PartitionedCall-sequential_5/StatefulPartitionedCall:output:0-sequential_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48382
concatenate/PartitionedCall_1м
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate/PartitionedCall_1:output:0sequential_6_5111sequential_6_5113*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_6_layer_call_and_return_conditional_losses_44782&
$sequential_6/StatefulPartitionedCallО
concatenate/PartitionedCall_2PartitionedCall-sequential_6/StatefulPartitionedCall:output:0+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48752
concatenate/PartitionedCall_2м
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall&concatenate/PartitionedCall_2:output:0sequential_7_5117sequential_7_5119*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_46122&
$sequential_7/StatefulPartitionedCall
concatenate/PartitionedCall_3PartitionedCall-sequential_7/StatefulPartitionedCall:output:0inputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџA* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_49122
concatenate/PartitionedCall_3њ
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate/PartitionedCall_3:output:0conv2d_transpose_4_5123conv2d_transpose_4_5125*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_46642,
*conv2d_transpose_4/StatefulPartitionedCall
IdentityIdentity3conv2d_transpose_4/StatefulPartitionedCall:output:0+^conv2d_transpose_4/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:џџџџџџџџџ::::::::::::::::::2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall2L
$sequential_6/StatefulPartitionedCall$sequential_6/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


)__inference_sequential_layer_call_fn_3780
conv2d_input
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_37732
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџРР@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameconv2d_input
Ѕ

+__inference_sequential_5_layer_call_fn_6028

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_43252
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs


+__inference_sequential_3_layer_call_fn_4081
conv2d_3_input
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_40742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:џџџџџџџџџ00
(
_user_specified_nameconv2d_3_input
Н
ж
F__inference_sequential_4_layer_call_and_return_conditional_losses_4178
conv2d_transpose_input
conv2d_transpose_4171
conv2d_transpose_4173
identityЂ(conv2d_transpose/StatefulPartitionedCallр
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_inputconv2d_transpose_4171conv2d_transpose_4173*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_41282*
(conv2d_transpose/StatefulPartitionedCallІ
up_sampling2d/PartitionedCallPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_41512
up_sampling2d/PartitionedCallП
IdentityIdentity&up_sampling2d/PartitionedCall:output:0)^conv2d_transpose/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ::2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall:g c
/
_output_shapes
:џџџџџџџџџ
0
_user_specified_nameconv2d_transpose_input
ч
о
F__inference_sequential_7_layer_call_and_return_conditional_losses_4580
conv2d_transpose_3_input
conv2d_transpose_3_4573
conv2d_transpose_3_4575
identityЂ*conv2d_transpose_3/StatefulPartitionedCallь
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_3_inputconv2d_transpose_3_4573conv2d_transpose_3_4575*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_45302,
*conv2d_transpose_3/StatefulPartitionedCallЎ
up_sampling2d_3/PartitionedCallPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_45532!
up_sampling2d_3/PartitionedCallУ
IdentityIdentity(up_sampling2d_3/PartitionedCall:output:0+^conv2d_transpose_3/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР`::2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall:k g
1
_output_shapes
:џџџџџџџџџРР`
2
_user_specified_nameconv2d_transpose_3_input
З
a
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_4522

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
alpha%>2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

Ж
F__inference_sequential_3_layer_call_and_return_conditional_losses_4042
conv2d_3_input
conv2d_3_4035
conv2d_3_4037
identityЂ conv2d_3/StatefulPartitionedCall
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputconv2d_3_4035conv2d_3_4037*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_40142"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_39932!
max_pooling2d_3/PartitionedCallЇ
IdentityIdentity(max_pooling2d_3/PartitionedCall:output:0!^conv2d_3/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall:_ [
/
_output_shapes
:џџџџџџџџџ00
(
_user_specified_nameconv2d_3_input

|
'__inference_conv2d_1_layer_call_fn_6241

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_38262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџРР 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР@::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџРР@
 
_user_specified_nameinputs
в

F__inference_sequential_3_layer_call_and_return_conditional_losses_5803

inputs+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource
identityЂconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpА
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_3/Conv2D/ReadVariableOpО
conv2d_3/Conv2DConv2Dinputs&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
paddingSAME*
strides
2
conv2d_3/Conv2DЇ
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_3/BiasAdd/ReadVariableOpЌ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ002
conv2d_3/BiasAddЉ
conv2d_3/leaky_re_lu/LeakyRelu	LeakyReluconv2d_3/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ00*
alpha%>2 
conv2d_3/leaky_re_lu/LeakyReluи
max_pooling2d_3/MaxPoolMaxPool,conv2d_3/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolП
IdentityIdentity max_pooling2d_3/MaxPool:output:0 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs
§
F
*__inference_leaky_re_lu_layer_call_fn_6301

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_42542
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ

Ў
F__inference_sequential_2_layer_call_and_return_conditional_losses_3980

inputs
conv2d_2_3973
conv2d_2_3975
identityЂ conv2d_2/StatefulPartitionedCall
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_3973conv2d_2_3975*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_39202"
 conv2d_2/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_38992!
max_pooling2d_2/PartitionedCallЇ
IdentityIdentity(max_pooling2d_2/PartitionedCall:output:0!^conv2d_2/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`` ::2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ`` 
 
_user_specified_nameinputs
Ђ
љ
D__inference_sequential_layer_call_and_return_conditional_losses_5665

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource
identityЂconv2d/BiasAdd/ReadVariableOpЂconv2d/Conv2D/ReadVariableOpЊ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOpК
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
conv2d/Conv2DЁ
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpІ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@2
conv2d/BiasAddЅ
conv2d/leaky_re_lu/LeakyRelu	LeakyReluconv2d/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџ@*
alpha%>2
conv2d/leaky_re_lu/LeakyReluд
max_pooling2d/MaxPoolMaxPool*conv2d/leaky_re_lu/LeakyRelu:activations:0*1
_output_shapes
:џџџџџџџџџРР@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolЛ
IdentityIdentitymax_pooling2d/MaxPool:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџРР@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е

1__inference_conv2d_transpose_2_layer_call_fn_4406

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_43962
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
 
_user_specified_nameinputs
э
V
*__inference_concatenate_layer_call_fn_5916
inputs_0
inputs_1
identityи
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48002
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:џџџџџџџџџ00:k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:џџџџџџџџџ00
"
_user_specified_name
inputs/1
Ђ
љ
D__inference_sequential_layer_call_and_return_conditional_losses_5677

inputs)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource
identityЂconv2d/BiasAdd/ReadVariableOpЂconv2d/Conv2D/ReadVariableOpЊ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOpК
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
conv2d/Conv2DЁ
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpІ
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@2
conv2d/BiasAddЅ
conv2d/leaky_re_lu/LeakyRelu	LeakyReluconv2d/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџ@*
alpha%>2
conv2d/leaky_re_lu/LeakyReluд
max_pooling2d/MaxPoolMaxPool*conv2d/leaky_re_lu/LeakyRelu:activations:0*1
_output_shapes
:џџџџџџџџџРР@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolЛ
IdentityIdentitymax_pooling2d/MaxPool:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџРР@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Љ
J
.__inference_up_sampling2d_2_layer_call_fn_4425

inputs
identityъ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_44192
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
у
о
F__inference_sequential_5_layer_call_and_return_conditional_losses_4312
conv2d_transpose_1_input
conv2d_transpose_1_4305
conv2d_transpose_1_4307
identityЂ*conv2d_transpose_1/StatefulPartitionedCallь
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_1_inputconv2d_transpose_1_4305conv2d_transpose_1_4307*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_42622,
*conv2d_transpose_1/StatefulPartitionedCallЎ
up_sampling2d_1/PartitionedCallPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_42852!
up_sampling2d_1/PartitionedCallУ
IdentityIdentity(up_sampling2d_1/PartitionedCall:output:0+^conv2d_transpose_1/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall:i e
/
_output_shapes
:џџџџџџџџџ00
2
_user_specified_nameconv2d_transpose_1_input
Љ

+__inference_sequential_7_layer_call_fn_6192

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_45932
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР`::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџРР`
 
_user_specified_nameinputs
м

F__inference_sequential_1_layer_call_and_return_conditional_losses_5719

inputs+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identityЂconv2d_1/BiasAdd/ReadVariableOpЂconv2d_1/Conv2D/ReadVariableOpА
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02 
conv2d_1/Conv2D/ReadVariableOpР
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР *
paddingSAME*
strides
2
conv2d_1/Conv2DЇ
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOpЎ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџРР 2
conv2d_1/BiasAddЋ
conv2d_1/leaky_re_lu/LeakyRelu	LeakyReluconv2d_1/BiasAdd:output:0*1
_output_shapes
:џџџџџџџџџРР *
alpha%>2 
conv2d_1/leaky_re_lu/LeakyReluи
max_pooling2d_1/MaxPoolMaxPool,conv2d_1/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ`` *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolП
IdentityIdentity max_pooling2d_1/MaxPool:output:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ`` 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР@::2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџРР@
 
_user_specified_nameinputs


+__inference_sequential_3_layer_call_fn_5812

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_40552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs
Ќ
ё
$__inference_model_layer_call_fn_5074
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_50352
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:џџџџџџџџџ::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1
ѕ
V
*__inference_concatenate_layer_call_fn_5955
inputs_0
inputs_1
identityк
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48752
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџРР`2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :џџџџџџџџџРР@:k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:џџџџџџџџџРР@
"
_user_specified_name
inputs/1
у
о
F__inference_sequential_5_layer_call_and_return_conditional_losses_4302
conv2d_transpose_1_input
conv2d_transpose_1_4295
conv2d_transpose_1_4297
identityЂ*conv2d_transpose_1/StatefulPartitionedCallь
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_1_inputconv2d_transpose_1_4295conv2d_transpose_1_4297*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_42622,
*conv2d_transpose_1/StatefulPartitionedCallЎ
up_sampling2d_1/PartitionedCallPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_42852!
up_sampling2d_1/PartitionedCallУ
IdentityIdentity(up_sampling2d_1/PartitionedCall:output:0+^conv2d_transpose_1/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall:i e
/
_output_shapes
:џџџџџџџџџ00
2
_user_specified_nameconv2d_transpose_1_input
­
Ь
F__inference_sequential_6_layer_call_and_return_conditional_losses_4459

inputs
conv2d_transpose_2_4452
conv2d_transpose_2_4454
identityЂ*conv2d_transpose_2/StatefulPartitionedCallк
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_2_4452conv2d_transpose_2_4454*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_43962,
*conv2d_transpose_2/StatefulPartitionedCallЎ
up_sampling2d_2/PartitionedCallPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_44192!
up_sampling2d_2/PartitionedCallУ
IdentityIdentity(up_sampling2d_2/PartitionedCall:output:0+^conv2d_transpose_2/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ``0::2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ``0
 
_user_specified_nameinputs
§.
П
F__inference_sequential_5_layer_call_and_return_conditional_losses_5987

inputs?
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_1_biasadd_readvariableop_resource
identityЂ)conv2d_transpose_1/BiasAdd/ReadVariableOpЂ2conv2d_transpose_1/conv2d_transpose/ReadVariableOpj
conv2d_transpose_1/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_1/Shape
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stack
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2д
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_1/strided_slicez
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :02
conv2d_transpose_1/stack/1z
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :02
conv2d_transpose_1/stack/2z
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/3
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stack
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stackЂ
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1Ђ
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2о
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1ь
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpЊ
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:џџџџџџџџџ00*
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transposeХ
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_1/BiasAdd/ReadVariableOpо
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ002
conv2d_transpose_1/BiasAddЧ
(conv2d_transpose_1/leaky_re_lu/LeakyRelu	LeakyRelu#conv2d_transpose_1/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ00*
alpha%>2*
(conv2d_transpose_1/leaky_re_lu/LeakyRelu
up_sampling2d_1/ShapeShape6conv2d_transpose_1/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_1/Shape
#up_sampling2d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d_1/strided_slice/stack
%up_sampling2d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_1/strided_slice/stack_1
%up_sampling2d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_1/strided_slice/stack_2Ў
up_sampling2d_1/strided_sliceStridedSliceup_sampling2d_1/Shape:output:0,up_sampling2d_1/strided_slice/stack:output:0.up_sampling2d_1/strided_slice/stack_1:output:0.up_sampling2d_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d_1/strided_slice
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const
up_sampling2d_1/mulMul&up_sampling2d_1/strided_slice:output:0up_sampling2d_1/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mul
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor6conv2d_transpose_1/leaky_re_lu/LeakyRelu:activations:0up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:џџџџџџџџџ``*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighborњ
IdentityIdentity=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ``2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs
Н
ж
F__inference_sequential_4_layer_call_and_return_conditional_losses_4168
conv2d_transpose_input
conv2d_transpose_4161
conv2d_transpose_4163
identityЂ(conv2d_transpose/StatefulPartitionedCallр
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_inputconv2d_transpose_4161conv2d_transpose_4163*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_41282*
(conv2d_transpose/StatefulPartitionedCallІ
up_sampling2d/PartitionedCallPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_41512
up_sampling2d/PartitionedCallП
IdentityIdentity&up_sampling2d/PartitionedCall:output:0)^conv2d_transpose/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ::2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall:g c
/
_output_shapes
:џџџџџџџџџ
0
_user_specified_nameconv2d_transpose_input
џ

Ў
F__inference_sequential_3_layer_call_and_return_conditional_losses_4055

inputs
conv2d_3_4048
conv2d_3_4050
identityЂ conv2d_3/StatefulPartitionedCall
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_4048conv2d_3_4050*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_40142"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_39932!
max_pooling2d_3/PartitionedCallЇ
IdentityIdentity(max_pooling2d_3/PartitionedCall:output:0!^conv2d_3/StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs

л
B__inference_conv2d_2_layer_call_and_return_conditional_losses_6252

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``2	
BiasAdd
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ``*
alpha%>2
leaky_re_lu/LeakyReluА
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ``2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`` ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ`` 
 
_user_specified_nameinputs
ј
|
'__inference_conv2d_2_layer_call_fn_6261

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_39202
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ``2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`` ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ`` 
 
_user_specified_nameinputs

q
E__inference_concatenate_layer_call_and_return_conditional_losses_5923
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџA2
concatm
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:џџџџџџџџџA2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:џџџџџџџџџ:k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1


+__inference_sequential_1_layer_call_fn_3893
conv2d_1_input
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`` *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_38862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ`` 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР@::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:џџџџџџџџџРР@
(
_user_specified_nameconv2d_1_input


+__inference_sequential_2_layer_call_fn_3968
conv2d_2_input
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_2_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_39612
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`` ::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:џџџџџџџџџ`` 
(
_user_specified_nameconv2d_2_input
Ѕ

+__inference_sequential_6_layer_call_fn_6110

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_6_layer_call_and_return_conditional_losses_44592
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ``0::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ``0
 
_user_specified_nameinputs

л
B__inference_conv2d_3_layer_call_and_return_conditional_losses_4014

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ002	
BiasAdd
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ00*
alpha%>2
leaky_re_lu/LeakyReluА
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs
З
a
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_4656

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%>2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


+__inference_sequential_2_layer_call_fn_5779

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_39802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ`` ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ`` 
 
_user_specified_nameinputs
Љ
J
.__inference_max_pooling2d_2_layer_call_fn_3905

inputs
identityъ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_38992
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
­
Ь
F__inference_sequential_6_layer_call_and_return_conditional_losses_4478

inputs
conv2d_transpose_2_4471
conv2d_transpose_2_4473
identityЂ*conv2d_transpose_2/StatefulPartitionedCallк
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_2_4471conv2d_transpose_2_4473*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_43962,
*conv2d_transpose_2/StatefulPartitionedCallЎ
up_sampling2d_2/PartitionedCallPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_44192!
up_sampling2d_2/PartitionedCallУ
IdentityIdentity(up_sampling2d_2/PartitionedCall:output:0+^conv2d_transpose_2/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ``0::2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ``0
 
_user_specified_nameinputs
З
a
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6316

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%>2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
§
F
*__inference_leaky_re_lu_layer_call_fn_6321

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_46562
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ѕ

+__inference_sequential_6_layer_call_fn_6119

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_6_layer_call_and_return_conditional_losses_44782
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ``0::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ``0
 
_user_specified_nameinputs
ЃA
ч
?__inference_model_layer_call_and_return_conditional_losses_5035

inputs
sequential_4985
sequential_4987
sequential_1_4990
sequential_1_4992
sequential_2_4995
sequential_2_4997
sequential_3_5000
sequential_3_5002
sequential_4_5005
sequential_4_5007
sequential_5_5011
sequential_5_5013
sequential_6_5017
sequential_6_5019
sequential_7_5023
sequential_7_5025
conv2d_transpose_4_5029
conv2d_transpose_4_5031
identityЂ*conv2d_transpose_4/StatefulPartitionedCallЂ"sequential/StatefulPartitionedCallЂ$sequential_1/StatefulPartitionedCallЂ$sequential_2/StatefulPartitionedCallЂ$sequential_3/StatefulPartitionedCallЂ$sequential_4/StatefulPartitionedCallЂ$sequential_5/StatefulPartitionedCallЂ$sequential_6/StatefulPartitionedCallЂ$sequential_7/StatefulPartitionedCallЂ
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_4985sequential_4987*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_37732$
"sequential/StatefulPartitionedCallЯ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_4990sequential_1_4992*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`` *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_38672&
$sequential_1/StatefulPartitionedCallб
$sequential_2/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0sequential_2_4995sequential_2_4997*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_39612&
$sequential_2/StatefulPartitionedCallб
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_5000sequential_3_5002*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_40552&
$sequential_3/StatefulPartitionedCallу
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_5005sequential_4_5007*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_41912&
$sequential_4/StatefulPartitionedCallК
concatenate/PartitionedCallPartitionedCall-sequential_4/StatefulPartitionedCall:output:0-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48002
concatenate/PartitionedCallк
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0sequential_5_5011sequential_5_5013*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_43252&
$sequential_5/StatefulPartitionedCallО
concatenate/PartitionedCall_1PartitionedCall-sequential_5/StatefulPartitionedCall:output:0-sequential_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48382
concatenate/PartitionedCall_1м
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate/PartitionedCall_1:output:0sequential_6_5017sequential_6_5019*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_6_layer_call_and_return_conditional_losses_44592&
$sequential_6/StatefulPartitionedCallО
concatenate/PartitionedCall_2PartitionedCall-sequential_6/StatefulPartitionedCall:output:0+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48752
concatenate/PartitionedCall_2м
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall&concatenate/PartitionedCall_2:output:0sequential_7_5023sequential_7_5025*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_45932&
$sequential_7/StatefulPartitionedCall
concatenate/PartitionedCall_3PartitionedCall-sequential_7/StatefulPartitionedCall:output:0inputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџA* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_49122
concatenate/PartitionedCall_3њ
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate/PartitionedCall_3:output:0conv2d_transpose_4_5029conv2d_transpose_4_5031*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_46642,
*conv2d_transpose_4/StatefulPartitionedCall
IdentityIdentity3conv2d_transpose_4/StatefulPartitionedCall:output:0+^conv2d_transpose_4/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:џџџџџџџџџ::::::::::::::::::2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall2L
$sequential_6/StatefulPartitionedCall$sequential_6/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

c
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_4151

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ю
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulе
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(2
resize/ResizeNearestNeighborЄ
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3993

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
л

+__inference_sequential_6_layer_call_fn_4485
conv2d_transpose_2_input
unknown
	unknown_0
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_2_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_6_layer_call_and_return_conditional_losses_44782
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ``0::22
StatefulPartitionedCallStatefulPartitionedCall:i e
/
_output_shapes
:џџџџџџџџџ``0
2
_user_specified_nameconv2d_transpose_2_input
п

+__inference_sequential_7_layer_call_fn_4619
conv2d_transpose_3_input
unknown
	unknown_0
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_3_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_46122
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР`::22
StatefulPartitionedCallStatefulPartitionedCall:k g
1
_output_shapes
:џџџџџџџџџРР`
2
_user_specified_nameconv2d_transpose_3_input
е
А
__inference__traced_save_6549
file_prefix8
4savev2_conv2d_transpose_4_kernel_read_readvariableop6
2savev2_conv2d_transpose_4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop6
2savev2_conv2d_transpose_kernel_read_readvariableop4
0savev2_conv2d_transpose_bias_read_readvariableop8
4savev2_conv2d_transpose_1_kernel_read_readvariableop6
2savev2_conv2d_transpose_1_bias_read_readvariableop8
4savev2_conv2d_transpose_2_kernel_read_readvariableop6
2savev2_conv2d_transpose_2_bias_read_readvariableop8
4savev2_conv2d_transpose_3_kernel_read_readvariableop6
2savev2_conv2d_transpose_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop?
;savev2_adam_conv2d_transpose_4_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_4_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop=
9savev2_adam_conv2d_transpose_kernel_m_read_readvariableop;
7savev2_adam_conv2d_transpose_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_1_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_1_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_2_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_2_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_3_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_3_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_4_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_4_bias_v_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop=
9savev2_adam_conv2d_transpose_kernel_v_read_readvariableop;
7savev2_adam_conv2d_transpose_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_1_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_1_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_2_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_2_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_3_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_3_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameі"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*"
valueў!Bћ!BB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*
valueBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesН
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_conv2d_transpose_4_kernel_read_readvariableop2savev2_conv2d_transpose_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop2savev2_conv2d_transpose_kernel_read_readvariableop0savev2_conv2d_transpose_bias_read_readvariableop4savev2_conv2d_transpose_1_kernel_read_readvariableop2savev2_conv2d_transpose_1_bias_read_readvariableop4savev2_conv2d_transpose_2_kernel_read_readvariableop2savev2_conv2d_transpose_2_bias_read_readvariableop4savev2_conv2d_transpose_3_kernel_read_readvariableop2savev2_conv2d_transpose_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop;savev2_adam_conv2d_transpose_4_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_4_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop9savev2_adam_conv2d_transpose_kernel_m_read_readvariableop7savev2_adam_conv2d_transpose_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_1_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_1_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_2_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_2_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_3_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_3_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_4_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_4_bias_v_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop9savev2_adam_conv2d_transpose_kernel_v_read_readvariableop7savev2_adam_conv2d_transpose_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_1_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_1_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_2_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_2_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_3_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *P
dtypesF
D2B	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*З
_input_shapesЅ
Ђ: :A:: : : : : :@:@:@ : : :::::::: 0: :@`:@: : : : : : :A::@:@:@ : : :::::::: 0: :@`:@:A::@:@:@ : : :::::::: 0: :@`:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:A: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 	

_output_shapes
:@:,
(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: 0: 

_output_shapes
: :,(
&
_output_shapes
:@`: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:A: 

_output_shapes
::, (
&
_output_shapes
:@: !

_output_shapes
:@:,"(
&
_output_shapes
:@ : #

_output_shapes
: :,$(
&
_output_shapes
: : %

_output_shapes
::,&(
&
_output_shapes
:: '

_output_shapes
::,((
&
_output_shapes
:: )

_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
::,,(
&
_output_shapes
: 0: -

_output_shapes
: :,.(
&
_output_shapes
:@`: /

_output_shapes
:@:,0(
&
_output_shapes
:A: 1

_output_shapes
::,2(
&
_output_shapes
:@: 3

_output_shapes
:@:,4(
&
_output_shapes
:@ : 5

_output_shapes
: :,6(
&
_output_shapes
: : 7

_output_shapes
::,8(
&
_output_shapes
:: 9

_output_shapes
::,:(
&
_output_shapes
:: ;

_output_shapes
::,<(
&
_output_shapes
:: =

_output_shapes
::,>(
&
_output_shapes
: 0: ?

_output_shapes
: :,@(
&
_output_shapes
:@`: A

_output_shapes
:@:B

_output_shapes
: 
§
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_3711

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
е

+__inference_sequential_4_layer_call_fn_4217
conv2d_transpose_input
unknown
	unknown_0
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_42102
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:g c
/
_output_shapes
:џџџџџџџџџ
0
_user_specified_nameconv2d_transpose_input
§
F
*__inference_leaky_re_lu_layer_call_fn_6291

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_43882
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
в

F__inference_sequential_3_layer_call_and_return_conditional_losses_5791

inputs+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource
identityЂconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpА
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_3/Conv2D/ReadVariableOpО
conv2d_3/Conv2DConv2Dinputs&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
paddingSAME*
strides
2
conv2d_3/Conv2DЇ
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_3/BiasAdd/ReadVariableOpЌ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ002
conv2d_3/BiasAddЉ
conv2d_3/leaky_re_lu/LeakyRelu	LeakyReluconv2d_3/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ00*
alpha%>2 
conv2d_3/leaky_re_lu/LeakyReluи
max_pooling2d_3/MaxPoolMaxPool,conv2d_3/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolП
IdentityIdentity max_pooling2d_3/MaxPool:output:0 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs

л
B__inference_conv2d_3_layer_call_and_return_conditional_losses_6272

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ00*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ002	
BiasAdd
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ00*
alpha%>2
leaky_re_lu/LeakyReluА
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ002

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ00::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ00
 
_user_specified_nameinputs
/
П
F__inference_sequential_6_layer_call_and_return_conditional_losses_6069

inputs?
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_2_biasadd_readvariableop_resource
identityЂ)conv2d_transpose_2/BiasAdd/ReadVariableOpЂ2conv2d_transpose_2/conv2d_transpose/ReadVariableOpj
conv2d_transpose_2/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_2/Shape
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_2/strided_slice/stack
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_1
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_2д
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_2/strided_slicez
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_2/stack/1z
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :`2
conv2d_transpose_2/stack/2z
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_2/stack/3
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_2/stack
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_2/strided_slice_1/stackЂ
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_1Ђ
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_2о
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_2/strided_slice_1ь
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: 0*
dtype024
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpЊ
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:џџџџџџџџџ`` *
paddingSAME*
strides
2%
#conv2d_transpose_2/conv2d_transposeХ
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)conv2d_transpose_2/BiasAdd/ReadVariableOpо
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ`` 2
conv2d_transpose_2/BiasAddЧ
(conv2d_transpose_2/leaky_re_lu/LeakyRelu	LeakyRelu#conv2d_transpose_2/BiasAdd:output:0*/
_output_shapes
:џџџџџџџџџ`` *
alpha%>2*
(conv2d_transpose_2/leaky_re_lu/LeakyRelu
up_sampling2d_2/ShapeShape6conv2d_transpose_2/leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:2
up_sampling2d_2/Shape
#up_sampling2d_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#up_sampling2d_2/strided_slice/stack
%up_sampling2d_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_2/strided_slice/stack_1
%up_sampling2d_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%up_sampling2d_2/strided_slice/stack_2Ў
up_sampling2d_2/strided_sliceStridedSliceup_sampling2d_2/Shape:output:0,up_sampling2d_2/strided_slice/stack:output:0.up_sampling2d_2/strided_slice/stack_1:output:0.up_sampling2d_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
up_sampling2d_2/strided_slice
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_2/Const
up_sampling2d_2/mulMul&up_sampling2d_2/strided_slice:output:0up_sampling2d_2/Const:output:0*
T0*
_output_shapes
:2
up_sampling2d_2/mul
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighbor6conv2d_transpose_2/leaky_re_lu/LeakyRelu:activations:0up_sampling2d_2/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџРР *
half_pixel_centers(2.
,up_sampling2d_2/resize/ResizeNearestNeighborќ
IdentityIdentity=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*
T0*1
_output_shapes
:џџџџџџџџџРР 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ``0::2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ``0
 
_user_specified_nameinputs
п

+__inference_sequential_7_layer_call_fn_4600
conv2d_transpose_3_input
unknown
	unknown_0
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_3_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_45932
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџРР`::22
StatefulPartitionedCallStatefulPartitionedCall:k g
1
_output_shapes
:џџџџџџџџџРР`
2
_user_specified_nameconv2d_transpose_3_input
е

1__inference_conv2d_transpose_3_layer_call_fn_4540

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_45302
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
 
_user_specified_nameinputs
ч

І
D__inference_sequential_layer_call_and_return_conditional_losses_3773

inputs
conv2d_3766
conv2d_3768
identityЂconv2d/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3766conv2d_3768*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_37322 
conv2d/StatefulPartitionedCall
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_37112
max_pooling2d/PartitionedCallЅ
IdentityIdentity&max_pooling2d/PartitionedCall:output:0^conv2d/StatefulPartitionedCall*
T0*1
_output_shapes
:џџџџџџџџџРР@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:џџџџџџџџџ::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѕ
H
,__inference_max_pooling2d_layer_call_fn_3717

inputs
identityш
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_37112
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
З
a
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_4388

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
alpha%>2
	LeakyRelu
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
ЇA
ш
?__inference_model_layer_call_and_return_conditional_losses_4979
input_1
sequential_4929
sequential_4931
sequential_1_4934
sequential_1_4936
sequential_2_4939
sequential_2_4941
sequential_3_4944
sequential_3_4946
sequential_4_4949
sequential_4_4951
sequential_5_4955
sequential_5_4957
sequential_6_4961
sequential_6_4963
sequential_7_4967
sequential_7_4969
conv2d_transpose_4_4973
conv2d_transpose_4_4975
identityЂ*conv2d_transpose_4/StatefulPartitionedCallЂ"sequential/StatefulPartitionedCallЂ$sequential_1/StatefulPartitionedCallЂ$sequential_2/StatefulPartitionedCallЂ$sequential_3/StatefulPartitionedCallЂ$sequential_4/StatefulPartitionedCallЂ$sequential_5/StatefulPartitionedCallЂ$sequential_6/StatefulPartitionedCallЂ$sequential_7/StatefulPartitionedCallЃ
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_4929sequential_4931*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_37922$
"sequential/StatefulPartitionedCallЯ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_4934sequential_1_4936*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ`` *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_38862&
$sequential_1/StatefulPartitionedCallб
$sequential_2/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0sequential_2_4939sequential_2_4941*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_39802&
$sequential_2/StatefulPartitionedCallб
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_4944sequential_3_4946*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_40742&
$sequential_3/StatefulPartitionedCallу
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_4949sequential_4_4951*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_4_layer_call_and_return_conditional_losses_42102&
$sequential_4/StatefulPartitionedCallК
concatenate/PartitionedCallPartitionedCall-sequential_4/StatefulPartitionedCall:output:0-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48002
concatenate/PartitionedCallк
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0sequential_5_4955sequential_5_4957*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_5_layer_call_and_return_conditional_losses_43442&
$sequential_5/StatefulPartitionedCallО
concatenate/PartitionedCall_1PartitionedCall-sequential_5/StatefulPartitionedCall:output:0-sequential_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48382
concatenate/PartitionedCall_1м
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate/PartitionedCall_1:output:0sequential_6_4961sequential_6_4963*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_6_layer_call_and_return_conditional_losses_44782&
$sequential_6/StatefulPartitionedCallО
concatenate/PartitionedCall_2PartitionedCall-sequential_6/StatefulPartitionedCall:output:0+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџРР`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_48752
concatenate/PartitionedCall_2м
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall&concatenate/PartitionedCall_2:output:0sequential_7_4967sequential_7_4969*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_46122&
$sequential_7/StatefulPartitionedCall
concatenate/PartitionedCall_3PartitionedCall-sequential_7/StatefulPartitionedCall:output:0input_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџA* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_49122
concatenate/PartitionedCall_3њ
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate/PartitionedCall_3:output:0conv2d_transpose_4_4973conv2d_transpose_4_4975*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_46642,
*conv2d_transpose_4/StatefulPartitionedCall
IdentityIdentity3conv2d_transpose_4/StatefulPartitionedCall:output:0+^conv2d_transpose_4/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*x
_input_shapesg
e:џџџџџџџџџ::::::::::::::::::2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall2L
$sequential_6/StatefulPartitionedCall$sequential_6/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	input_1"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Щ
serving_defaultЕ
E
input_1:
serving_default_input_1:0џџџџџџџџџP
conv2d_transpose_4:
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:НЯ
к
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
ч_default_save_signature
+ш&call_and_return_all_conditional_losses
щ__call__"Ие
_tf_keras_networkе{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 384, 384, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 384, 384, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}, "name": "sequential", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 192, 192, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}, "name": "sequential_1", "inbound_nodes": [[["sequential", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 96, 96, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}, "name": "sequential_2", "inbound_nodes": [[["sequential_1", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 16]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_3_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}, "name": "sequential_3", "inbound_nodes": [[["sequential_2", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 24, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}, "name": "sequential_4", "inbound_nodes": [[["sequential_3", 1, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["sequential_4", 1, 0, {}], ["sequential_2", 1, 0, {}]], [["sequential_5", 1, 0, {}], ["sequential_1", 1, 0, {}]], [["sequential_6", 1, 0, {}], ["sequential", 1, 0, {}]], [["sequential_7", 1, 0, {}], ["input_1", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 24]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_1_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}, "name": "sequential_5", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 96, 96, 48]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_2_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}, "name": "sequential_6", "inbound_nodes": [[["concatenate", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 192, 192, 96]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_3_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}, "name": "sequential_7", "inbound_nodes": [[["concatenate", 2, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_4", "inbound_nodes": [[["concatenate", 3, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["conv2d_transpose_4", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 384, 384, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 384, 384, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 384, 384, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 384, 384, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}, "name": "sequential", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 192, 192, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}, "name": "sequential_1", "inbound_nodes": [[["sequential", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 96, 96, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}, "name": "sequential_2", "inbound_nodes": [[["sequential_1", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 16]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_3_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}, "name": "sequential_3", "inbound_nodes": [[["sequential_2", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 24, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}, "name": "sequential_4", "inbound_nodes": [[["sequential_3", 1, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["sequential_4", 1, 0, {}], ["sequential_2", 1, 0, {}]], [["sequential_5", 1, 0, {}], ["sequential_1", 1, 0, {}]], [["sequential_6", 1, 0, {}], ["sequential", 1, 0, {}]], [["sequential_7", 1, 0, {}], ["input_1", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 24]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_1_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}, "name": "sequential_5", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 96, 96, 48]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_2_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}, "name": "sequential_6", "inbound_nodes": [[["concatenate", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 192, 192, 96]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_3_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}, "name": "sequential_7", "inbound_nodes": [[["concatenate", 2, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_4", "inbound_nodes": [[["concatenate", 3, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["conv2d_transpose_4", 0, 0]]}}, "training_config": {"loss": {"class_name": "MeanSquaredError", "config": {"reduction": "auto", "name": "mean_squared_error"}}, "metrics": [[{"class_name": "MeanSquaredError", "config": {"name": "mean_squared_error", "dtype": "float32"}}, {"class_name": "Accuracy", "config": {"name": "accuracy", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-06, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
§"њ
_tf_keras_input_layerк{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 384, 384, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 384, 384, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
Щ
layer_with_weights-0
layer-0
layer-1
trainable_variables
regularization_losses
	variables
	keras_api
+ъ&call_and_return_all_conditional_losses
ы__call__"
_tf_keras_sequentialх{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 384, 384, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 384, 384, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 384, 384, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}}}
п
layer_with_weights-0
layer-0
layer-1
trainable_variables
regularization_losses
	variables
	keras_api
+ь&call_and_return_all_conditional_losses
э__call__"
_tf_keras_sequentialћ{"class_name": "Sequential", "name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 192, 192, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 192, 192, 64]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 192, 192, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}}}
й
layer_with_weights-0
layer-0
layer-1
 trainable_variables
!regularization_losses
"	variables
#	keras_api
+ю&call_and_return_all_conditional_losses
я__call__"
_tf_keras_sequentialѕ{"class_name": "Sequential", "name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 96, 96, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 96, 32]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 96, 96, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}}}
з
$layer_with_weights-0
$layer-0
%layer-1
&trainable_variables
'regularization_losses
(	variables
)	keras_api
+№&call_and_return_all_conditional_losses
ё__call__"
_tf_keras_sequentialѓ{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 16]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_3_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 16]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 16]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_3_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}]}}}
Х
*layer_with_weights-0
*layer-0
+layer-1
,trainable_variables
-regularization_losses
.	variables
/	keras_api
+ђ&call_and_return_all_conditional_losses
ѓ__call__"
_tf_keras_sequentialс{"class_name": "Sequential", "name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 24, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 8]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 24, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}}}
к
0trainable_variables
1regularization_losses
2	variables
3	keras_api
+є&call_and_return_all_conditional_losses
ѕ__call__"Щ
_tf_keras_layerЏ{"class_name": "Concatenate", "name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 48, 48, 8]}, {"class_name": "TensorShape", "items": [null, 48, 48, 16]}]}
з
4layer_with_weights-0
4layer-0
5layer-1
6trainable_variables
7regularization_losses
8	variables
9	keras_api
+і&call_and_return_all_conditional_losses
ї__call__"
_tf_keras_sequentialѓ{"class_name": "Sequential", "name": "sequential_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 24]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_1_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 24}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 24]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 24]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_1_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}}}
з
:layer_with_weights-0
:layer-0
;layer-1
<trainable_variables
=regularization_losses
>	variables
?	keras_api
+ј&call_and_return_all_conditional_losses
љ__call__"
_tf_keras_sequentialѓ{"class_name": "Sequential", "name": "sequential_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 96, 96, 48]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_2_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 96, 48]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 96, 96, 48]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_2_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}}}
н
@layer_with_weights-0
@layer-0
Alayer-1
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
+њ&call_and_return_all_conditional_losses
ћ__call__"
_tf_keras_sequentialљ{"class_name": "Sequential", "name": "sequential_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 192, 192, 96]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_3_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 192, 192, 96]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 192, 192, 96]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_3_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}]}}}
З
F
activation

Gkernel
Hbias
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
+ќ&call_and_return_all_conditional_losses
§__call__"

_tf_keras_layerц	{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 65}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 384, 384, 65]}}
Л
Miter

Nbeta_1

Obeta_2
	Pdecay
Qlearning_rateGmУHmФRmХSmЦTmЧUmШVmЩWmЪXmЫYmЬZmЭ[mЮ\mЯ]mа^mб_mв`mгamдGvеHvжRvзSvиTvйUvкVvлWvмXvнYvоZvп[vр\vс]vт^vу_vф`vхavц"
	optimizer
І
R0
S1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10
]11
^12
_13
`14
a15
G16
H17"
trackable_list_wrapper
 "
trackable_list_wrapper
І
R0
S1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10
]11
^12
_13
`14
a15
G16
H17"
trackable_list_wrapper
Ю
bmetrics
clayer_regularization_losses
trainable_variables
regularization_losses
dnon_trainable_variables
elayer_metrics

flayers
	variables
щ__call__
ч_default_save_signature
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
-
ўserving_default"
signature_map
§

F
activation

Rkernel
Sbias
gtrainable_variables
hregularization_losses
i	variables
j	keras_api
+џ&call_and_return_all_conditional_losses
__call__"Ц	
_tf_keras_layerЌ	{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 384, 384, 1]}}
§
ktrainable_variables
lregularization_losses
m	variables
n	keras_api
+&call_and_return_all_conditional_losses
__call__"ь
_tf_keras_layerв{"class_name": "MaxPooling2D", "name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
А
ometrics
player_regularization_losses
trainable_variables
regularization_losses
qnon_trainable_variables
rlayer_metrics

slayers
	variables
ы__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object

F
activation

Tkernel
Ubias
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
+&call_and_return_all_conditional_losses
__call__"Ь	
_tf_keras_layerВ	{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 192, 192, 64]}}

xtrainable_variables
yregularization_losses
z	variables
{	keras_api
+&call_and_return_all_conditional_losses
__call__"№
_tf_keras_layerж{"class_name": "MaxPooling2D", "name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
Б
|metrics
}layer_regularization_losses
trainable_variables
regularization_losses
~non_trainable_variables
layer_metrics
layers
	variables
э__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object

F
activation

Vkernel
Wbias
trainable_variables
regularization_losses
	variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"Ъ	
_tf_keras_layerА	{"class_name": "Conv2D", "name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 96, 32]}}

trainable_variables
regularization_losses
	variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"№
_tf_keras_layerж{"class_name": "MaxPooling2D", "name": "max_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
Е
metrics
 layer_regularization_losses
 trainable_variables
!regularization_losses
non_trainable_variables
layer_metrics
layers
"	variables
я__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object

F
activation

Xkernel
Ybias
trainable_variables
regularization_losses
	variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"Щ	
_tf_keras_layerЏ	{"class_name": "Conv2D", "name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 16]}}

trainable_variables
regularization_losses
	variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"№
_tf_keras_layerж{"class_name": "MaxPooling2D", "name": "max_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
Е
metrics
 layer_regularization_losses
&trainable_variables
'regularization_losses
non_trainable_variables
layer_metrics
layers
(	variables
ё__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
Г
F
activation

Zkernel
[bias
trainable_variables
regularization_losses
	variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"ј	
_tf_keras_layerо	{"class_name": "Conv2DTranspose", "name": "conv2d_transpose", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 8]}}
Ы
trainable_variables
 regularization_losses
Ё	variables
Ђ	keras_api
+&call_and_return_all_conditional_losses
__call__"Ж
_tf_keras_layer{"class_name": "UpSampling2D", "name": "up_sampling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
Е
Ѓmetrics
 Єlayer_regularization_losses
,trainable_variables
-regularization_losses
Ѕnon_trainable_variables
Іlayer_metrics
Їlayers
.	variables
ѓ__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Јmetrics
 Љlayer_regularization_losses
0trainable_variables
1regularization_losses
Њnon_trainable_variables
Ћlayer_metrics
Ќlayers
2	variables
ѕ__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
К
F
activation

\kernel
]bias
­trainable_variables
Ўregularization_losses
Џ	variables
А	keras_api
+&call_and_return_all_conditional_losses
__call__"џ	
_tf_keras_layerх	{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 24}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 24]}}
Я
Бtrainable_variables
Вregularization_losses
Г	variables
Д	keras_api
+&call_and_return_all_conditional_losses
__call__"К
_tf_keras_layer {"class_name": "UpSampling2D", "name": "up_sampling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
Е
Еmetrics
 Жlayer_regularization_losses
6trainable_variables
7regularization_losses
Зnon_trainable_variables
Иlayer_metrics
Йlayers
8	variables
ї__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
К
F
activation

^kernel
_bias
Кtrainable_variables
Лregularization_losses
М	variables
Н	keras_api
+&call_and_return_all_conditional_losses
__call__"џ	
_tf_keras_layerх	{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 96, 48]}}
Я
Оtrainable_variables
Пregularization_losses
Р	variables
С	keras_api
+&call_and_return_all_conditional_losses
__call__"К
_tf_keras_layer {"class_name": "UpSampling2D", "name": "up_sampling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
Е
Тmetrics
 Уlayer_regularization_losses
<trainable_variables
=regularization_losses
Фnon_trainable_variables
Хlayer_metrics
Цlayers
>	variables
љ__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
М
F
activation

`kernel
abias
Чtrainable_variables
Шregularization_losses
Щ	variables
Ъ	keras_api
+&call_and_return_all_conditional_losses
__call__"

_tf_keras_layerч	{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 192, 192, 96]}}
Я
Ыtrainable_variables
Ьregularization_losses
Э	variables
Ю	keras_api
+&call_and_return_all_conditional_losses
__call__"К
_tf_keras_layer {"class_name": "UpSampling2D", "name": "up_sampling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "up_sampling2d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
Е
Яmetrics
 аlayer_regularization_losses
Btrainable_variables
Cregularization_losses
бnon_trainable_variables
вlayer_metrics
гlayers
D	variables
ћ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
р
дtrainable_variables
еregularization_losses
ж	variables
з	keras_api
+&call_and_return_all_conditional_losses
 __call__"Ы
_tf_keras_layerБ{"class_name": "LeakyReLU", "name": "leaky_re_lu", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "leaky_re_lu", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}
3:1A2conv2d_transpose_4/kernel
%:#2conv2d_transpose_4/bias
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
Е
иmetrics
 йlayer_regularization_losses
Itrainable_variables
Jregularization_losses
кnon_trainable_variables
лlayer_metrics
мlayers
K	variables
§__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
':%@2conv2d/kernel
:@2conv2d/bias
):'@ 2conv2d_1/kernel
: 2conv2d_1/bias
):' 2conv2d_2/kernel
:2conv2d_2/bias
):'2conv2d_3/kernel
:2conv2d_3/bias
1:/2conv2d_transpose/kernel
#:!2conv2d_transpose/bias
3:12conv2d_transpose_1/kernel
%:#2conv2d_transpose_1/bias
3:1 02conv2d_transpose_2/kernel
%:# 2conv2d_transpose_2/bias
3:1@`2conv2d_transpose_3/kernel
%:#@2conv2d_transpose_3/bias
8
н0
о1
п2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
Е
рmetrics
 сlayer_regularization_losses
gtrainable_variables
hregularization_losses
тnon_trainable_variables
уlayer_metrics
фlayers
i	variables
__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
хmetrics
 цlayer_regularization_losses
ktrainable_variables
lregularization_losses
чnon_trainable_variables
шlayer_metrics
щlayers
m	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
Е
ъmetrics
 ыlayer_regularization_losses
ttrainable_variables
uregularization_losses
ьnon_trainable_variables
эlayer_metrics
юlayers
v	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
яmetrics
 №layer_regularization_losses
xtrainable_variables
yregularization_losses
ёnon_trainable_variables
ђlayer_metrics
ѓlayers
z	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
И
єmetrics
 ѕlayer_regularization_losses
trainable_variables
regularization_losses
іnon_trainable_variables
їlayer_metrics
јlayers
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
љmetrics
 њlayer_regularization_losses
trainable_variables
regularization_losses
ћnon_trainable_variables
ќlayer_metrics
§layers
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
И
ўmetrics
 џlayer_regularization_losses
trainable_variables
regularization_losses
non_trainable_variables
layer_metrics
layers
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
metrics
 layer_regularization_losses
trainable_variables
regularization_losses
non_trainable_variables
layer_metrics
layers
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
$0
%1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
И
metrics
 layer_regularization_losses
trainable_variables
regularization_losses
non_trainable_variables
layer_metrics
layers
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
metrics
 layer_regularization_losses
trainable_variables
 regularization_losses
non_trainable_variables
layer_metrics
layers
Ё	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
И
metrics
 layer_regularization_losses
­trainable_variables
Ўregularization_losses
non_trainable_variables
layer_metrics
layers
Џ	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
metrics
 layer_regularization_losses
Бtrainable_variables
Вregularization_losses
non_trainable_variables
layer_metrics
layers
Г	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
40
51"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
И
metrics
 layer_regularization_losses
Кtrainable_variables
Лregularization_losses
non_trainable_variables
layer_metrics
 layers
М	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ёmetrics
 Ђlayer_regularization_losses
Оtrainable_variables
Пregularization_losses
Ѓnon_trainable_variables
Єlayer_metrics
Ѕlayers
Р	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
И
Іmetrics
 Їlayer_regularization_losses
Чtrainable_variables
Шregularization_losses
Јnon_trainable_variables
Љlayer_metrics
Њlayers
Щ	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ћmetrics
 Ќlayer_regularization_losses
Ыtrainable_variables
Ьregularization_losses
­non_trainable_variables
Ўlayer_metrics
Џlayers
Э	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Аmetrics
 Бlayer_regularization_losses
дtrainable_variables
еregularization_losses
Вnon_trainable_variables
Гlayer_metrics
Дlayers
ж	variables
 __call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
F0"
trackable_list_wrapper
П

Еtotal

Жcount
З	variables
И	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
љ

Йtotal

Кcount
Л
_fn_kwargs
М	variables
Н	keras_api"­
_tf_keras_metric{"class_name": "MeanSquaredError", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32"}}
м

Оtotal

Пcount
Р
_fn_kwargs
С	variables
Т	keras_api"
_tf_keras_metricv{"class_name": "Accuracy", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32"}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
Е0
Ж1"
trackable_list_wrapper
.
З	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Й0
К1"
trackable_list_wrapper
.
М	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
О0
П1"
trackable_list_wrapper
.
С	variables"
_generic_user_object
8:6A2 Adam/conv2d_transpose_4/kernel/m
*:(2Adam/conv2d_transpose_4/bias/m
,:*@2Adam/conv2d/kernel/m
:@2Adam/conv2d/bias/m
.:,@ 2Adam/conv2d_1/kernel/m
 : 2Adam/conv2d_1/bias/m
.:, 2Adam/conv2d_2/kernel/m
 :2Adam/conv2d_2/bias/m
.:,2Adam/conv2d_3/kernel/m
 :2Adam/conv2d_3/bias/m
6:42Adam/conv2d_transpose/kernel/m
(:&2Adam/conv2d_transpose/bias/m
8:62 Adam/conv2d_transpose_1/kernel/m
*:(2Adam/conv2d_transpose_1/bias/m
8:6 02 Adam/conv2d_transpose_2/kernel/m
*:( 2Adam/conv2d_transpose_2/bias/m
8:6@`2 Adam/conv2d_transpose_3/kernel/m
*:(@2Adam/conv2d_transpose_3/bias/m
8:6A2 Adam/conv2d_transpose_4/kernel/v
*:(2Adam/conv2d_transpose_4/bias/v
,:*@2Adam/conv2d/kernel/v
:@2Adam/conv2d/bias/v
.:,@ 2Adam/conv2d_1/kernel/v
 : 2Adam/conv2d_1/bias/v
.:, 2Adam/conv2d_2/kernel/v
 :2Adam/conv2d_2/bias/v
.:,2Adam/conv2d_3/kernel/v
 :2Adam/conv2d_3/bias/v
6:42Adam/conv2d_transpose/kernel/v
(:&2Adam/conv2d_transpose/bias/v
8:62 Adam/conv2d_transpose_1/kernel/v
*:(2Adam/conv2d_transpose_1/bias/v
8:6 02 Adam/conv2d_transpose_2/kernel/v
*:( 2Adam/conv2d_transpose_2/bias/v
8:6@`2 Adam/conv2d_transpose_3/kernel/v
*:(@2Adam/conv2d_transpose_3/bias/v
ч2ф
__inference__wrapped_model_3705Р
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *0Ђ-
+(
input_1џџџџџџџџџ
Ъ2Ч
?__inference_model_layer_call_and_return_conditional_losses_5395
?__inference_model_layer_call_and_return_conditional_losses_4926
?__inference_model_layer_call_and_return_conditional_losses_5571
?__inference_model_layer_call_and_return_conditional_losses_4979Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
о2л
$__inference_model_layer_call_fn_5653
$__inference_model_layer_call_fn_5612
$__inference_model_layer_call_fn_5074
$__inference_model_layer_call_fn_5168Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
о2л
D__inference_sequential_layer_call_and_return_conditional_losses_5677
D__inference_sequential_layer_call_and_return_conditional_losses_5665
D__inference_sequential_layer_call_and_return_conditional_losses_3750
D__inference_sequential_layer_call_and_return_conditional_losses_3760Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ђ2я
)__inference_sequential_layer_call_fn_5686
)__inference_sequential_layer_call_fn_5695
)__inference_sequential_layer_call_fn_3799
)__inference_sequential_layer_call_fn_3780Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ц2у
F__inference_sequential_1_layer_call_and_return_conditional_losses_5707
F__inference_sequential_1_layer_call_and_return_conditional_losses_3854
F__inference_sequential_1_layer_call_and_return_conditional_losses_5719
F__inference_sequential_1_layer_call_and_return_conditional_losses_3844Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
њ2ї
+__inference_sequential_1_layer_call_fn_5737
+__inference_sequential_1_layer_call_fn_3893
+__inference_sequential_1_layer_call_fn_5728
+__inference_sequential_1_layer_call_fn_3874Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ц2у
F__inference_sequential_2_layer_call_and_return_conditional_losses_3938
F__inference_sequential_2_layer_call_and_return_conditional_losses_5749
F__inference_sequential_2_layer_call_and_return_conditional_losses_5761
F__inference_sequential_2_layer_call_and_return_conditional_losses_3948Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
њ2ї
+__inference_sequential_2_layer_call_fn_5770
+__inference_sequential_2_layer_call_fn_5779
+__inference_sequential_2_layer_call_fn_3987
+__inference_sequential_2_layer_call_fn_3968Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ц2у
F__inference_sequential_3_layer_call_and_return_conditional_losses_5791
F__inference_sequential_3_layer_call_and_return_conditional_losses_5803
F__inference_sequential_3_layer_call_and_return_conditional_losses_4042
F__inference_sequential_3_layer_call_and_return_conditional_losses_4032Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
њ2ї
+__inference_sequential_3_layer_call_fn_5812
+__inference_sequential_3_layer_call_fn_5821
+__inference_sequential_3_layer_call_fn_4081
+__inference_sequential_3_layer_call_fn_4062Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ц2у
F__inference_sequential_4_layer_call_and_return_conditional_losses_4178
F__inference_sequential_4_layer_call_and_return_conditional_losses_5885
F__inference_sequential_4_layer_call_and_return_conditional_losses_4168
F__inference_sequential_4_layer_call_and_return_conditional_losses_5853Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
њ2ї
+__inference_sequential_4_layer_call_fn_4217
+__inference_sequential_4_layer_call_fn_5894
+__inference_sequential_4_layer_call_fn_4198
+__inference_sequential_4_layer_call_fn_5903Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ф2С
E__inference_concatenate_layer_call_and_return_conditional_losses_5910
E__inference_concatenate_layer_call_and_return_conditional_losses_5923
E__inference_concatenate_layer_call_and_return_conditional_losses_5936
E__inference_concatenate_layer_call_and_return_conditional_losses_5949Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
и2е
*__inference_concatenate_layer_call_fn_5955
*__inference_concatenate_layer_call_fn_5929
*__inference_concatenate_layer_call_fn_5916
*__inference_concatenate_layer_call_fn_5942Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ц2у
F__inference_sequential_5_layer_call_and_return_conditional_losses_4312
F__inference_sequential_5_layer_call_and_return_conditional_losses_5987
F__inference_sequential_5_layer_call_and_return_conditional_losses_6019
F__inference_sequential_5_layer_call_and_return_conditional_losses_4302Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
њ2ї
+__inference_sequential_5_layer_call_fn_6037
+__inference_sequential_5_layer_call_fn_6028
+__inference_sequential_5_layer_call_fn_4351
+__inference_sequential_5_layer_call_fn_4332Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ц2у
F__inference_sequential_6_layer_call_and_return_conditional_losses_6101
F__inference_sequential_6_layer_call_and_return_conditional_losses_4446
F__inference_sequential_6_layer_call_and_return_conditional_losses_6069
F__inference_sequential_6_layer_call_and_return_conditional_losses_4436Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
њ2ї
+__inference_sequential_6_layer_call_fn_6119
+__inference_sequential_6_layer_call_fn_6110
+__inference_sequential_6_layer_call_fn_4485
+__inference_sequential_6_layer_call_fn_4466Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ц2у
F__inference_sequential_7_layer_call_and_return_conditional_losses_6151
F__inference_sequential_7_layer_call_and_return_conditional_losses_6183
F__inference_sequential_7_layer_call_and_return_conditional_losses_4580
F__inference_sequential_7_layer_call_and_return_conditional_losses_4570Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
њ2ї
+__inference_sequential_7_layer_call_fn_6201
+__inference_sequential_7_layer_call_fn_6192
+__inference_sequential_7_layer_call_fn_4619
+__inference_sequential_7_layer_call_fn_4600Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ћ2Ј
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_4664з
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџA
2
1__inference_conv2d_transpose_4_layer_call_fn_4674з
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџA
ЩBЦ
"__inference_signature_wrapper_5219input_1"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъ2ч
@__inference_conv2d_layer_call_and_return_conditional_losses_6212Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Я2Ь
%__inference_conv2d_layer_call_fn_6221Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Џ2Ќ
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_3711р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
,__inference_max_pooling2d_layer_call_fn_3717р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
ь2щ
B__inference_conv2d_1_layer_call_and_return_conditional_losses_6232Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
б2Ю
'__inference_conv2d_1_layer_call_fn_6241Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Б2Ў
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_3805р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
.__inference_max_pooling2d_1_layer_call_fn_3811р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
ь2щ
B__inference_conv2d_2_layer_call_and_return_conditional_losses_6252Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
б2Ю
'__inference_conv2d_2_layer_call_fn_6261Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Б2Ў
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3899р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
.__inference_max_pooling2d_2_layer_call_fn_3905р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
ь2щ
B__inference_conv2d_3_layer_call_and_return_conditional_losses_6272Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
б2Ю
'__inference_conv2d_3_layer_call_fn_6281Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Б2Ў
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3993р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
.__inference_max_pooling2d_3_layer_call_fn_3999р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Љ2І
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_4128з
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
/__inference_conv2d_transpose_layer_call_fn_4138з
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Џ2Ќ
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_4151р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
,__inference_up_sampling2d_layer_call_fn_4157р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ћ2Ј
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_4262з
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
1__inference_conv2d_transpose_1_layer_call_fn_4272з
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Б2Ў
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_4285р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
.__inference_up_sampling2d_1_layer_call_fn_4291р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ћ2Ј
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_4396з
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
2
1__inference_conv2d_transpose_2_layer_call_fn_4406з
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
Б2Ў
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_4419р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
.__inference_up_sampling2d_2_layer_call_fn_4425р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ћ2Ј
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_4530з
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
2
1__inference_conv2d_transpose_3_layer_call_fn_4540з
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *7Ђ4
2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
Б2Ў
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_4553р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
.__inference_up_sampling2d_3_layer_call_fn_4559р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
2
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6296
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6306
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6326
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6316
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6286Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
*__inference_leaky_re_lu_layer_call_fn_6301
*__inference_leaky_re_lu_layer_call_fn_6331
*__inference_leaky_re_lu_layer_call_fn_6291
*__inference_leaky_re_lu_layer_call_fn_6311
*__inference_leaky_re_lu_layer_call_fn_6321Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 Ч
__inference__wrapped_model_3705ЃRSTUVWXYZ[\]^_`aGH:Ђ7
0Ђ-
+(
input_1џџџџџџџџџ
Њ "QЊN
L
conv2d_transpose_463
conv2d_transpose_4џџџџџџџџџї
E__inference_concatenate_layer_call_and_return_conditional_losses_5910­|Ђy
rЂo
mj
<9
inputs/0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*'
inputs/1џџџџџџџџџ00
Њ "-Ђ*
# 
0џџџџџџџџџ00
 ћ
E__inference_concatenate_layer_call_and_return_conditional_losses_5923Б~Ђ{
tЂq
ol
<9
inputs/0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
,)
inputs/1џџџџџџџџџ
Њ "/Ђ,
%"
0џџџџџџџџџA
 ї
E__inference_concatenate_layer_call_and_return_conditional_losses_5936­|Ђy
rЂo
mj
<9
inputs/0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*'
inputs/1џџџџџџџџџ`` 
Њ "-Ђ*
# 
0џџџџџџџџџ``0
 ћ
E__inference_concatenate_layer_call_and_return_conditional_losses_5949Б~Ђ{
tЂq
ol
<9
inputs/0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
,)
inputs/1џџџџџџџџџРР@
Њ "/Ђ,
%"
0џџџџџџџџџРР`
 Я
*__inference_concatenate_layer_call_fn_5916 |Ђy
rЂo
mj
<9
inputs/0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*'
inputs/1џџџџџџџџџ00
Њ " џџџџџџџџџ00г
*__inference_concatenate_layer_call_fn_5929Є~Ђ{
tЂq
ol
<9
inputs/0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
,)
inputs/1џџџџџџџџџ
Њ ""џџџџџџџџџAЯ
*__inference_concatenate_layer_call_fn_5942 |Ђy
rЂo
mj
<9
inputs/0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*'
inputs/1џџџџџџџџџ`` 
Њ " џџџџџџџџџ``0г
*__inference_concatenate_layer_call_fn_5955Є~Ђ{
tЂq
ol
<9
inputs/0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
,)
inputs/1џџџџџџџџџРР@
Њ ""џџџџџџџџџРР`Ж
B__inference_conv2d_1_layer_call_and_return_conditional_losses_6232pTU9Ђ6
/Ђ,
*'
inputsџџџџџџџџџРР@
Њ "/Ђ,
%"
0џџџџџџџџџРР 
 
'__inference_conv2d_1_layer_call_fn_6241cTU9Ђ6
/Ђ,
*'
inputsџџџџџџџџџРР@
Њ ""џџџџџџџџџРР В
B__inference_conv2d_2_layer_call_and_return_conditional_losses_6252lVW7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ`` 
Њ "-Ђ*
# 
0џџџџџџџџџ``
 
'__inference_conv2d_2_layer_call_fn_6261_VW7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ`` 
Њ " џџџџџџџџџ``В
B__inference_conv2d_3_layer_call_and_return_conditional_losses_6272lXY7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ00
Њ "-Ђ*
# 
0џџџџџџџџџ00
 
'__inference_conv2d_3_layer_call_fn_6281_XY7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ00
Њ " џџџџџџџџџ00Д
@__inference_conv2d_layer_call_and_return_conditional_losses_6212pRS9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ "/Ђ,
%"
0џџџџџџџџџ@
 
%__inference_conv2d_layer_call_fn_6221cRS9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ ""џџџџџџџџџ@с
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_4262\]IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Й
1__inference_conv2d_transpose_1_layer_call_fn_4272\]IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџс
L__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_4396^_IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Й
1__inference_conv2d_transpose_2_layer_call_fn_4406^_IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ0
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ с
L__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_4530`aIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Й
1__inference_conv2d_transpose_3_layer_call_fn_4540`aIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@с
L__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_4664GHIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџA
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Й
1__inference_conv2d_transpose_4_layer_call_fn_4674GHIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџA
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџп
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_4128Z[IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 З
/__inference_conv2d_transpose_layer_call_fn_4138Z[IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџж
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6286IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 ж
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6296IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ж
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6306IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 ж
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6316IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ж
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_6326IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ­
*__inference_leaky_re_lu_layer_call_fn_6291IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ­
*__inference_leaky_re_lu_layer_call_fn_6301IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ­
*__inference_leaky_re_lu_layer_call_fn_6311IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@­
*__inference_leaky_re_lu_layer_call_fn_6321IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ­
*__inference_leaky_re_lu_layer_call_fn_6331IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџь
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_3805RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ф
.__inference_max_pooling2d_1_layer_call_fn_3811RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџь
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3899RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ф
.__inference_max_pooling2d_2_layer_call_fn_3905RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџь
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3993RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ф
.__inference_max_pooling2d_3_layer_call_fn_3999RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџъ
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_3711RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Т
,__inference_max_pooling2d_layer_call_fn_3717RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџн
?__inference_model_layer_call_and_return_conditional_losses_4926RSTUVWXYZ[\]^_`aGHBЂ?
8Ђ5
+(
input_1џџџџџџџџџ
p

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 н
?__inference_model_layer_call_and_return_conditional_losses_4979RSTUVWXYZ[\]^_`aGHBЂ?
8Ђ5
+(
input_1џџџџџџџџџ
p 

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ь
?__inference_model_layer_call_and_return_conditional_losses_5395RSTUVWXYZ[\]^_`aGHAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ "/Ђ,
%"
0џџџџџџџџџ
 Ь
?__inference_model_layer_call_and_return_conditional_losses_5571RSTUVWXYZ[\]^_`aGHAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ "/Ђ,
%"
0џџџџџџџџџ
 Е
$__inference_model_layer_call_fn_5074RSTUVWXYZ[\]^_`aGHBЂ?
8Ђ5
+(
input_1џџџџџџџџџ
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЕ
$__inference_model_layer_call_fn_5168RSTUVWXYZ[\]^_`aGHBЂ?
8Ђ5
+(
input_1џџџџџџџџџ
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџД
$__inference_model_layer_call_fn_5612RSTUVWXYZ[\]^_`aGHAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџД
$__inference_model_layer_call_fn_5653RSTUVWXYZ[\]^_`aGHAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџШ
F__inference_sequential_1_layer_call_and_return_conditional_losses_3844~TUIЂF
?Ђ<
2/
conv2d_1_inputџџџџџџџџџРР@
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ`` 
 Ш
F__inference_sequential_1_layer_call_and_return_conditional_losses_3854~TUIЂF
?Ђ<
2/
conv2d_1_inputџџџџџџџџџРР@
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ`` 
 Р
F__inference_sequential_1_layer_call_and_return_conditional_losses_5707vTUAЂ>
7Ђ4
*'
inputsџџџџџџџџџРР@
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ`` 
 Р
F__inference_sequential_1_layer_call_and_return_conditional_losses_5719vTUAЂ>
7Ђ4
*'
inputsџџџџџџџџџРР@
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ`` 
  
+__inference_sequential_1_layer_call_fn_3874qTUIЂF
?Ђ<
2/
conv2d_1_inputџџџџџџџџџРР@
p

 
Њ " џџџџџџџџџ``  
+__inference_sequential_1_layer_call_fn_3893qTUIЂF
?Ђ<
2/
conv2d_1_inputџџџџџџџџџРР@
p 

 
Њ " џџџџџџџџџ`` 
+__inference_sequential_1_layer_call_fn_5728iTUAЂ>
7Ђ4
*'
inputsџџџџџџџџџРР@
p

 
Њ " џџџџџџџџџ`` 
+__inference_sequential_1_layer_call_fn_5737iTUAЂ>
7Ђ4
*'
inputsџџџџџџџџџРР@
p 

 
Њ " џџџџџџџџџ`` Ц
F__inference_sequential_2_layer_call_and_return_conditional_losses_3938|VWGЂD
=Ђ:
0-
conv2d_2_inputџџџџџџџџџ`` 
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ00
 Ц
F__inference_sequential_2_layer_call_and_return_conditional_losses_3948|VWGЂD
=Ђ:
0-
conv2d_2_inputџџџџџџџџџ`` 
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ00
 О
F__inference_sequential_2_layer_call_and_return_conditional_losses_5749tVW?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ`` 
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ00
 О
F__inference_sequential_2_layer_call_and_return_conditional_losses_5761tVW?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ`` 
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ00
 
+__inference_sequential_2_layer_call_fn_3968oVWGЂD
=Ђ:
0-
conv2d_2_inputџџџџџџџџџ`` 
p

 
Њ " џџџџџџџџџ00
+__inference_sequential_2_layer_call_fn_3987oVWGЂD
=Ђ:
0-
conv2d_2_inputџџџџџџџџџ`` 
p 

 
Њ " џџџџџџџџџ00
+__inference_sequential_2_layer_call_fn_5770gVW?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ`` 
p

 
Њ " џџџџџџџџџ00
+__inference_sequential_2_layer_call_fn_5779gVW?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ`` 
p 

 
Њ " џџџџџџџџџ00Ц
F__inference_sequential_3_layer_call_and_return_conditional_losses_4032|XYGЂD
=Ђ:
0-
conv2d_3_inputџџџџџџџџџ00
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 Ц
F__inference_sequential_3_layer_call_and_return_conditional_losses_4042|XYGЂD
=Ђ:
0-
conv2d_3_inputџџџџџџџџџ00
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 О
F__inference_sequential_3_layer_call_and_return_conditional_losses_5791tXY?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ00
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 О
F__inference_sequential_3_layer_call_and_return_conditional_losses_5803tXY?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ00
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ
 
+__inference_sequential_3_layer_call_fn_4062oXYGЂD
=Ђ:
0-
conv2d_3_inputџџџџџџџџџ00
p

 
Њ " џџџџџџџџџ
+__inference_sequential_3_layer_call_fn_4081oXYGЂD
=Ђ:
0-
conv2d_3_inputџџџџџџџџџ00
p 

 
Њ " џџџџџџџџџ
+__inference_sequential_3_layer_call_fn_5812gXY?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ00
p

 
Њ " џџџџџџџџџ
+__inference_sequential_3_layer_call_fn_5821gXY?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ00
p 

 
Њ " џџџџџџџџџс
F__inference_sequential_4_layer_call_and_return_conditional_losses_4168Z[OЂL
EЂB
85
conv2d_transpose_inputџџџџџџџџџ
p

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 с
F__inference_sequential_4_layer_call_and_return_conditional_losses_4178Z[OЂL
EЂB
85
conv2d_transpose_inputџџџџџџџџџ
p 

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 О
F__inference_sequential_4_layer_call_and_return_conditional_losses_5853tZ[?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ00
 О
F__inference_sequential_4_layer_call_and_return_conditional_losses_5885tZ[?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ00
 Й
+__inference_sequential_4_layer_call_fn_4198Z[OЂL
EЂB
85
conv2d_transpose_inputџџџџџџџџџ
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЙ
+__inference_sequential_4_layer_call_fn_4217Z[OЂL
EЂB
85
conv2d_transpose_inputџџџџџџџџџ
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
+__inference_sequential_4_layer_call_fn_5894yZ[?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
+__inference_sequential_4_layer_call_fn_5903yZ[?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџу
F__inference_sequential_5_layer_call_and_return_conditional_losses_4302\]QЂN
GЂD
:7
conv2d_transpose_1_inputџџџџџџџџџ00
p

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 у
F__inference_sequential_5_layer_call_and_return_conditional_losses_4312\]QЂN
GЂD
:7
conv2d_transpose_1_inputџџџџџџџџџ00
p 

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 О
F__inference_sequential_5_layer_call_and_return_conditional_losses_5987t\]?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ00
p

 
Њ "-Ђ*
# 
0џџџџџџџџџ``
 О
F__inference_sequential_5_layer_call_and_return_conditional_losses_6019t\]?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ00
p 

 
Њ "-Ђ*
# 
0џџџџџџџџџ``
 Л
+__inference_sequential_5_layer_call_fn_4332\]QЂN
GЂD
:7
conv2d_transpose_1_inputџџџџџџџџџ00
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЛ
+__inference_sequential_5_layer_call_fn_4351\]QЂN
GЂD
:7
conv2d_transpose_1_inputџџџџџџџџџ00
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
+__inference_sequential_5_layer_call_fn_6028y\]?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ00
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџЈ
+__inference_sequential_5_layer_call_fn_6037y\]?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ00
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџу
F__inference_sequential_6_layer_call_and_return_conditional_losses_4436^_QЂN
GЂD
:7
conv2d_transpose_2_inputџџџџџџџџџ``0
p

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 у
F__inference_sequential_6_layer_call_and_return_conditional_losses_4446^_QЂN
GЂD
:7
conv2d_transpose_2_inputџџџџџџџџџ``0
p 

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Р
F__inference_sequential_6_layer_call_and_return_conditional_losses_6069v^_?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ``0
p

 
Њ "/Ђ,
%"
0џџџџџџџџџРР 
 Р
F__inference_sequential_6_layer_call_and_return_conditional_losses_6101v^_?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ``0
p 

 
Њ "/Ђ,
%"
0џџџџџџџџџРР 
 Л
+__inference_sequential_6_layer_call_fn_4466^_QЂN
GЂD
:7
conv2d_transpose_2_inputџџџџџџџџџ``0
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Л
+__inference_sequential_6_layer_call_fn_4485^_QЂN
GЂD
:7
conv2d_transpose_2_inputџџџџџџџџџ``0
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
+__inference_sequential_6_layer_call_fn_6110y^_?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ``0
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Ј
+__inference_sequential_6_layer_call_fn_6119y^_?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ``0
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ х
F__inference_sequential_7_layer_call_and_return_conditional_losses_4570`aSЂP
IЂF
<9
conv2d_transpose_3_inputџџџџџџџџџРР`
p

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 х
F__inference_sequential_7_layer_call_and_return_conditional_losses_4580`aSЂP
IЂF
<9
conv2d_transpose_3_inputџџџџџџџџџРР`
p 

 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Т
F__inference_sequential_7_layer_call_and_return_conditional_losses_6151x`aAЂ>
7Ђ4
*'
inputsџџџџџџџџџРР`
p

 
Њ "/Ђ,
%"
0џџџџџџџџџ@
 Т
F__inference_sequential_7_layer_call_and_return_conditional_losses_6183x`aAЂ>
7Ђ4
*'
inputsџџџџџџџџџРР`
p 

 
Њ "/Ђ,
%"
0џџџџџџџџџ@
 Н
+__inference_sequential_7_layer_call_fn_4600`aSЂP
IЂF
<9
conv2d_transpose_3_inputџџџџџџџџџРР`
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Н
+__inference_sequential_7_layer_call_fn_4619`aSЂP
IЂF
<9
conv2d_transpose_3_inputџџџџџџџџџРР`
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Њ
+__inference_sequential_7_layer_call_fn_6192{`aAЂ>
7Ђ4
*'
inputsџџџџџџџџџРР`
p

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Њ
+__inference_sequential_7_layer_call_fn_6201{`aAЂ>
7Ђ4
*'
inputsџџџџџџџџџРР`
p 

 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ц
D__inference_sequential_layer_call_and_return_conditional_losses_3750~RSGЂD
=Ђ:
0-
conv2d_inputџџџџџџџџџ
p

 
Њ "/Ђ,
%"
0џџџџџџџџџРР@
 Ц
D__inference_sequential_layer_call_and_return_conditional_losses_3760~RSGЂD
=Ђ:
0-
conv2d_inputџџџџџџџџџ
p 

 
Њ "/Ђ,
%"
0џџџџџџџџџРР@
 Р
D__inference_sequential_layer_call_and_return_conditional_losses_5665xRSAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ "/Ђ,
%"
0џџџџџџџџџРР@
 Р
D__inference_sequential_layer_call_and_return_conditional_losses_5677xRSAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ "/Ђ,
%"
0џџџџџџџџџРР@
 
)__inference_sequential_layer_call_fn_3780qRSGЂD
=Ђ:
0-
conv2d_inputџџџџџџџџџ
p

 
Њ ""џџџџџџџџџРР@
)__inference_sequential_layer_call_fn_3799qRSGЂD
=Ђ:
0-
conv2d_inputџџџџџџџџџ
p 

 
Њ ""џџџџџџџџџРР@
)__inference_sequential_layer_call_fn_5686kRSAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ ""џџџџџџџџџРР@
)__inference_sequential_layer_call_fn_5695kRSAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ ""џџџџџџџџџРР@е
"__inference_signature_wrapper_5219ЎRSTUVWXYZ[\]^_`aGHEЂB
Ђ 
;Њ8
6
input_1+(
input_1џџџџџџџџџ"QЊN
L
conv2d_transpose_463
conv2d_transpose_4џџџџџџџџџь
I__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_4285RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ф
.__inference_up_sampling2d_1_layer_call_fn_4291RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџь
I__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_4419RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ф
.__inference_up_sampling2d_2_layer_call_fn_4425RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџь
I__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_4553RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ф
.__inference_up_sampling2d_3_layer_call_fn_4559RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџъ
G__inference_up_sampling2d_layer_call_and_return_conditional_losses_4151RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Т
,__inference_up_sampling2d_layer_call_fn_4157RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ