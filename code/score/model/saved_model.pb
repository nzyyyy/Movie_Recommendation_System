??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
?
embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameembedding_3/embeddings
?
*embedding_3/embeddings/Read/ReadVariableOpReadVariableOpembedding_3/embeddings*
_output_shapes
:	?*
dtype0
?
embedding_4/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameembedding_4/embeddings
?
*embedding_4/embeddings/Read/ReadVariableOpReadVariableOpembedding_4/embeddings*
_output_shapes

:*
dtype0
?
embedding_5/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameembedding_5/embeddings
?
*embedding_5/embeddings/Read/ReadVariableOpReadVariableOpembedding_5/embeddings*
_output_shapes

:*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:?*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
??*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:?*
dtype0
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	?*
dtype0
?
embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameembedding_1/embeddings
?
*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*
_output_shapes

:*
dtype0
?
embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameembedding_2/embeddings
?
*embedding_2/embeddings/Read/ReadVariableOpReadVariableOpembedding_2/embeddings*
_output_shapes

:*
dtype0
z
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_3/kernel
s
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel* 
_output_shapes
:
??*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:?*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	?*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
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
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:?*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:?*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:?*
dtype0
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:?*
dtype0
?
Adam/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_nameAdam/embedding_3/embeddings/m
?
1Adam/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_3/embeddings/m*
_output_shapes
:	?*
dtype0
?
Adam/embedding_4/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameAdam/embedding_4/embeddings/m
?
1Adam/embedding_4/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_4/embeddings/m*
_output_shapes

:*
dtype0
?
Adam/embedding_5/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameAdam/embedding_5/embeddings/m
?
1Adam/embedding_5/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_5/embeddings/m*
_output_shapes

:*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_1/kernel/m
?
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	?*
dtype0

Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_1/bias/m
x
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_2/kernel/m
?
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_2/bias/m
x
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*
_output_shapes
:	?*
dtype0
?
Adam/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameAdam/embedding_1/embeddings/m
?
1Adam/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/m*
_output_shapes

:*
dtype0
?
Adam/embedding_2/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameAdam/embedding_2/embeddings/m
?
1Adam/embedding_2/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_2/embeddings/m*
_output_shapes

:*
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_3/kernel/m
?
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_3/bias/m
x
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_4/kernel/m
?
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_nameAdam/embedding_3/embeddings/v
?
1Adam/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_3/embeddings/v*
_output_shapes
:	?*
dtype0
?
Adam/embedding_4/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameAdam/embedding_4/embeddings/v
?
1Adam/embedding_4/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_4/embeddings/v*
_output_shapes

:*
dtype0
?
Adam/embedding_5/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameAdam/embedding_5/embeddings/v
?
1Adam/embedding_5/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_5/embeddings/v*
_output_shapes

:*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_1/kernel/v
?
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	?*
dtype0

Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_1/bias/v
x
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_2/kernel/v
?
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_2/bias/v
x
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*
_output_shapes
:	?*
dtype0
?
Adam/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameAdam/embedding_1/embeddings/v
?
1Adam/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/v*
_output_shapes

:*
dtype0
?
Adam/embedding_2/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameAdam/embedding_2/embeddings/v
?
1Adam/embedding_2/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_2/embeddings/v*
_output_shapes

:*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_3/kernel/v
?
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_3/bias/v
x
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_4/kernel/v
?
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ӓ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-4
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer_with_weights-5
layer-18
layer_with_weights-6
layer-19
layer_with_weights-7
layer-20
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer-27
layer-28
layer_with_weights-8
layer-29
layer_with_weights-9
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer-35
%layer_with_weights-10
%layer-36
&layer-37
'layer-38
(	optimizer
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-
signatures

._init_input_shape

/_init_input_shape

0_init_input_shape
b
1
embeddings
2	variables
3trainable_variables
4regularization_losses
5	keras_api
b
6
embeddings
7	variables
8trainable_variables
9regularization_losses
:	keras_api
b
;
embeddings
<	variables
=trainable_variables
>regularization_losses
?	keras_api
R
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
R
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
h

Hkernel
Ibias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
R
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
R
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
h

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api

`_init_input_shape

a_init_input_shape

b_init_input_shape

c_init_input_shape

d_init_input_shape
b
e
embeddings
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
b
j
embeddings
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
b
o
embeddings
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
R
t	variables
utrainable_variables
vregularization_losses
w	keras_api
R
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
R
|	variables
}trainable_variables
~regularization_losses
	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate1m?6m?;m?Hm?Im?Zm?[m?em?jm?om?	?m?	?m?	?m?	?m?	?m?	?m?1v?6v?;v?Hv?Iv?Zv?[v?ev?jv?ov?	?v?	?v?	?v?	?v?	?v?	?v?
|
10
61
;2
H3
I4
Z5
[6
e7
j8
o9
?10
?11
?12
?13
?14
?15
|
10
61
;2
H3
I4
Z5
[6
e7
j8
o9
?10
?11
?12
?13
?14
?15
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
)	variables
*trainable_variables
+regularization_losses
 
 
 
 
fd
VARIABLE_VALUEembedding_3/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

10

10
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
fd
VARIABLE_VALUEembedding_4/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

60

60
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
7	variables
8trainable_variables
9regularization_losses
fd
VARIABLE_VALUEembedding_5/embeddings:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUE

;0

;0
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

H0
I1

H0
I1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1

Z0
[1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
 
 
 
 
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUE

e0

e0
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
f	variables
gtrainable_variables
hregularization_losses
fd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-6/embeddings/.ATTRIBUTES/VARIABLE_VALUE

j0

j0
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
k	variables
ltrainable_variables
mregularization_losses
fd
VARIABLE_VALUEembedding_2/embeddings:layer_with_weights-7/embeddings/.ATTRIBUTES/VARIABLE_VALUE

o0

o0
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
p	variables
qtrainable_variables
rregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
x	variables
ytrainable_variables
zregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
|	variables
}trainable_variables
~regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
[Y
VARIABLE_VALUEdense_4/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_4/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
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
 
?
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
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38

?0
?1
?2
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
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
v
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?	variables
??
VARIABLE_VALUEAdam/embedding_3/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_4/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_5/embeddings/mVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_1/embeddings/mVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_2/embeddings/mVlayer_with_weights-7/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_4/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_4/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_3/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_4/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_5/embeddings/vVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_1/embeddings/vVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_2/embeddings/vVlayer_with_weights-7/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_4/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_4/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
t
serving_default_fPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
y
serving_default_genresPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
t
serving_default_hPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
w
serving_default_highPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
{
serving_default_hratingsPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
w
serving_default_meanPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
x
serving_default_totalPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
}
serving_default_total_timePlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_fserving_default_genresserving_default_hserving_default_highserving_default_hratingsserving_default_meanserving_default_totalserving_default_total_timeembedding_3/embeddingsembedding_4/embeddingsembedding_5/embeddingsdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasembedding_2/embeddingsembedding_1/embeddingsembedding/embeddingsdense_3/kerneldense_3/biasdense/kernel
dense/biasdense_4/kerneldense_4/bias*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_1468842
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_3/embeddings/Read/ReadVariableOp*embedding_4/embeddings/Read/ReadVariableOp*embedding_5/embeddings/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp(embedding/embeddings/Read/ReadVariableOp*embedding_1/embeddings/Read/ReadVariableOp*embedding_2/embeddings/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp1Adam/embedding_3/embeddings/m/Read/ReadVariableOp1Adam/embedding_4/embeddings/m/Read/ReadVariableOp1Adam/embedding_5/embeddings/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp1Adam/embedding_1/embeddings/m/Read/ReadVariableOp1Adam/embedding_2/embeddings/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp1Adam/embedding_3/embeddings/v/Read/ReadVariableOp1Adam/embedding_4/embeddings/v/Read/ReadVariableOp1Adam/embedding_5/embeddings/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp1Adam/embedding_1/embeddings/v/Read/ReadVariableOp1Adam/embedding_2/embeddings/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOpConst*J
TinC
A2?	*
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_1470133
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_3/embeddingsembedding_4/embeddingsembedding_5/embeddingsdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasembedding/embeddingsembedding_1/embeddingsembedding_2/embeddingsdense_3/kerneldense_3/biasdense/kernel
dense/biasdense_4/kerneldense_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1true_positivestrue_negativesfalse_positivesfalse_negativesAdam/embedding_3/embeddings/mAdam/embedding_4/embeddings/mAdam/embedding_5/embeddings/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/embedding/embeddings/mAdam/embedding_1/embeddings/mAdam/embedding_2/embeddings/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/embedding_3/embeddings/vAdam/embedding_4/embeddings/vAdam/embedding_5/embeddings/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/embedding/embeddings/vAdam/embedding_1/embeddings/vAdam/embedding_2/embeddings/vAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/v*I
TinB
@2>*
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_1470326??
?
?
%__inference_signature_wrapper_1468842
f

genres
h
high
hratings
mean	
total

total_time
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:	?
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:
	unknown_7:
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:

unknown_12:

unknown_13:	?

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallhightotalmean
total_timehratingsgenreshfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_1467503o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namef:OK
'
_output_shapes
:?????????
 
_user_specified_namegenres:JF
'
_output_shapes
:?????????

_user_specified_nameh:MI
'
_output_shapes
:?????????

_user_specified_namehigh:QM
'
_output_shapes
:?????????
"
_user_specified_name
hratings:MI
'
_output_shapes
:?????????

_user_specified_namemean:NJ
'
_output_shapes
:?????????

_user_specified_nametotal:SO
'
_output_shapes
:?????????
$
_user_specified_name
total_time
?
?
H__inference_embedding_4_layer_call_and_return_conditional_losses_1467560

inputs*
embedding_lookup_1467548:
identity??8embedding_4/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_1467548Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1467548*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1467548*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
8embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1467548*
_output_shapes

:*
dtype0?
)embedding_4/embeddings/Regularizer/SquareSquare@embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_4/embeddings/Regularizer/SumSum-embedding_4/embeddings/Regularizer/Square:y:01embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_4/embeddings/Regularizer/mulMul1embedding_4/embeddings/Regularizer/mul/x:output:0/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp9^embedding_4/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2t
8embedding_4/embeddings/Regularizer/Square/ReadVariableOp8embedding_4/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_3_layer_call_fn_1469354

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_1467600`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_1469776

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
B__inference_model_layer_call_and_return_conditional_losses_1467930

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7&
embedding_3_1467541:	?%
embedding_4_1467561:%
embedding_5_1467581:"
dense_1_1467614:	?
dense_1_1467616:	?#
dense_2_1467638:
??
dense_2_1467640:	?%
embedding_2_1467699:%
embedding_1_1467719:$
embedding_1467739:	?#
dense_3_1467754:
??
dense_3_1467756:	?
dense_1467829:
dense_1467831:"
dense_4_1467871:	?
dense_4_1467873:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?6embedding/embeddings/Regularizer/Square/ReadVariableOp?#embedding_1/StatefulPartitionedCall?8embedding_1/embeddings/Regularizer/Square/ReadVariableOp?#embedding_2/StatefulPartitionedCall?8embedding_2/embeddings/Regularizer/Square/ReadVariableOp?#embedding_3/StatefulPartitionedCall?8embedding_3/embeddings/Regularizer/Square/ReadVariableOp?#embedding_4/StatefulPartitionedCall?8embedding_4/embeddings/Regularizer/Square/ReadVariableOp?#embedding_5/StatefulPartitionedCall?8embedding_5/embeddings/Regularizer/Square/ReadVariableOp?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputs_5embedding_3_1467541*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_3_layer_call_and_return_conditional_losses_1467540?
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallinputs_6embedding_4_1467561*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_4_layer_call_and_return_conditional_losses_1467560?
#embedding_5/StatefulPartitionedCallStatefulPartitionedCallinputs_7embedding_5_1467581*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_5_layer_call_and_return_conditional_losses_1467580?
concatenate_1/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0,embedding_4/StatefulPartitionedCall:output:0,embedding_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1467592?
flatten_3/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_1467600?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_1_1467614dense_1_1467616*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1467613?
dropout/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1467624?
dense_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_2_1467638dense_2_1467640*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1467637?
multiply_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_multiply_1_layer_call_and_return_conditional_losses_1467649?
lambda/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_1467657?
dropout_1/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1467664?
multiply/PartitionedCallPartitionedCalllambda/PartitionedCall:output:0lambda/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_multiply_layer_call_and_return_conditional_losses_1467672?
lambda_1/PartitionedCallPartitionedCall#multiply_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_1_layer_call_and_return_conditional_losses_1467680?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputs_7embedding_2_1467699*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_2_layer_call_and_return_conditional_losses_1467698?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs_6embedding_1_1467719*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_1_layer_call_and_return_conditional_losses_1467718?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_5embedding_1467739*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_1467738?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_3_1467754dense_3_1467756*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_1467753?
subtract/PartitionedCallPartitionedCall!multiply/PartitionedCall:output:0!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_subtract_layer_call_and_return_conditional_losses_1467765?
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1467773?
flatten_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1467781?
flatten_2/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1467789?
concatenate/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1467801?
dropout_2/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_1467808?
lambda_2/PartitionedCallPartitionedCall!subtract/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_1467816?
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_1467829dense_1467831*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1467828?
add/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_1467842?
add_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_1467850?
lambda_3/PartitionedCallPartitionedCall!lambda_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_3_layer_call_and_return_conditional_losses_1467858?
dense_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_4_1467871dense_4_1467873*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1467870?
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0!lambda_3/PartitionedCall:output:0(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_1467884?
activation/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_1467891?
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_3_1467541*
_output_shapes
:	?*
dtype0?
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_4_1467561*
_output_shapes

:*
dtype0?
)embedding_4/embeddings/Regularizer/SquareSquare@embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_4/embeddings/Regularizer/SumSum-embedding_4/embeddings/Regularizer/Square:y:01embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_4/embeddings/Regularizer/mulMul1embedding_4/embeddings/Regularizer/mul/x:output:0/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_5/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_5_1467581*
_output_shapes

:*
dtype0?
)embedding_5/embeddings/Regularizer/SquareSquare@embedding_5/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_5/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_5/embeddings/Regularizer/SumSum-embedding_5/embeddings/Regularizer/Square:y:01embedding_5/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_5/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_5/embeddings/Regularizer/mulMul1embedding_5/embeddings/Regularizer/mul/x:output:0/embedding_5/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1467739*
_output_shapes
:	?*
dtype0?
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1_1467719*
_output_shapes

:*
dtype0?
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2_1467699*
_output_shapes

:*
dtype0?
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: r
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall"^embedding/StatefulPartitionedCall7^embedding/embeddings/Regularizer/Square/ReadVariableOp$^embedding_1/StatefulPartitionedCall9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp$^embedding_2/StatefulPartitionedCall9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp$^embedding_3/StatefulPartitionedCall9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp$^embedding_4/StatefulPartitionedCall9^embedding_4/embeddings/Regularizer/Square/ReadVariableOp$^embedding_5/StatefulPartitionedCall9^embedding_5/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2t
8embedding_4/embeddings/Regularizer/Square/ReadVariableOp8embedding_4/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2t
8embedding_5/embeddings/Regularizer/Square/ReadVariableOp8embedding_5/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
*__inference_lambda_2_layer_call_fn_1469737

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_1468045`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
E__inference_lambda_1_layer_call_and_return_conditional_losses_1468154

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_layer_call_and_return_conditional_losses_1469639

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
'__inference_add_2_layer_call_fn_1469836
inputs_0
inputs_1
inputs_2
identity?
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_1467884`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
c
G__inference_activation_layer_call_and_return_conditional_losses_1469854

inputs
identityL
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????S
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_dense_4_layer_call_fn_1469819

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1467870o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_2_layer_call_fn_1469754

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_1467808a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_embedding_3_layer_call_and_return_conditional_losses_1467540

inputs+
embedding_lookup_1467528:	?
identity??8embedding_3/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_1467528Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1467528*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1467528*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1467528*
_output_shapes
:	?*
dtype0?
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1467592

inputs
inputs_1
inputs_2
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*+
_output_shapes
:?????????[
IdentityIdentityconcat:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:?????????:?????????:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:SO
+
_output_shapes
:?????????
 
_user_specified_nameinputs:SO
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?x
?
 __inference__traced_save_1470133
file_prefix5
1savev2_embedding_3_embeddings_read_readvariableop5
1savev2_embedding_4_embeddings_read_readvariableop5
1savev2_embedding_5_embeddings_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop3
/savev2_embedding_embeddings_read_readvariableop5
1savev2_embedding_1_embeddings_read_readvariableop5
1savev2_embedding_2_embeddings_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop-
)savev2_true_positives_read_readvariableop-
)savev2_true_negatives_read_readvariableop.
*savev2_false_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop<
8savev2_adam_embedding_3_embeddings_m_read_readvariableop<
8savev2_adam_embedding_4_embeddings_m_read_readvariableop<
8savev2_adam_embedding_5_embeddings_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop<
8savev2_adam_embedding_1_embeddings_m_read_readvariableop<
8savev2_adam_embedding_2_embeddings_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop<
8savev2_adam_embedding_3_embeddings_v_read_readvariableop<
8savev2_adam_embedding_4_embeddings_v_read_readvariableop<
8savev2_adam_embedding_5_embeddings_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop<
8savev2_adam_embedding_1_embeddings_v_read_readvariableop<
8savev2_adam_embedding_2_embeddings_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?"
value?"B?">B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-7/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-7/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-7/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?
value?B?>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_3_embeddings_read_readvariableop1savev2_embedding_4_embeddings_read_readvariableop1savev2_embedding_5_embeddings_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop/savev2_embedding_embeddings_read_readvariableop1savev2_embedding_1_embeddings_read_readvariableop1savev2_embedding_2_embeddings_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop8savev2_adam_embedding_3_embeddings_m_read_readvariableop8savev2_adam_embedding_4_embeddings_m_read_readvariableop8savev2_adam_embedding_5_embeddings_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop8savev2_adam_embedding_1_embeddings_m_read_readvariableop8savev2_adam_embedding_2_embeddings_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop8savev2_adam_embedding_3_embeddings_v_read_readvariableop8savev2_adam_embedding_4_embeddings_v_read_readvariableop8savev2_adam_embedding_5_embeddings_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop8savev2_adam_embedding_1_embeddings_v_read_readvariableop8savev2_adam_embedding_2_embeddings_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *L
dtypesB
@2>	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?:::	?:?:
??:?:	?:::
??:?:::	?:: : : : : : : : : :?:?:?:?:	?:::	?:?:
??:?:	?:::
??:?:::	?::	?:::	?:?:
??:?:	?:::
??:?:::	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?:$ 

_output_shapes

::$ 

_output_shapes

::%!

_output_shapes
:	?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?:$	 

_output_shapes

::$
 

_output_shapes

::&"
 
_output_shapes
:
??:!

_output_shapes	
:?:$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?:$ 

_output_shapes

::$  

_output_shapes

::%!!

_output_shapes
:	?:!"

_output_shapes	
:?:&#"
 
_output_shapes
:
??:!$

_output_shapes	
:?:%%!

_output_shapes
:	?:$& 

_output_shapes

::$' 

_output_shapes

::&("
 
_output_shapes
:
??:!)

_output_shapes	
:?:$* 

_output_shapes

:: +

_output_shapes
::%,!

_output_shapes
:	?: -

_output_shapes
::%.!

_output_shapes
:	?:$/ 

_output_shapes

::$0 

_output_shapes

::%1!

_output_shapes
:	?:!2

_output_shapes	
:?:&3"
 
_output_shapes
:
??:!4

_output_shapes	
:?:%5!

_output_shapes
:	?:$6 

_output_shapes

::$7 

_output_shapes

::&8"
 
_output_shapes
:
??:!9

_output_shapes	
:?:$: 

_output_shapes

:: ;

_output_shapes
::%<!

_output_shapes
:	?: =

_output_shapes
::>

_output_shapes
: 
?
?
-__inference_embedding_2_layer_call_fn_1469532

inputs
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_2_layer_call_and_return_conditional_losses_1467698s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
o
E__inference_subtract_layer_call_and_return_conditional_losses_1467765

inputs
inputs_1
identityN
subSubinputsinputs_1*
T0*'
_output_shapes
:?????????O
IdentityIdentitysub:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
C__inference_lambda_layer_call_and_return_conditional_losses_1469423

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
*__inference_lambda_2_layer_call_fn_1469732

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_1467816`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
E__inference_lambda_3_layer_call_and_return_conditional_losses_1467858

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
*__inference_lambda_3_layer_call_fn_1469798

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_3_layer_call_and_return_conditional_losses_1468003`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_1469887S
Aembedding_5_embeddings_regularizer_square_readvariableop_resource:
identity??8embedding_5/embeddings/Regularizer/Square/ReadVariableOp?
8embedding_5/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpAembedding_5_embeddings_regularizer_square_readvariableop_resource*
_output_shapes

:*
dtype0?
)embedding_5/embeddings/Regularizer/SquareSquare@embedding_5/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_5/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_5/embeddings/Regularizer/SumSum-embedding_5/embeddings/Regularizer/Square:y:01embedding_5/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_5/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_5/embeddings/Regularizer/mulMul1embedding_5/embeddings/Regularizer/mul/x:output:0/embedding_5/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*embedding_5/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp9^embedding_5/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8embedding_5/embeddings/Regularizer/Square/ReadVariableOp8embedding_5/embeddings/Regularizer/Square/ReadVariableOp
?
_
C__inference_lambda_layer_call_and_return_conditional_losses_1467657

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_embedding_3_layer_call_and_return_conditional_losses_1469276

inputs+
embedding_lookup_1469264:	?
identity??8embedding_3/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_1469264Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1469264*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1469264*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1469264*
_output_shapes
:	?*
dtype0?
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?%
#__inference__traced_restore_1470326
file_prefix:
'assignvariableop_embedding_3_embeddings:	?;
)assignvariableop_1_embedding_4_embeddings:;
)assignvariableop_2_embedding_5_embeddings:4
!assignvariableop_3_dense_1_kernel:	?.
assignvariableop_4_dense_1_bias:	?5
!assignvariableop_5_dense_2_kernel:
??.
assignvariableop_6_dense_2_bias:	?:
'assignvariableop_7_embedding_embeddings:	?;
)assignvariableop_8_embedding_1_embeddings:;
)assignvariableop_9_embedding_2_embeddings:6
"assignvariableop_10_dense_3_kernel:
??/
 assignvariableop_11_dense_3_bias:	?2
 assignvariableop_12_dense_kernel:,
assignvariableop_13_dense_bias:5
"assignvariableop_14_dense_4_kernel:	?.
 assignvariableop_15_dense_4_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: 1
"assignvariableop_25_true_positives:	?1
"assignvariableop_26_true_negatives:	?2
#assignvariableop_27_false_positives:	?2
#assignvariableop_28_false_negatives:	?D
1assignvariableop_29_adam_embedding_3_embeddings_m:	?C
1assignvariableop_30_adam_embedding_4_embeddings_m:C
1assignvariableop_31_adam_embedding_5_embeddings_m:<
)assignvariableop_32_adam_dense_1_kernel_m:	?6
'assignvariableop_33_adam_dense_1_bias_m:	?=
)assignvariableop_34_adam_dense_2_kernel_m:
??6
'assignvariableop_35_adam_dense_2_bias_m:	?B
/assignvariableop_36_adam_embedding_embeddings_m:	?C
1assignvariableop_37_adam_embedding_1_embeddings_m:C
1assignvariableop_38_adam_embedding_2_embeddings_m:=
)assignvariableop_39_adam_dense_3_kernel_m:
??6
'assignvariableop_40_adam_dense_3_bias_m:	?9
'assignvariableop_41_adam_dense_kernel_m:3
%assignvariableop_42_adam_dense_bias_m:<
)assignvariableop_43_adam_dense_4_kernel_m:	?5
'assignvariableop_44_adam_dense_4_bias_m:D
1assignvariableop_45_adam_embedding_3_embeddings_v:	?C
1assignvariableop_46_adam_embedding_4_embeddings_v:C
1assignvariableop_47_adam_embedding_5_embeddings_v:<
)assignvariableop_48_adam_dense_1_kernel_v:	?6
'assignvariableop_49_adam_dense_1_bias_v:	?=
)assignvariableop_50_adam_dense_2_kernel_v:
??6
'assignvariableop_51_adam_dense_2_bias_v:	?B
/assignvariableop_52_adam_embedding_embeddings_v:	?C
1assignvariableop_53_adam_embedding_1_embeddings_v:C
1assignvariableop_54_adam_embedding_2_embeddings_v:=
)assignvariableop_55_adam_dense_3_kernel_v:
??6
'assignvariableop_56_adam_dense_3_bias_v:	?9
'assignvariableop_57_adam_dense_kernel_v:3
%assignvariableop_58_adam_dense_bias_v:<
)assignvariableop_59_adam_dense_4_kernel_v:	?5
'assignvariableop_60_adam_dense_4_bias_v:
identity_62??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?"
value?"B?">B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-7/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-7/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-7/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?
value?B?>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*L
dtypesB
@2>	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp'assignvariableop_embedding_3_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp)assignvariableop_1_embedding_4_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp)assignvariableop_2_embedding_5_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_2_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp'assignvariableop_7_embedding_embeddingsIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp)assignvariableop_8_embedding_1_embeddingsIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp)assignvariableop_9_embedding_2_embeddingsIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_3_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_3_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_dense_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_4_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_4_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp"assignvariableop_25_true_positivesIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp"assignvariableop_26_true_negativesIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp#assignvariableop_27_false_positivesIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp#assignvariableop_28_false_negativesIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp1assignvariableop_29_adam_embedding_3_embeddings_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp1assignvariableop_30_adam_embedding_4_embeddings_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp1assignvariableop_31_adam_embedding_5_embeddings_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_1_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_1_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_2_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_dense_2_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp/assignvariableop_36_adam_embedding_embeddings_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp1assignvariableop_37_adam_embedding_1_embeddings_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp1assignvariableop_38_adam_embedding_2_embeddings_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_3_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_3_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_dense_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp%assignvariableop_42_adam_dense_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_4_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_4_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp1assignvariableop_45_adam_embedding_3_embeddings_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp1assignvariableop_46_adam_embedding_4_embeddings_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp1assignvariableop_47_adam_embedding_5_embeddings_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_dense_1_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_dense_1_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_dense_2_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_dense_2_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp/assignvariableop_52_adam_embedding_embeddings_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp1assignvariableop_53_adam_embedding_1_embeddings_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp1assignvariableop_54_adam_embedding_2_embeddings_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_3_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_3_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp'assignvariableop_57_adam_dense_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp%assignvariableop_58_adam_dense_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp)assignvariableop_59_adam_dense_4_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp'assignvariableop_60_adam_dense_4_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_61Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_62IdentityIdentity_61:output:0^NoOp_1*
T0*
_output_shapes
: ?

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_62Identity_62:output:0*?
_input_shapes~
|: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_60AssignVariableOp_602(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
a
E__inference_lambda_1_layer_call_and_return_conditional_losses_1467680

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_model_layer_call_fn_1468534
high	
total
mean

total_time
hratings

genres
h
f
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:	?
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:
	unknown_7:
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:

unknown_12:

unknown_13:	?

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallhightotalmean
total_timehratingsgenreshfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1468455o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:?????????

_user_specified_namehigh:NJ
'
_output_shapes
:?????????

_user_specified_nametotal:MI
'
_output_shapes
:?????????

_user_specified_namemean:SO
'
_output_shapes
:?????????
$
_user_specified_name
total_time:QM
'
_output_shapes
:?????????
"
_user_specified_name
hratings:OK
'
_output_shapes
:?????????
 
_user_specified_namegenres:JF
'
_output_shapes
:?????????

_user_specified_nameh:JF
'
_output_shapes
:?????????

_user_specified_namef
?
q
E__inference_subtract_layer_call_and_return_conditional_losses_1469673
inputs_0
inputs_1
identityP
subSubinputs_0inputs_1*
T0*'
_output_shapes
:?????????O
IdentityIdentitysub:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_1467664

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_model_layer_call_fn_1467965
high	
total
mean

total_time
hratings

genres
h
f
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:	?
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:
	unknown_7:
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:

unknown_12:

unknown_13:	?

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallhightotalmean
total_timehratingsgenreshfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1467930o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
'
_output_shapes
:?????????

_user_specified_namehigh:NJ
'
_output_shapes
:?????????

_user_specified_nametotal:MI
'
_output_shapes
:?????????

_user_specified_namemean:SO
'
_output_shapes
:?????????
$
_user_specified_name
total_time:QM
'
_output_shapes
:?????????
"
_user_specified_name
hratings:OK
'
_output_shapes
:?????????
 
_user_specified_namegenres:JF
'
_output_shapes
:?????????

_user_specified_nameh:JF
'
_output_shapes
:?????????

_user_specified_namef
?
?
F__inference_embedding_layer_call_and_return_conditional_losses_1469490

inputs+
embedding_lookup_1469478:	?
identity??6embedding/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_1469478Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1469478*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1469478*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1469478*
_output_shapes
:	?*
dtype0?
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp7^embedding/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_2_layer_call_fn_1469655

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1467789`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_1468184

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_1469898R
?embedding_embeddings_regularizer_square_readvariableop_resource:	?
identity??6embedding/embeddings/Regularizer/Square/ReadVariableOp?
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp?embedding_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype0?
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentity(embedding/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp7^embedding/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp
ԩ
?
B__inference_model_layer_call_and_return_conditional_losses_1468644
high	
total
mean

total_time
hratings

genres
h
f&
embedding_3_1468544:	?%
embedding_4_1468547:%
embedding_5_1468550:"
dense_1_1468555:	?
dense_1_1468557:	?#
dense_2_1468561:
??
dense_2_1468563:	?%
embedding_2_1468571:%
embedding_1_1468574:$
embedding_1468577:	?#
dense_3_1468580:
??
dense_3_1468582:	?
dense_1468592:
dense_1468594:"
dense_4_1468600:	?
dense_4_1468602:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?6embedding/embeddings/Regularizer/Square/ReadVariableOp?#embedding_1/StatefulPartitionedCall?8embedding_1/embeddings/Regularizer/Square/ReadVariableOp?#embedding_2/StatefulPartitionedCall?8embedding_2/embeddings/Regularizer/Square/ReadVariableOp?#embedding_3/StatefulPartitionedCall?8embedding_3/embeddings/Regularizer/Square/ReadVariableOp?#embedding_4/StatefulPartitionedCall?8embedding_4/embeddings/Regularizer/Square/ReadVariableOp?#embedding_5/StatefulPartitionedCall?8embedding_5/embeddings/Regularizer/Square/ReadVariableOp?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallgenresembedding_3_1468544*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_3_layer_call_and_return_conditional_losses_1467540?
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallhembedding_4_1468547*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_4_layer_call_and_return_conditional_losses_1467560?
#embedding_5/StatefulPartitionedCallStatefulPartitionedCallfembedding_5_1468550*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_5_layer_call_and_return_conditional_losses_1467580?
concatenate_1/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0,embedding_4/StatefulPartitionedCall:output:0,embedding_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1467592?
flatten_3/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_1467600?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_1_1468555dense_1_1468557*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1467613?
dropout/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1467624?
dense_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_2_1468561dense_2_1468563*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1467637?
multiply_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_multiply_1_layer_call_and_return_conditional_losses_1467649?
lambda/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_1467657?
dropout_1/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1467664?
multiply/PartitionedCallPartitionedCalllambda/PartitionedCall:output:0lambda/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_multiply_layer_call_and_return_conditional_losses_1467672?
lambda_1/PartitionedCallPartitionedCall#multiply_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_1_layer_call_and_return_conditional_losses_1467680?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallfembedding_2_1468571*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_2_layer_call_and_return_conditional_losses_1467698?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallhembedding_1_1468574*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_1_layer_call_and_return_conditional_losses_1467718?
!embedding/StatefulPartitionedCallStatefulPartitionedCallgenresembedding_1468577*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_1467738?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_3_1468580dense_3_1468582*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_1467753?
subtract/PartitionedCallPartitionedCall!multiply/PartitionedCall:output:0!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_subtract_layer_call_and_return_conditional_losses_1467765?
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1467773?
flatten_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1467781?
flatten_2/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1467789?
concatenate/PartitionedCallPartitionedCallhightotalmean
total_timehratings*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1467801?
dropout_2/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_1467808?
lambda_2/PartitionedCallPartitionedCall!subtract/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_1467816?
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_1468592dense_1468594*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1467828?
add/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_1467842?
add_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_1467850?
lambda_3/PartitionedCallPartitionedCall!lambda_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_3_layer_call_and_return_conditional_losses_1467858?
dense_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_4_1468600dense_4_1468602*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1467870?
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0!lambda_3/PartitionedCall:output:0(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_1467884?
activation/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_1467891?
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_3_1468544*
_output_shapes
:	?*
dtype0?
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_4_1468547*
_output_shapes

:*
dtype0?
)embedding_4/embeddings/Regularizer/SquareSquare@embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_4/embeddings/Regularizer/SumSum-embedding_4/embeddings/Regularizer/Square:y:01embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_4/embeddings/Regularizer/mulMul1embedding_4/embeddings/Regularizer/mul/x:output:0/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_5/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_5_1468550*
_output_shapes

:*
dtype0?
)embedding_5/embeddings/Regularizer/SquareSquare@embedding_5/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_5/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_5/embeddings/Regularizer/SumSum-embedding_5/embeddings/Regularizer/Square:y:01embedding_5/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_5/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_5/embeddings/Regularizer/mulMul1embedding_5/embeddings/Regularizer/mul/x:output:0/embedding_5/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1468577*
_output_shapes
:	?*
dtype0?
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1_1468574*
_output_shapes

:*
dtype0?
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2_1468571*
_output_shapes

:*
dtype0?
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: r
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall"^embedding/StatefulPartitionedCall7^embedding/embeddings/Regularizer/Square/ReadVariableOp$^embedding_1/StatefulPartitionedCall9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp$^embedding_2/StatefulPartitionedCall9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp$^embedding_3/StatefulPartitionedCall9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp$^embedding_4/StatefulPartitionedCall9^embedding_4/embeddings/Regularizer/Square/ReadVariableOp$^embedding_5/StatefulPartitionedCall9^embedding_5/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2t
8embedding_4/embeddings/Regularizer/Square/ReadVariableOp8embedding_4/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2t
8embedding_5/embeddings/Regularizer/Square/ReadVariableOp8embedding_5/embeddings/Regularizer/Square/ReadVariableOp:M I
'
_output_shapes
:?????????

_user_specified_namehigh:NJ
'
_output_shapes
:?????????

_user_specified_nametotal:MI
'
_output_shapes
:?????????

_user_specified_namemean:SO
'
_output_shapes
:?????????
$
_user_specified_name
total_time:QM
'
_output_shapes
:?????????
"
_user_specified_name
hratings:OK
'
_output_shapes
:?????????
 
_user_specified_namegenres:JF
'
_output_shapes
:?????????

_user_specified_nameh:JF
'
_output_shapes
:?????????

_user_specified_namef
?
?
__inference_loss_fn_4_1469909S
Aembedding_1_embeddings_regularizer_square_readvariableop_resource:
identity??8embedding_1/embeddings/Regularizer/Square/ReadVariableOp?
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpAembedding_1_embeddings_regularizer_square_readvariableop_resource*
_output_shapes

:*
dtype0?
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*embedding_1/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp
?
|
B__inference_add_2_layer_call_and_return_conditional_losses_1469844
inputs_0
inputs_1
inputs_2
identityR
addAddV2inputs_0inputs_1*
T0*'
_output_shapes
:?????????S
add_1AddV2add:z:0inputs_2*
T0*'
_output_shapes
:?????????Q
IdentityIdentity	add_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
?
F__inference_embedding_layer_call_and_return_conditional_losses_1467738

inputs+
embedding_lookup_1467726:	?
identity??6embedding/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_1467726Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1467726*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1467726*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1467726*
_output_shapes
:	?*
dtype0?
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp7^embedding/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
D
(__inference_lambda_layer_call_fn_1469412

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_1467657`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_1469661

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_dense_2_layer_call_fn_1469450

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1467637p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
E
)__inference_dropout_layer_call_fn_1469385

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1467624a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_1469360

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
V
*__inference_subtract_layer_call_fn_1469667
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_subtract_layer_call_and_return_conditional_losses_1467765`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1469349
inputs_0
inputs_1
inputs_2
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*+
_output_shapes
:?????????[
IdentityIdentityconcat:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:?????????:?????????:?????????:U Q
+
_output_shapes
:?????????
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:?????????
"
_user_specified_name
inputs/1:UQ
+
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?

?
D__inference_dense_1_layer_call_and_return_conditional_losses_1469380

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
*__inference_lambda_1_layer_call_fn_1469565

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_1_layer_call_and_return_conditional_losses_1467680`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_model_layer_call_fn_1468886
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:	?
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:
	unknown_7:
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:

unknown_12:

unknown_13:	?

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1467930o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7
?

?
D__inference_dense_2_layer_call_and_return_conditional_losses_1467637

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
-__inference_concatenate_layer_call_fn_1469618
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
identity?
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1467801`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????:?????????:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4
?
_
%__inference_add_layer_call_fn_1469719
inputs_0
inputs_1
inputs_2
identity?
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_1467842`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
a
E__inference_lambda_2_layer_call_and_return_conditional_losses_1468045

inputs
identityJ
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?T
mulMulinputsmul/y:output:0*
T0*'
_output_shapes
:?????????O
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
S
'__inference_add_1_layer_call_fn_1469782
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_1467850`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?	
c
D__inference_dropout_layer_call_and_return_conditional_losses_1469407

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_embedding_4_layer_call_fn_1469289

inputs
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_4_layer_call_and_return_conditional_losses_1467560s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
E__inference_lambda_1_layer_call_and_return_conditional_losses_1469582

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_model_layer_call_fn_1468930
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:	?
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:
	unknown_7:
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:

unknown_12:

unknown_13:	?

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_1468455o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7
?
b
)__inference_dropout_layer_call_fn_1469390

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1468241p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_embedding_1_layer_call_and_return_conditional_losses_1467718

inputs*
embedding_lookup_1467706:
identity??8embedding_1/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_1467706Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1467706*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1467706*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1467706*
_output_shapes

:*
dtype0?
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
H
,__inference_activation_layer_call_fn_1469849

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_1467891`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_concatenate_layer_call_and_return_conditional_losses_1467801

inputs
inputs_1
inputs_2
inputs_3
inputs_4
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????:?????????:?????????:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_2_layer_call_fn_1469759

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_1468068p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_dense_1_layer_call_and_return_conditional_losses_1467613

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_embedding_2_layer_call_and_return_conditional_losses_1469548

inputs*
embedding_lookup_1469536:
identity??8embedding_2/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_1469536Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1469536*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1469536*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1469536*
_output_shapes

:*
dtype0?
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
E__inference_lambda_2_layer_call_and_return_conditional_losses_1469749

inputs
identityJ
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?T
mulMulinputsmul/y:output:0*
T0*'
_output_shapes
:?????????O
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
*__inference_lambda_1_layer_call_fn_1469570

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_1_layer_call_and_return_conditional_losses_1468154`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
Ѯ
?
B__inference_model_layer_call_and_return_conditional_losses_1468455

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7&
embedding_3_1468355:	?%
embedding_4_1468358:%
embedding_5_1468361:"
dense_1_1468366:	?
dense_1_1468368:	?#
dense_2_1468372:
??
dense_2_1468374:	?%
embedding_2_1468382:%
embedding_1_1468385:$
embedding_1468388:	?#
dense_3_1468391:
??
dense_3_1468393:	?
dense_1468403:
dense_1468405:"
dense_4_1468411:	?
dense_4_1468413:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?6embedding/embeddings/Regularizer/Square/ReadVariableOp?#embedding_1/StatefulPartitionedCall?8embedding_1/embeddings/Regularizer/Square/ReadVariableOp?#embedding_2/StatefulPartitionedCall?8embedding_2/embeddings/Regularizer/Square/ReadVariableOp?#embedding_3/StatefulPartitionedCall?8embedding_3/embeddings/Regularizer/Square/ReadVariableOp?#embedding_4/StatefulPartitionedCall?8embedding_4/embeddings/Regularizer/Square/ReadVariableOp?#embedding_5/StatefulPartitionedCall?8embedding_5/embeddings/Regularizer/Square/ReadVariableOp?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputs_5embedding_3_1468355*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_3_layer_call_and_return_conditional_losses_1467540?
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallinputs_6embedding_4_1468358*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_4_layer_call_and_return_conditional_losses_1467560?
#embedding_5/StatefulPartitionedCallStatefulPartitionedCallinputs_7embedding_5_1468361*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_5_layer_call_and_return_conditional_losses_1467580?
concatenate_1/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0,embedding_4/StatefulPartitionedCall:output:0,embedding_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1467592?
flatten_3/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_1467600?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_1_1468366dense_1_1468368*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1467613?
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1468241?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_2_1468372dense_2_1468374*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1467637?
multiply_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_multiply_1_layer_call_and_return_conditional_losses_1467649?
lambda/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_1468201?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1468184?
multiply/PartitionedCallPartitionedCalllambda/PartitionedCall:output:0lambda/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_multiply_layer_call_and_return_conditional_losses_1467672?
lambda_1/PartitionedCallPartitionedCall#multiply_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_1_layer_call_and_return_conditional_losses_1468154?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputs_7embedding_2_1468382*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_2_layer_call_and_return_conditional_losses_1467698?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs_6embedding_1_1468385*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_1_layer_call_and_return_conditional_losses_1467718?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_5embedding_1468388*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_1467738?
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_3_1468391dense_3_1468393*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_1467753?
subtract/PartitionedCallPartitionedCall!multiply/PartitionedCall:output:0!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_subtract_layer_call_and_return_conditional_losses_1467765?
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1467773?
flatten_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1467781?
flatten_2/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1467789?
concatenate/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1467801?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_1468068?
lambda_2/PartitionedCallPartitionedCall!subtract/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_1468045?
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_1468403dense_1468405*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1467828?
add/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_1467842?
add_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_1467850?
lambda_3/PartitionedCallPartitionedCall!lambda_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_3_layer_call_and_return_conditional_losses_1468003?
dense_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_4_1468411dense_4_1468413*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1467870?
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0!lambda_3/PartitionedCall:output:0(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_1467884?
activation/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_1467891?
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_3_1468355*
_output_shapes
:	?*
dtype0?
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_4_1468358*
_output_shapes

:*
dtype0?
)embedding_4/embeddings/Regularizer/SquareSquare@embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_4/embeddings/Regularizer/SumSum-embedding_4/embeddings/Regularizer/Square:y:01embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_4/embeddings/Regularizer/mulMul1embedding_4/embeddings/Regularizer/mul/x:output:0/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_5/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_5_1468361*
_output_shapes

:*
dtype0?
)embedding_5/embeddings/Regularizer/SquareSquare@embedding_5/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_5/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_5/embeddings/Regularizer/SumSum-embedding_5/embeddings/Regularizer/Square:y:01embedding_5/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_5/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_5/embeddings/Regularizer/mulMul1embedding_5/embeddings/Regularizer/mul/x:output:0/embedding_5/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1468388*
_output_shapes
:	?*
dtype0?
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1_1468385*
_output_shapes

:*
dtype0?
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2_1468382*
_output_shapes

:*
dtype0?
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: r
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall7^embedding/embeddings/Regularizer/Square/ReadVariableOp$^embedding_1/StatefulPartitionedCall9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp$^embedding_2/StatefulPartitionedCall9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp$^embedding_3/StatefulPartitionedCall9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp$^embedding_4/StatefulPartitionedCall9^embedding_4/embeddings/Regularizer/Square/ReadVariableOp$^embedding_5/StatefulPartitionedCall9^embedding_5/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2t
8embedding_4/embeddings/Regularizer/Square/ReadVariableOp8embedding_4/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2t
8embedding_5/embeddings/Regularizer/Square/ReadVariableOp8embedding_5/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_embedding_1_layer_call_fn_1469503

inputs
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_1_layer_call_and_return_conditional_losses_1467718s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_embedding_5_layer_call_and_return_conditional_losses_1467580

inputs*
embedding_lookup_1467568:
identity??8embedding_5/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_1467568Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1467568*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1467568*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
8embedding_5/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1467568*
_output_shapes

:*
dtype0?
)embedding_5/embeddings/Regularizer/SquareSquare@embedding_5/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_5/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_5/embeddings/Regularizer/SumSum-embedding_5/embeddings/Regularizer/Square:y:01embedding_5/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_5/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_5/embeddings/Regularizer/mulMul1embedding_5/embeddings/Regularizer/mul/x:output:0/embedding_5/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp9^embedding_5/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2t
8embedding_5/embeddings/Regularizer/Square/ReadVariableOp8embedding_5/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_1467600

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_4_layer_call_and_return_conditional_losses_1467870

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense_1_layer_call_fn_1469369

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1467613p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
C__inference_lambda_layer_call_and_return_conditional_losses_1469429

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
B__inference_model_layer_call_and_return_conditional_losses_1468754
high	
total
mean

total_time
hratings

genres
h
f&
embedding_3_1468654:	?%
embedding_4_1468657:%
embedding_5_1468660:"
dense_1_1468665:	?
dense_1_1468667:	?#
dense_2_1468671:
??
dense_2_1468673:	?%
embedding_2_1468681:%
embedding_1_1468684:$
embedding_1468687:	?#
dense_3_1468690:
??
dense_3_1468692:	?
dense_1468702:
dense_1468704:"
dense_4_1468710:	?
dense_4_1468712:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?6embedding/embeddings/Regularizer/Square/ReadVariableOp?#embedding_1/StatefulPartitionedCall?8embedding_1/embeddings/Regularizer/Square/ReadVariableOp?#embedding_2/StatefulPartitionedCall?8embedding_2/embeddings/Regularizer/Square/ReadVariableOp?#embedding_3/StatefulPartitionedCall?8embedding_3/embeddings/Regularizer/Square/ReadVariableOp?#embedding_4/StatefulPartitionedCall?8embedding_4/embeddings/Regularizer/Square/ReadVariableOp?#embedding_5/StatefulPartitionedCall?8embedding_5/embeddings/Regularizer/Square/ReadVariableOp?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallgenresembedding_3_1468654*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_3_layer_call_and_return_conditional_losses_1467540?
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallhembedding_4_1468657*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_4_layer_call_and_return_conditional_losses_1467560?
#embedding_5/StatefulPartitionedCallStatefulPartitionedCallfembedding_5_1468660*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_5_layer_call_and_return_conditional_losses_1467580?
concatenate_1/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0,embedding_4/StatefulPartitionedCall:output:0,embedding_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1467592?
flatten_3/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_1467600?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_1_1468665dense_1_1468667*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1467613?
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1468241?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_2_1468671dense_2_1468673*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1467637?
multiply_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_multiply_1_layer_call_and_return_conditional_losses_1467649?
lambda/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_1468201?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1468184?
multiply/PartitionedCallPartitionedCalllambda/PartitionedCall:output:0lambda/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_multiply_layer_call_and_return_conditional_losses_1467672?
lambda_1/PartitionedCallPartitionedCall#multiply_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_1_layer_call_and_return_conditional_losses_1468154?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallfembedding_2_1468681*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_2_layer_call_and_return_conditional_losses_1467698?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallhembedding_1_1468684*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_1_layer_call_and_return_conditional_losses_1467718?
!embedding/StatefulPartitionedCallStatefulPartitionedCallgenresembedding_1468687*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_1467738?
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_3_1468690dense_3_1468692*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_1467753?
subtract/PartitionedCallPartitionedCall!multiply/PartitionedCall:output:0!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_subtract_layer_call_and_return_conditional_losses_1467765?
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1467773?
flatten_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1467781?
flatten_2/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1467789?
concatenate/PartitionedCallPartitionedCallhightotalmean
total_timehratings*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1467801?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_1468068?
lambda_2/PartitionedCallPartitionedCall!subtract/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_1468045?
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_1468702dense_1468704*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1467828?
add/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_1467842?
add_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_1467850?
lambda_3/PartitionedCallPartitionedCall!lambda_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_3_layer_call_and_return_conditional_losses_1468003?
dense_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_4_1468710dense_4_1468712*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1467870?
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0!lambda_3/PartitionedCall:output:0(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_1467884?
activation/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_1467891?
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_3_1468654*
_output_shapes
:	?*
dtype0?
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_4_1468657*
_output_shapes

:*
dtype0?
)embedding_4/embeddings/Regularizer/SquareSquare@embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_4/embeddings/Regularizer/SumSum-embedding_4/embeddings/Regularizer/Square:y:01embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_4/embeddings/Regularizer/mulMul1embedding_4/embeddings/Regularizer/mul/x:output:0/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_5/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_5_1468660*
_output_shapes

:*
dtype0?
)embedding_5/embeddings/Regularizer/SquareSquare@embedding_5/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_5/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_5/embeddings/Regularizer/SumSum-embedding_5/embeddings/Regularizer/Square:y:01embedding_5/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_5/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_5/embeddings/Regularizer/mulMul1embedding_5/embeddings/Regularizer/mul/x:output:0/embedding_5/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1468687*
_output_shapes
:	?*
dtype0?
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_1_1468684*
_output_shapes

:*
dtype0?
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2_1468681*
_output_shapes

:*
dtype0?
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: r
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall7^embedding/embeddings/Regularizer/Square/ReadVariableOp$^embedding_1/StatefulPartitionedCall9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp$^embedding_2/StatefulPartitionedCall9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp$^embedding_3/StatefulPartitionedCall9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp$^embedding_4/StatefulPartitionedCall9^embedding_4/embeddings/Regularizer/Square/ReadVariableOp$^embedding_5/StatefulPartitionedCall9^embedding_5/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2t
8embedding_4/embeddings/Regularizer/Square/ReadVariableOp8embedding_4/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2t
8embedding_5/embeddings/Regularizer/Square/ReadVariableOp8embedding_5/embeddings/Regularizer/Square/ReadVariableOp:M I
'
_output_shapes
:?????????

_user_specified_namehigh:NJ
'
_output_shapes
:?????????

_user_specified_nametotal:MI
'
_output_shapes
:?????????

_user_specified_namemean:SO
'
_output_shapes
:?????????
$
_user_specified_name
total_time:QM
'
_output_shapes
:?????????
"
_user_specified_name
hratings:OK
'
_output_shapes
:?????????
 
_user_specified_namegenres:JF
'
_output_shapes
:?????????

_user_specified_nameh:JF
'
_output_shapes
:?????????

_user_specified_namef
?	
c
D__inference_dropout_layer_call_and_return_conditional_losses_1468241

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_1_layer_call_fn_1469587

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1467664a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_dense_3_layer_call_and_return_conditional_losses_1469693

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1467503
high	
total
mean

total_time
hratings

genres
h
f=
*model_embedding_3_embedding_lookup_1467402:	?<
*model_embedding_4_embedding_lookup_1467408:<
*model_embedding_5_embedding_lookup_1467414:?
,model_dense_1_matmul_readvariableop_resource:	?<
-model_dense_1_biasadd_readvariableop_resource:	?@
,model_dense_2_matmul_readvariableop_resource:
??<
-model_dense_2_biasadd_readvariableop_resource:	?<
*model_embedding_2_embedding_lookup_1467446:<
*model_embedding_1_embedding_lookup_1467452:;
(model_embedding_embedding_lookup_1467458:	?@
,model_dense_3_matmul_readvariableop_resource:
??<
-model_dense_3_biasadd_readvariableop_resource:	?<
*model_dense_matmul_readvariableop_resource:9
+model_dense_biasadd_readvariableop_resource:?
,model_dense_4_matmul_readvariableop_resource:	?;
-model_dense_4_biasadd_readvariableop_resource:
identity??"model/dense/BiasAdd/ReadVariableOp?!model/dense/MatMul/ReadVariableOp?$model/dense_1/BiasAdd/ReadVariableOp?#model/dense_1/MatMul/ReadVariableOp?$model/dense_2/BiasAdd/ReadVariableOp?#model/dense_2/MatMul/ReadVariableOp?$model/dense_3/BiasAdd/ReadVariableOp?#model/dense_3/MatMul/ReadVariableOp?$model/dense_4/BiasAdd/ReadVariableOp?#model/dense_4/MatMul/ReadVariableOp? model/embedding/embedding_lookup?"model/embedding_1/embedding_lookup?"model/embedding_2/embedding_lookup?"model/embedding_3/embedding_lookup?"model/embedding_4/embedding_lookup?"model/embedding_5/embedding_lookupg
model/embedding_3/CastCastgenres*

DstT0*

SrcT0*'
_output_shapes
:??????????
"model/embedding_3/embedding_lookupResourceGather*model_embedding_3_embedding_lookup_1467402model/embedding_3/Cast:y:0*
Tindices0*=
_class3
1/loc:@model/embedding_3/embedding_lookup/1467402*+
_output_shapes
:?????????*
dtype0?
+model/embedding_3/embedding_lookup/IdentityIdentity+model/embedding_3/embedding_lookup:output:0*
T0*=
_class3
1/loc:@model/embedding_3/embedding_lookup/1467402*+
_output_shapes
:??????????
-model/embedding_3/embedding_lookup/Identity_1Identity4model/embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????b
model/embedding_4/CastCasth*

DstT0*

SrcT0*'
_output_shapes
:??????????
"model/embedding_4/embedding_lookupResourceGather*model_embedding_4_embedding_lookup_1467408model/embedding_4/Cast:y:0*
Tindices0*=
_class3
1/loc:@model/embedding_4/embedding_lookup/1467408*+
_output_shapes
:?????????*
dtype0?
+model/embedding_4/embedding_lookup/IdentityIdentity+model/embedding_4/embedding_lookup:output:0*
T0*=
_class3
1/loc:@model/embedding_4/embedding_lookup/1467408*+
_output_shapes
:??????????
-model/embedding_4/embedding_lookup/Identity_1Identity4model/embedding_4/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????b
model/embedding_5/CastCastf*

DstT0*

SrcT0*'
_output_shapes
:??????????
"model/embedding_5/embedding_lookupResourceGather*model_embedding_5_embedding_lookup_1467414model/embedding_5/Cast:y:0*
Tindices0*=
_class3
1/loc:@model/embedding_5/embedding_lookup/1467414*+
_output_shapes
:?????????*
dtype0?
+model/embedding_5/embedding_lookup/IdentityIdentity+model/embedding_5/embedding_lookup:output:0*
T0*=
_class3
1/loc:@model/embedding_5/embedding_lookup/1467414*+
_output_shapes
:??????????
-model/embedding_5/embedding_lookup/Identity_1Identity4model/embedding_5/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????a
model/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model/concatenate_1/concatConcatV26model/embedding_3/embedding_lookup/Identity_1:output:06model/embedding_4/embedding_lookup/Identity_1:output:06model/embedding_5/embedding_lookup/Identity_1:output:0(model/concatenate_1/concat/axis:output:0*
N*
T0*+
_output_shapes
:?????????f
model/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model/flatten_3/ReshapeReshape#model/concatenate_1/concat:output:0model/flatten_3/Const:output:0*
T0*'
_output_shapes
:??????????
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
model/dense_1/MatMulMatMul model/flatten_3/Reshape:output:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????w
model/dropout/IdentityIdentity model/dense_1/Relu:activations:0*
T0*(
_output_shapes
:???????????
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
model/dense_2/MatMulMatMulmodel/dropout/Identity:output:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
model/dense_2/ReluRelumodel/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
model/multiply_1/mulMul#model/concatenate_1/concat:output:0#model/concatenate_1/concat:output:0*
T0*+
_output_shapes
:?????????d
"model/lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
model/lambda/SumSum#model/concatenate_1/concat:output:0+model/lambda/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????y
model/dropout_1/IdentityIdentity model/dense_2/Relu:activations:0*
T0*(
_output_shapes
:???????????
model/multiply/mulMulmodel/lambda/Sum:output:0model/lambda/Sum:output:0*
T0*'
_output_shapes
:?????????f
$model/lambda_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
model/lambda_1/SumSummodel/multiply_1/mul:z:0-model/lambda_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????b
model/embedding_2/CastCastf*

DstT0*

SrcT0*'
_output_shapes
:??????????
"model/embedding_2/embedding_lookupResourceGather*model_embedding_2_embedding_lookup_1467446model/embedding_2/Cast:y:0*
Tindices0*=
_class3
1/loc:@model/embedding_2/embedding_lookup/1467446*+
_output_shapes
:?????????*
dtype0?
+model/embedding_2/embedding_lookup/IdentityIdentity+model/embedding_2/embedding_lookup:output:0*
T0*=
_class3
1/loc:@model/embedding_2/embedding_lookup/1467446*+
_output_shapes
:??????????
-model/embedding_2/embedding_lookup/Identity_1Identity4model/embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????b
model/embedding_1/CastCasth*

DstT0*

SrcT0*'
_output_shapes
:??????????
"model/embedding_1/embedding_lookupResourceGather*model_embedding_1_embedding_lookup_1467452model/embedding_1/Cast:y:0*
Tindices0*=
_class3
1/loc:@model/embedding_1/embedding_lookup/1467452*+
_output_shapes
:?????????*
dtype0?
+model/embedding_1/embedding_lookup/IdentityIdentity+model/embedding_1/embedding_lookup:output:0*
T0*=
_class3
1/loc:@model/embedding_1/embedding_lookup/1467452*+
_output_shapes
:??????????
-model/embedding_1/embedding_lookup/Identity_1Identity4model/embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????e
model/embedding/CastCastgenres*

DstT0*

SrcT0*'
_output_shapes
:??????????
 model/embedding/embedding_lookupResourceGather(model_embedding_embedding_lookup_1467458model/embedding/Cast:y:0*
Tindices0*;
_class1
/-loc:@model/embedding/embedding_lookup/1467458*+
_output_shapes
:?????????*
dtype0?
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@model/embedding/embedding_lookup/1467458*+
_output_shapes
:??????????
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
model/dense_3/MatMulMatMul!model/dropout_1/Identity:output:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
model/dense_3/ReluRelumodel/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
model/subtract/subSubmodel/multiply/mul:z:0model/lambda_1/Sum:output:0*
T0*'
_output_shapes
:?????????d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model/flatten/ReshapeReshape4model/embedding/embedding_lookup/Identity_1:output:0model/flatten/Const:output:0*
T0*'
_output_shapes
:?????????f
model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model/flatten_1/ReshapeReshape6model/embedding_1/embedding_lookup/Identity_1:output:0model/flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????f
model/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model/flatten_2/ReshapeReshape6model/embedding_2/embedding_lookup/Identity_1:output:0model/flatten_2/Const:output:0*
T0*'
_output_shapes
:?????????_
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model/concatenate/concatConcatV2hightotalmean
total_timehratings&model/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????y
model/dropout_2/IdentityIdentity model/dense_3/Relu:activations:0*
T0*(
_output_shapes
:??????????Y
model/lambda_2/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
model/lambda_2/mulMulmodel/subtract/sub:z:0model/lambda_2/mul/y:output:0*
T0*'
_output_shapes
:??????????
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
model/dense/MatMulMatMul!model/concatenate/concat:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
model/add/addAddV2model/flatten/Reshape:output:0 model/flatten_1/Reshape:output:0*
T0*'
_output_shapes
:?????????
model/add/add_1AddV2model/add/add:z:0 model/flatten_2/Reshape:output:0*
T0*'
_output_shapes
:?????????}
model/add_1/addAddV2model/dense/BiasAdd:output:0model/add/add_1:z:0*
T0*'
_output_shapes
:?????????f
$model/lambda_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
model/lambda_3/SumSummodel/lambda_2/mul:z:0-model/lambda_3/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(?
#model/dense_4/MatMul/ReadVariableOpReadVariableOp,model_dense_4_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
model/dense_4/MatMulMatMul!model/dropout_2/Identity:output:0+model/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model/dense_4/BiasAddBiasAddmodel/dense_4/MatMul:product:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
model/add_2/addAddV2model/add_1/add:z:0model/lambda_3/Sum:output:0*
T0*'
_output_shapes
:??????????
model/add_2/add_1AddV2model/add_2/add:z:0model/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????l
model/activation/SigmoidSigmoidmodel/add_2/add_1:z:0*
T0*'
_output_shapes
:?????????k
IdentityIdentitymodel/activation/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp!^model/embedding/embedding_lookup#^model/embedding_1/embedding_lookup#^model/embedding_2/embedding_lookup#^model/embedding_3/embedding_lookup#^model/embedding_4/embedding_lookup#^model/embedding_5/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp2L
$model/dense_4/BiasAdd/ReadVariableOp$model/dense_4/BiasAdd/ReadVariableOp2J
#model/dense_4/MatMul/ReadVariableOp#model/dense_4/MatMul/ReadVariableOp2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2H
"model/embedding_1/embedding_lookup"model/embedding_1/embedding_lookup2H
"model/embedding_2/embedding_lookup"model/embedding_2/embedding_lookup2H
"model/embedding_3/embedding_lookup"model/embedding_3/embedding_lookup2H
"model/embedding_4/embedding_lookup"model/embedding_4/embedding_lookup2H
"model/embedding_5/embedding_lookup"model/embedding_5/embedding_lookup:M I
'
_output_shapes
:?????????

_user_specified_namehigh:NJ
'
_output_shapes
:?????????

_user_specified_nametotal:MI
'
_output_shapes
:?????????

_user_specified_namemean:SO
'
_output_shapes
:?????????
$
_user_specified_name
total_time:QM
'
_output_shapes
:?????????
"
_user_specified_name
hratings:OK
'
_output_shapes
:?????????
 
_user_specified_namegenres:JF
'
_output_shapes
:?????????

_user_specified_nameh:JF
'
_output_shapes
:?????????

_user_specified_namef
?
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_1467808

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
l
B__inference_add_1_layer_call_and_return_conditional_losses_1467850

inputs
inputs_1
identityP
addAddV2inputsinputs_1*
T0*'
_output_shapes
:?????????O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
C__inference_lambda_layer_call_and_return_conditional_losses_1468201

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_1468068

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_1469609

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
B__inference_model_layer_call_and_return_conditional_losses_1469247
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_77
$embedding_3_embedding_lookup_1469089:	?6
$embedding_4_embedding_lookup_1469095:6
$embedding_5_embedding_lookup_1469101:9
&dense_1_matmul_readvariableop_resource:	?6
'dense_1_biasadd_readvariableop_resource:	?:
&dense_2_matmul_readvariableop_resource:
??6
'dense_2_biasadd_readvariableop_resource:	?6
$embedding_2_embedding_lookup_1469147:6
$embedding_1_embedding_lookup_1469153:5
"embedding_embedding_lookup_1469159:	?:
&dense_3_matmul_readvariableop_resource:
??6
'dense_3_biasadd_readvariableop_resource:	?6
$dense_matmul_readvariableop_resource:3
%dense_biasadd_readvariableop_resource:9
&dense_4_matmul_readvariableop_resource:	?5
'dense_4_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?embedding/embedding_lookup?6embedding/embeddings/Regularizer/Square/ReadVariableOp?embedding_1/embedding_lookup?8embedding_1/embeddings/Regularizer/Square/ReadVariableOp?embedding_2/embedding_lookup?8embedding_2/embeddings/Regularizer/Square/ReadVariableOp?embedding_3/embedding_lookup?8embedding_3/embeddings/Regularizer/Square/ReadVariableOp?embedding_4/embedding_lookup?8embedding_4/embeddings/Regularizer/Square/ReadVariableOp?embedding_5/embedding_lookup?8embedding_5/embeddings/Regularizer/Square/ReadVariableOpc
embedding_3/CastCastinputs_5*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_3/embedding_lookupResourceGather$embedding_3_embedding_lookup_1469089embedding_3/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_3/embedding_lookup/1469089*+
_output_shapes
:?????????*
dtype0?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_3/embedding_lookup/1469089*+
_output_shapes
:??????????
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????c
embedding_4/CastCastinputs_6*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_4/embedding_lookupResourceGather$embedding_4_embedding_lookup_1469095embedding_4/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_4/embedding_lookup/1469095*+
_output_shapes
:?????????*
dtype0?
%embedding_4/embedding_lookup/IdentityIdentity%embedding_4/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_4/embedding_lookup/1469095*+
_output_shapes
:??????????
'embedding_4/embedding_lookup/Identity_1Identity.embedding_4/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????c
embedding_5/CastCastinputs_7*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_5/embedding_lookupResourceGather$embedding_5_embedding_lookup_1469101embedding_5/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_5/embedding_lookup/1469101*+
_output_shapes
:?????????*
dtype0?
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_5/embedding_lookup/1469101*+
_output_shapes
:??????????
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_1/concatConcatV20embedding_3/embedding_lookup/Identity_1:output:00embedding_4/embedding_lookup/Identity_1:output:00embedding_5/embedding_lookup/Identity_1:output:0"concatenate_1/concat/axis:output:0*
N*
T0*+
_output_shapes
:?????????`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_3/ReshapeReshapeconcatenate_1/concat:output:0flatten_3/Const:output:0*
T0*'
_output_shapes
:??????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_1/MatMulMatMulflatten_3/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout/dropout/MulMuldense_1/Relu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????_
dropout/dropout/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_2/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
multiply_1/mulMulconcatenate_1/concat:output:0concatenate_1/concat:output:0*
T0*+
_output_shapes
:?????????^
lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?

lambda/SumSumconcatenate_1/concat:output:0%lambda/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_1/dropout/MulMuldense_2/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:??????????a
dropout_1/dropout/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????o
multiply/mulMullambda/Sum:output:0lambda/Sum:output:0*
T0*'
_output_shapes
:?????????`
lambda_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
lambda_1/SumSummultiply_1/mul:z:0'lambda_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
embedding_2/CastCastinputs_7*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_2/embedding_lookupResourceGather$embedding_2_embedding_lookup_1469147embedding_2/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_2/embedding_lookup/1469147*+
_output_shapes
:?????????*
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_2/embedding_lookup/1469147*+
_output_shapes
:??????????
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????c
embedding_1/CastCastinputs_6*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_1/embedding_lookupResourceGather$embedding_1_embedding_lookup_1469153embedding_1/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_1/embedding_lookup/1469153*+
_output_shapes
:?????????*
dtype0?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_1/embedding_lookup/1469153*+
_output_shapes
:??????????
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????a
embedding/CastCastinputs_5*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1469159embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1469159*+
_output_shapes
:?????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1469159*+
_output_shapes
:??????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_3/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????n
subtract/subSubmultiply/mul:z:0lambda_1/Sum:output:0*
T0*'
_output_shapes
:?????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:?????????`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_1/ReshapeReshape0embedding_1/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_2/ReshapeReshape0embedding_2/embedding_lookup/Identity_1:output:0flatten_2/Const:output:0*
T0*'
_output_shapes
:?????????Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate/concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_2/dropout/MulMuldense_3/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*(
_output_shapes
:??????????a
dropout_2/dropout/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????S
lambda_2/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?p
lambda_2/mulMulsubtract/sub:z:0lambda_2/mul/y:output:0*
T0*'
_output_shapes
:??????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
add/addAddV2flatten/Reshape:output:0flatten_1/Reshape:output:0*
T0*'
_output_shapes
:?????????m
	add/add_1AddV2add/add:z:0flatten_2/Reshape:output:0*
T0*'
_output_shapes
:?????????k
	add_1/addAddV2dense/BiasAdd:output:0add/add_1:z:0*
T0*'
_output_shapes
:?????????`
lambda_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
lambda_3/SumSumlambda_2/mul:z:0'lambda_3/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_4/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
	add_2/addAddV2add_1/add:z:0lambda_3/Sum:output:0*
T0*'
_output_shapes
:?????????o
add_2/add_1AddV2add_2/add:z:0dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
activation/SigmoidSigmoidadd_2/add_1:z:0*
T0*'
_output_shapes
:??????????
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_3_embedding_lookup_1469089*
_output_shapes
:	?*
dtype0?
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_4_embedding_lookup_1469095*
_output_shapes

:*
dtype0?
)embedding_4/embeddings/Regularizer/SquareSquare@embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_4/embeddings/Regularizer/SumSum-embedding_4/embeddings/Regularizer/Square:y:01embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_4/embeddings/Regularizer/mulMul1embedding_4/embeddings/Regularizer/mul/x:output:0/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_5/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_5_embedding_lookup_1469101*
_output_shapes

:*
dtype0?
)embedding_5/embeddings/Regularizer/SquareSquare@embedding_5/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_5/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_5/embeddings/Regularizer/SumSum-embedding_5/embeddings/Regularizer/Square:y:01embedding_5/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_5/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_5/embeddings/Regularizer/mulMul1embedding_5/embeddings/Regularizer/mul/x:output:0/embedding_5/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp"embedding_embedding_lookup_1469159*
_output_shapes
:	?*
dtype0?
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_1_embedding_lookup_1469153*
_output_shapes

:*
dtype0?
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_2_embedding_lookup_1469147*
_output_shapes

:*
dtype0?
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: e
IdentityIdentityactivation/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^embedding/embedding_lookup7^embedding/embeddings/Regularizer/Square/ReadVariableOp^embedding_1/embedding_lookup9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp^embedding_2/embedding_lookup9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp^embedding_3/embedding_lookup9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp^embedding_4/embedding_lookup9^embedding_4/embeddings/Regularizer/Square/ReadVariableOp^embedding_5/embedding_lookup9^embedding_5/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_4/embedding_lookupembedding_4/embedding_lookup2t
8embedding_4/embeddings/Regularizer/Square/ReadVariableOp8embedding_4/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_5/embedding_lookupembedding_5/embedding_lookup2t
8embedding_5/embeddings/Regularizer/Square/ReadVariableOp8embedding_5/embeddings/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7
?
?
'__inference_dense_layer_call_fn_1469702

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1467828o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
E__inference_lambda_2_layer_call_and_return_conditional_losses_1467816

inputs
identityJ
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?T
mulMulinputsmul/y:output:0*
T0*'
_output_shapes
:?????????O
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_embedding_1_layer_call_and_return_conditional_losses_1469519

inputs*
embedding_lookup_1469507:
identity??8embedding_1/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_1469507Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1469507*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1469507*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1469507*
_output_shapes

:*
dtype0?
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_2_layer_call_and_return_conditional_losses_1469461

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
V
*__inference_multiply_layer_call_fn_1469554
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_multiply_layer_call_and_return_conditional_losses_1467672`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_1469764

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_1467781

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_layer_call_and_return_conditional_losses_1467828

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_1469395

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_lambda_2_layer_call_and_return_conditional_losses_1469743

inputs
identityJ
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?T
mulMulinputsmul/y:output:0*
T0*'
_output_shapes
:?????????O
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_4_layer_call_and_return_conditional_losses_1469829

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_1469597

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_layer_call_and_return_conditional_losses_1467773

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
i
/__inference_concatenate_1_layer_call_fn_1469341
inputs_0
inputs_1
inputs_2
identity?
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1467592d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:?????????:?????????:?????????:U Q
+
_output_shapes
:?????????
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:?????????
"
_user_specified_name
inputs/1:UQ
+
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
q
E__inference_multiply_layer_call_and_return_conditional_losses_1469560
inputs_0
inputs_1
identityP
mulMulinputs_0inputs_1*
T0*'
_output_shapes
:?????????O
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
__inference_loss_fn_0_1469865T
Aembedding_3_embeddings_regularizer_square_readvariableop_resource:	?
identity??8embedding_3/embeddings/Regularizer/Square/ReadVariableOp?
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpAembedding_3_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype0?
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*embedding_3/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp
?
z
@__inference_add_layer_call_and_return_conditional_losses_1469727
inputs_0
inputs_1
inputs_2
identityR
addAddV2inputs_0inputs_1*
T0*'
_output_shapes
:?????????S
add_1AddV2add:z:0inputs_2*
T0*'
_output_shapes
:?????????Q
IdentityIdentity	add_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_1467789

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
G__inference_activation_layer_call_and_return_conditional_losses_1467891

inputs
identityL
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????S
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_embedding_2_layer_call_and_return_conditional_losses_1467698

inputs*
embedding_lookup_1467686:
identity??8embedding_2/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_1467686Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1467686*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1467686*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1467686*
_output_shapes

:*
dtype0?
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
E
)__inference_flatten_layer_call_fn_1469633

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1467773`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_concatenate_layer_call_and_return_conditional_losses_1469628
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:?????????:?????????:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4
?
?
-__inference_embedding_3_layer_call_fn_1469260

inputs
unknown:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_3_layer_call_and_return_conditional_losses_1467540s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
o
E__inference_multiply_layer_call_and_return_conditional_losses_1467672

inputs
inputs_1
identityN
mulMulinputsinputs_1*
T0*'
_output_shapes
:?????????O
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_1_layer_call_fn_1469644

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1467781`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
E__inference_lambda_3_layer_call_and_return_conditional_losses_1468003

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_embedding_5_layer_call_and_return_conditional_losses_1469334

inputs*
embedding_lookup_1469322:
identity??8embedding_5/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_1469322Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1469322*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1469322*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
8embedding_5/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1469322*
_output_shapes

:*
dtype0?
)embedding_5/embeddings/Regularizer/SquareSquare@embedding_5/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_5/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_5/embeddings/Regularizer/SumSum-embedding_5/embeddings/Regularizer/Square:y:01embedding_5/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_5/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_5/embeddings/Regularizer/mulMul1embedding_5/embeddings/Regularizer/mul/x:output:0/embedding_5/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp9^embedding_5/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2t
8embedding_5/embeddings/Regularizer/Square/ReadVariableOp8embedding_5/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
z
B__inference_add_2_layer_call_and_return_conditional_losses_1467884

inputs
inputs_1
inputs_2
identityP
addAddV2inputsinputs_1*
T0*'
_output_shapes
:?????????S
add_1AddV2add:z:0inputs_2*
T0*'
_output_shapes
:?????????Q
IdentityIdentity	add_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:?????????:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
n
B__inference_add_1_layer_call_and_return_conditional_losses_1469788
inputs_0
inputs_1
identityR
addAddV2inputs_0inputs_1*
T0*'
_output_shapes
:?????????O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?	
?
B__inference_dense_layer_call_and_return_conditional_losses_1469712

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_1467624

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_1_layer_call_fn_1469592

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1468184p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_1469876S
Aembedding_4_embeddings_regularizer_square_readvariableop_resource:
identity??8embedding_4/embeddings/Regularizer/Square/ReadVariableOp?
8embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpAembedding_4_embeddings_regularizer_square_readvariableop_resource*
_output_shapes

:*
dtype0?
)embedding_4/embeddings/Regularizer/SquareSquare@embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_4/embeddings/Regularizer/SumSum-embedding_4/embeddings/Regularizer/Square:y:01embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_4/embeddings/Regularizer/mulMul1embedding_4/embeddings/Regularizer/mul/x:output:0/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*embedding_4/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp9^embedding_4/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8embedding_4/embeddings/Regularizer/Square/ReadVariableOp8embedding_4/embeddings/Regularizer/Square/ReadVariableOp
?
D
(__inference_lambda_layer_call_fn_1469417

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lambda_layer_call_and_return_conditional_losses_1468201`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_3_layer_call_and_return_conditional_losses_1467753

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_embedding_4_layer_call_and_return_conditional_losses_1469305

inputs*
embedding_lookup_1469293:
identity??8embedding_4/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_1469293Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/1469293*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1469293*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
8embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1469293*
_output_shapes

:*
dtype0?
)embedding_4/embeddings/Regularizer/SquareSquare@embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_4/embeddings/Regularizer/SumSum-embedding_4/embeddings/Regularizer/Square:y:01embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_4/embeddings/Regularizer/mulMul1embedding_4/embeddings/Regularizer/mul/x:output:0/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp9^embedding_4/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2t
8embedding_4/embeddings/Regularizer/Square/ReadVariableOp8embedding_4/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_embedding_5_layer_call_fn_1469318

inputs
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_embedding_5_layer_call_and_return_conditional_losses_1467580s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
q
G__inference_multiply_1_layer_call_and_return_conditional_losses_1467649

inputs
inputs_1
identityR
mulMulinputsinputs_1*
T0*+
_output_shapes
:?????????S
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:?????????:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:SO
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
s
G__inference_multiply_1_layer_call_and_return_conditional_losses_1469441
inputs_0
inputs_1
identityT
mulMulinputs_0inputs_1*
T0*+
_output_shapes
:?????????S
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:?????????:?????????:U Q
+
_output_shapes
:?????????
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
X
,__inference_multiply_1_layer_call_fn_1469435
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_multiply_1_layer_call_and_return_conditional_losses_1467649d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:?????????:?????????:U Q
+
_output_shapes
:?????????
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
)__inference_dense_3_layer_call_fn_1469682

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_1467753p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_lambda_1_layer_call_and_return_conditional_losses_1469576

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
E__inference_lambda_3_layer_call_and_return_conditional_losses_1469810

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_embedding_layer_call_fn_1469474

inputs
unknown:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_1467738s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
x
@__inference_add_layer_call_and_return_conditional_losses_1467842

inputs
inputs_1
inputs_2
identityP
addAddV2inputsinputs_1*
T0*'
_output_shapes
:?????????S
add_1AddV2add:z:0inputs_2*
T0*'
_output_shapes
:?????????Q
IdentityIdentity	add_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:?????????:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_1469650

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
B__inference_model_layer_call_and_return_conditional_losses_1469078
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_77
$embedding_3_embedding_lookup_1468941:	?6
$embedding_4_embedding_lookup_1468947:6
$embedding_5_embedding_lookup_1468953:9
&dense_1_matmul_readvariableop_resource:	?6
'dense_1_biasadd_readvariableop_resource:	?:
&dense_2_matmul_readvariableop_resource:
??6
'dense_2_biasadd_readvariableop_resource:	?6
$embedding_2_embedding_lookup_1468985:6
$embedding_1_embedding_lookup_1468991:5
"embedding_embedding_lookup_1468997:	?:
&dense_3_matmul_readvariableop_resource:
??6
'dense_3_biasadd_readvariableop_resource:	?6
$dense_matmul_readvariableop_resource:3
%dense_biasadd_readvariableop_resource:9
&dense_4_matmul_readvariableop_resource:	?5
'dense_4_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?embedding/embedding_lookup?6embedding/embeddings/Regularizer/Square/ReadVariableOp?embedding_1/embedding_lookup?8embedding_1/embeddings/Regularizer/Square/ReadVariableOp?embedding_2/embedding_lookup?8embedding_2/embeddings/Regularizer/Square/ReadVariableOp?embedding_3/embedding_lookup?8embedding_3/embeddings/Regularizer/Square/ReadVariableOp?embedding_4/embedding_lookup?8embedding_4/embeddings/Regularizer/Square/ReadVariableOp?embedding_5/embedding_lookup?8embedding_5/embeddings/Regularizer/Square/ReadVariableOpc
embedding_3/CastCastinputs_5*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_3/embedding_lookupResourceGather$embedding_3_embedding_lookup_1468941embedding_3/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_3/embedding_lookup/1468941*+
_output_shapes
:?????????*
dtype0?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_3/embedding_lookup/1468941*+
_output_shapes
:??????????
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????c
embedding_4/CastCastinputs_6*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_4/embedding_lookupResourceGather$embedding_4_embedding_lookup_1468947embedding_4/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_4/embedding_lookup/1468947*+
_output_shapes
:?????????*
dtype0?
%embedding_4/embedding_lookup/IdentityIdentity%embedding_4/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_4/embedding_lookup/1468947*+
_output_shapes
:??????????
'embedding_4/embedding_lookup/Identity_1Identity.embedding_4/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????c
embedding_5/CastCastinputs_7*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_5/embedding_lookupResourceGather$embedding_5_embedding_lookup_1468953embedding_5/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_5/embedding_lookup/1468953*+
_output_shapes
:?????????*
dtype0?
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_5/embedding_lookup/1468953*+
_output_shapes
:??????????
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_1/concatConcatV20embedding_3/embedding_lookup/Identity_1:output:00embedding_4/embedding_lookup/Identity_1:output:00embedding_5/embedding_lookup/Identity_1:output:0"concatenate_1/concat/axis:output:0*
N*
T0*+
_output_shapes
:?????????`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_3/ReshapeReshapeconcatenate_1/concat:output:0flatten_3/Const:output:0*
T0*'
_output_shapes
:??????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_1/MatMulMatMulflatten_3/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????k
dropout/IdentityIdentitydense_1/Relu:activations:0*
T0*(
_output_shapes
:???????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_2/MatMulMatMuldropout/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
multiply_1/mulMulconcatenate_1/concat:output:0concatenate_1/concat:output:0*
T0*+
_output_shapes
:?????????^
lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?

lambda/SumSumconcatenate_1/concat:output:0%lambda/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????m
dropout_1/IdentityIdentitydense_2/Relu:activations:0*
T0*(
_output_shapes
:??????????o
multiply/mulMullambda/Sum:output:0lambda/Sum:output:0*
T0*'
_output_shapes
:?????????`
lambda_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
lambda_1/SumSummultiply_1/mul:z:0'lambda_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
embedding_2/CastCastinputs_7*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_2/embedding_lookupResourceGather$embedding_2_embedding_lookup_1468985embedding_2/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_2/embedding_lookup/1468985*+
_output_shapes
:?????????*
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_2/embedding_lookup/1468985*+
_output_shapes
:??????????
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????c
embedding_1/CastCastinputs_6*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_1/embedding_lookupResourceGather$embedding_1_embedding_lookup_1468991embedding_1/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_1/embedding_lookup/1468991*+
_output_shapes
:?????????*
dtype0?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_1/embedding_lookup/1468991*+
_output_shapes
:??????????
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????a
embedding/CastCastinputs_5*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1468997embedding/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1468997*+
_output_shapes
:?????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1468997*+
_output_shapes
:??????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_3/MatMulMatMuldropout_1/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????n
subtract/subSubmultiply/mul:z:0lambda_1/Sum:output:0*
T0*'
_output_shapes
:?????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:?????????`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_1/ReshapeReshape0embedding_1/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_2/ReshapeReshape0embedding_2/embedding_lookup/Identity_1:output:0flatten_2/Const:output:0*
T0*'
_output_shapes
:?????????Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate/concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????m
dropout_2/IdentityIdentitydense_3/Relu:activations:0*
T0*(
_output_shapes
:??????????S
lambda_2/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?p
lambda_2/mulMulsubtract/sub:z:0lambda_2/mul/y:output:0*
T0*'
_output_shapes
:??????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
add/addAddV2flatten/Reshape:output:0flatten_1/Reshape:output:0*
T0*'
_output_shapes
:?????????m
	add/add_1AddV2add/add:z:0flatten_2/Reshape:output:0*
T0*'
_output_shapes
:?????????k
	add_1/addAddV2dense/BiasAdd:output:0add/add_1:z:0*
T0*'
_output_shapes
:?????????`
lambda_3/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
lambda_3/SumSumlambda_2/mul:z:0'lambda_3/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_4/MatMulMatMuldropout_2/Identity:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
	add_2/addAddV2add_1/add:z:0lambda_3/Sum:output:0*
T0*'
_output_shapes
:?????????o
add_2/add_1AddV2add_2/add:z:0dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
activation/SigmoidSigmoidadd_2/add_1:z:0*
T0*'
_output_shapes
:??????????
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_3_embedding_lookup_1468941*
_output_shapes
:	?*
dtype0?
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_4_embedding_lookup_1468947*
_output_shapes

:*
dtype0?
)embedding_4/embeddings/Regularizer/SquareSquare@embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_4/embeddings/Regularizer/SumSum-embedding_4/embeddings/Regularizer/Square:y:01embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_4/embeddings/Regularizer/mulMul1embedding_4/embeddings/Regularizer/mul/x:output:0/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_5/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_5_embedding_lookup_1468953*
_output_shapes

:*
dtype0?
)embedding_5/embeddings/Regularizer/SquareSquare@embedding_5/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_5/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_5/embeddings/Regularizer/SumSum-embedding_5/embeddings/Regularizer/Square:y:01embedding_5/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_5/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *333??
&embedding_5/embeddings/Regularizer/mulMul1embedding_5/embeddings/Regularizer/mul/x:output:0/embedding_5/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
6embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp"embedding_embedding_lookup_1468997*
_output_shapes
:	?*
dtype0?
'embedding/embeddings/Regularizer/SquareSquare>embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?w
&embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$embedding/embeddings/Regularizer/SumSum+embedding/embeddings/Regularizer/Square:y:0/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
$embedding/embeddings/Regularizer/mulMul/embedding/embeddings/Regularizer/mul/x:output:0-embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_1/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_1_embedding_lookup_1468991*
_output_shapes

:*
dtype0?
)embedding_1/embeddings/Regularizer/SquareSquare@embedding_1/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_1/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_1/embeddings/Regularizer/SumSum-embedding_1/embeddings/Regularizer/Square:y:01embedding_1/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_1/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_1/embeddings/Regularizer/mulMul1embedding_1/embeddings/Regularizer/mul/x:output:0/embedding_1/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_2_embedding_lookup_1468985*
_output_shapes

:*
dtype0?
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: e
IdentityIdentityactivation/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^embedding/embedding_lookup7^embedding/embeddings/Regularizer/Square/ReadVariableOp^embedding_1/embedding_lookup9^embedding_1/embeddings/Regularizer/Square/ReadVariableOp^embedding_2/embedding_lookup9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp^embedding_3/embedding_lookup9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp^embedding_4/embedding_lookup9^embedding_4/embeddings/Regularizer/Square/ReadVariableOp^embedding_5/embedding_lookup9^embedding_5/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2p
6embedding/embeddings/Regularizer/Square/ReadVariableOp6embedding/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2t
8embedding_1/embeddings/Regularizer/Square/ReadVariableOp8embedding_1/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_4/embedding_lookupembedding_4/embedding_lookup2t
8embedding_4/embeddings/Regularizer/Square/ReadVariableOp8embedding_4/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_5/embedding_lookupembedding_5/embedding_lookup2t
8embedding_5/embeddings/Regularizer/Square/ReadVariableOp8embedding_5/embeddings/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7
?
?
__inference_loss_fn_5_1469920S
Aembedding_2_embeddings_regularizer_square_readvariableop_resource:
identity??8embedding_2/embeddings/Regularizer/Square/ReadVariableOp?
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpAembedding_2_embeddings_regularizer_square_readvariableop_resource*
_output_shapes

:*
dtype0?
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*embedding_2/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp
?
F
*__inference_lambda_3_layer_call_fn_1469793

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_lambda_3_layer_call_and_return_conditional_losses_1467858`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
E__inference_lambda_3_layer_call_and_return_conditional_losses_1469804

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(T
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
/
f*
serving_default_f:0?????????
9
genres/
serving_default_genres:0?????????
/
h*
serving_default_h:0?????????
5
high-
serving_default_high:0?????????
=
hratings1
serving_default_hratings:0?????????
5
mean-
serving_default_mean:0?????????
7
total.
serving_default_total:0?????????
A

total_time3
serving_default_total_time:0?????????>

activation0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-4
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer_with_weights-5
layer-18
layer_with_weights-6
layer-19
layer_with_weights-7
layer-20
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer-27
layer-28
layer_with_weights-8
layer-29
layer_with_weights-9
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer-35
%layer_with_weights-10
%layer-36
&layer-37
'layer-38
(	optimizer
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-
signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_network
6
._init_input_shape"
_tf_keras_input_layer
6
/_init_input_shape"
_tf_keras_input_layer
6
0_init_input_shape"
_tf_keras_input_layer
?
1
embeddings
2	variables
3trainable_variables
4regularization_losses
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
6
embeddings
7	variables
8trainable_variables
9regularization_losses
:	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
;
embeddings
<	variables
=trainable_variables
>regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Hkernel
Ibias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
6
`_init_input_shape"
_tf_keras_input_layer
6
a_init_input_shape"
_tf_keras_input_layer
6
b_init_input_shape"
_tf_keras_input_layer
6
c_init_input_shape"
_tf_keras_input_layer
6
d_init_input_shape"
_tf_keras_input_layer
?
e
embeddings
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
j
embeddings
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
o
embeddings
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
t	variables
utrainable_variables
vregularization_losses
w	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
|	variables
}trainable_variables
~regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate1m?6m?;m?Hm?Im?Zm?[m?em?jm?om?	?m?	?m?	?m?	?m?	?m?	?m?1v?6v?;v?Hv?Iv?Zv?[v?ev?jv?ov?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
?
10
61
;2
H3
I4
Z5
[6
e7
j8
o9
?10
?11
?12
?13
?14
?15"
trackable_list_wrapper
?
10
61
;2
H3
I4
Z5
[6
e7
j8
o9
?10
?11
?12
?13
?14
?15"
trackable_list_wrapper
P
?0
?1
?2
?3
?4
?5"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
)	variables
*trainable_variables
+regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
):'	?2embedding_3/embeddings
'
10"
trackable_list_wrapper
'
10"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
(:&2embedding_4/embeddings
'
60"
trackable_list_wrapper
'
60"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
7	variables
8trainable_variables
9regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
(:&2embedding_5/embeddings
'
;0"
trackable_list_wrapper
'
;0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_1/kernel
:?2dense_1/bias
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_2/kernel
:?2dense_2/bias
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
':%	?2embedding/embeddings
'
e0"
trackable_list_wrapper
'
e0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
f	variables
gtrainable_variables
hregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
(:&2embedding_1/embeddings
'
j0"
trackable_list_wrapper
'
j0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
k	variables
ltrainable_variables
mregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
(:&2embedding_2/embeddings
'
o0"
trackable_list_wrapper
'
o0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
p	variables
qtrainable_variables
rregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
x	variables
ytrainable_variables
zregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
|	variables
}trainable_variables
~regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_3/kernel
:?2dense_3/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:2dense/kernel
:2
dense/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_4/kernel
:2dense_4/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
?
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
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38"
trackable_list_wrapper
8
?0
?1
?2"
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
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
?
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:? (2true_positives
:? (2true_negatives
 :? (2false_positives
 :? (2false_negatives
@
?0
?1
?2
?3"
trackable_list_wrapper
.
?	variables"
_generic_user_object
.:,	?2Adam/embedding_3/embeddings/m
-:+2Adam/embedding_4/embeddings/m
-:+2Adam/embedding_5/embeddings/m
&:$	?2Adam/dense_1/kernel/m
 :?2Adam/dense_1/bias/m
':%
??2Adam/dense_2/kernel/m
 :?2Adam/dense_2/bias/m
,:*	?2Adam/embedding/embeddings/m
-:+2Adam/embedding_1/embeddings/m
-:+2Adam/embedding_2/embeddings/m
':%
??2Adam/dense_3/kernel/m
 :?2Adam/dense_3/bias/m
#:!2Adam/dense/kernel/m
:2Adam/dense/bias/m
&:$	?2Adam/dense_4/kernel/m
:2Adam/dense_4/bias/m
.:,	?2Adam/embedding_3/embeddings/v
-:+2Adam/embedding_4/embeddings/v
-:+2Adam/embedding_5/embeddings/v
&:$	?2Adam/dense_1/kernel/v
 :?2Adam/dense_1/bias/v
':%
??2Adam/dense_2/kernel/v
 :?2Adam/dense_2/bias/v
,:*	?2Adam/embedding/embeddings/v
-:+2Adam/embedding_1/embeddings/v
-:+2Adam/embedding_2/embeddings/v
':%
??2Adam/dense_3/kernel/v
 :?2Adam/dense_3/bias/v
#:!2Adam/dense/kernel/v
:2Adam/dense/bias/v
&:$	?2Adam/dense_4/kernel/v
:2Adam/dense_4/bias/v
?2?
'__inference_model_layer_call_fn_1467965
'__inference_model_layer_call_fn_1468886
'__inference_model_layer_call_fn_1468930
'__inference_model_layer_call_fn_1468534?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_model_layer_call_and_return_conditional_losses_1469078
B__inference_model_layer_call_and_return_conditional_losses_1469247
B__inference_model_layer_call_and_return_conditional_losses_1468644
B__inference_model_layer_call_and_return_conditional_losses_1468754?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_1467503hightotalmean
total_timehratingsgenreshf"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_embedding_3_layer_call_fn_1469260?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_embedding_3_layer_call_and_return_conditional_losses_1469276?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_embedding_4_layer_call_fn_1469289?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_embedding_4_layer_call_and_return_conditional_losses_1469305?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_embedding_5_layer_call_fn_1469318?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_embedding_5_layer_call_and_return_conditional_losses_1469334?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_concatenate_1_layer_call_fn_1469341?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1469349?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_3_layer_call_fn_1469354?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_3_layer_call_and_return_conditional_losses_1469360?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_1_layer_call_fn_1469369?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_1_layer_call_and_return_conditional_losses_1469380?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dropout_layer_call_fn_1469385
)__inference_dropout_layer_call_fn_1469390?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_layer_call_and_return_conditional_losses_1469395
D__inference_dropout_layer_call_and_return_conditional_losses_1469407?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_lambda_layer_call_fn_1469412
(__inference_lambda_layer_call_fn_1469417?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_lambda_layer_call_and_return_conditional_losses_1469423
C__inference_lambda_layer_call_and_return_conditional_losses_1469429?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_multiply_1_layer_call_fn_1469435?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_multiply_1_layer_call_and_return_conditional_losses_1469441?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_2_layer_call_fn_1469450?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_2_layer_call_and_return_conditional_losses_1469461?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_embedding_layer_call_fn_1469474?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_embedding_layer_call_and_return_conditional_losses_1469490?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_embedding_1_layer_call_fn_1469503?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_embedding_1_layer_call_and_return_conditional_losses_1469519?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_embedding_2_layer_call_fn_1469532?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_embedding_2_layer_call_and_return_conditional_losses_1469548?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_multiply_layer_call_fn_1469554?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_multiply_layer_call_and_return_conditional_losses_1469560?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_lambda_1_layer_call_fn_1469565
*__inference_lambda_1_layer_call_fn_1469570?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lambda_1_layer_call_and_return_conditional_losses_1469576
E__inference_lambda_1_layer_call_and_return_conditional_losses_1469582?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_1_layer_call_fn_1469587
+__inference_dropout_1_layer_call_fn_1469592?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_1_layer_call_and_return_conditional_losses_1469597
F__inference_dropout_1_layer_call_and_return_conditional_losses_1469609?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_concatenate_layer_call_fn_1469618?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_concatenate_layer_call_and_return_conditional_losses_1469628?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_flatten_layer_call_fn_1469633?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_flatten_layer_call_and_return_conditional_losses_1469639?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_1_layer_call_fn_1469644?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_1_layer_call_and_return_conditional_losses_1469650?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_2_layer_call_fn_1469655?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_2_layer_call_and_return_conditional_losses_1469661?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_subtract_layer_call_fn_1469667?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_subtract_layer_call_and_return_conditional_losses_1469673?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_3_layer_call_fn_1469682?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_3_layer_call_and_return_conditional_losses_1469693?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_layer_call_fn_1469702?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_layer_call_and_return_conditional_losses_1469712?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_add_layer_call_fn_1469719?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_add_layer_call_and_return_conditional_losses_1469727?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_lambda_2_layer_call_fn_1469732
*__inference_lambda_2_layer_call_fn_1469737?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lambda_2_layer_call_and_return_conditional_losses_1469743
E__inference_lambda_2_layer_call_and_return_conditional_losses_1469749?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_2_layer_call_fn_1469754
+__inference_dropout_2_layer_call_fn_1469759?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_2_layer_call_and_return_conditional_losses_1469764
F__inference_dropout_2_layer_call_and_return_conditional_losses_1469776?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_add_1_layer_call_fn_1469782?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_add_1_layer_call_and_return_conditional_losses_1469788?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_lambda_3_layer_call_fn_1469793
*__inference_lambda_3_layer_call_fn_1469798?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lambda_3_layer_call_and_return_conditional_losses_1469804
E__inference_lambda_3_layer_call_and_return_conditional_losses_1469810?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_4_layer_call_fn_1469819?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_4_layer_call_and_return_conditional_losses_1469829?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_add_2_layer_call_fn_1469836?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_add_2_layer_call_and_return_conditional_losses_1469844?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_activation_layer_call_fn_1469849?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_activation_layer_call_and_return_conditional_losses_1469854?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_1469865?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_1469876?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_1469887?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_1469898?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_4_1469909?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_5_1469920?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
%__inference_signature_wrapper_1468842fgenreshhighhratingsmeantotal
total_time"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_1467503?16;HIZ[oje?????????
???
???
?
high?????????
?
total?????????
?
mean?????????
$?!

total_time?????????
"?
hratings?????????
 ?
genres?????????
?
h?????????
?
f?????????
? "7?4
2

activation$?!

activation??????????
G__inference_activation_layer_call_and_return_conditional_losses_1469854X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
,__inference_activation_layer_call_fn_1469849K/?,
%?"
 ?
inputs?????????
? "???????????
B__inference_add_1_layer_call_and_return_conditional_losses_1469788?Z?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "%?"
?
0?????????
? ?
'__inference_add_1_layer_call_fn_1469782vZ?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "???????????
B__inference_add_2_layer_call_and_return_conditional_losses_1469844?~?{
t?q
o?l
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
? "%?"
?
0?????????
? ?
'__inference_add_2_layer_call_fn_1469836?~?{
t?q
o?l
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
? "???????????
@__inference_add_layer_call_and_return_conditional_losses_1469727?~?{
t?q
o?l
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
? "%?"
?
0?????????
? ?
%__inference_add_layer_call_fn_1469719?~?{
t?q
o?l
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
? "???????????
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1469349????
??}
{?x
&?#
inputs/0?????????
&?#
inputs/1?????????
&?#
inputs/2?????????
? ")?&
?
0?????????
? ?
/__inference_concatenate_1_layer_call_fn_1469341????
??}
{?x
&?#
inputs/0?????????
&?#
inputs/1?????????
&?#
inputs/2?????????
? "???????????
H__inference_concatenate_layer_call_and_return_conditional_losses_1469628????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????
? "%?"
?
0?????????
? ?
-__inference_concatenate_layer_call_fn_1469618????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????
? "???????????
D__inference_dense_1_layer_call_and_return_conditional_losses_1469380]HI/?,
%?"
 ?
inputs?????????
? "&?#
?
0??????????
? }
)__inference_dense_1_layer_call_fn_1469369PHI/?,
%?"
 ?
inputs?????????
? "????????????
D__inference_dense_2_layer_call_and_return_conditional_losses_1469461^Z[0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_2_layer_call_fn_1469450QZ[0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_3_layer_call_and_return_conditional_losses_1469693`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
)__inference_dense_3_layer_call_fn_1469682S??0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_4_layer_call_and_return_conditional_losses_1469829_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? 
)__inference_dense_4_layer_call_fn_1469819R??0?-
&?#
!?
inputs??????????
? "???????????
B__inference_dense_layer_call_and_return_conditional_losses_1469712^??/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
'__inference_dense_layer_call_fn_1469702Q??/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dropout_1_layer_call_and_return_conditional_losses_1469597^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_1_layer_call_and_return_conditional_losses_1469609^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_dropout_1_layer_call_fn_1469587Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_1_layer_call_fn_1469592Q4?1
*?'
!?
inputs??????????
p
? "????????????
F__inference_dropout_2_layer_call_and_return_conditional_losses_1469764^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_2_layer_call_and_return_conditional_losses_1469776^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_dropout_2_layer_call_fn_1469754Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_2_layer_call_fn_1469759Q4?1
*?'
!?
inputs??????????
p
? "????????????
D__inference_dropout_layer_call_and_return_conditional_losses_1469395^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
D__inference_dropout_layer_call_and_return_conditional_losses_1469407^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ~
)__inference_dropout_layer_call_fn_1469385Q4?1
*?'
!?
inputs??????????
p 
? "???????????~
)__inference_dropout_layer_call_fn_1469390Q4?1
*?'
!?
inputs??????????
p
? "????????????
H__inference_embedding_1_layer_call_and_return_conditional_losses_1469519_j/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
-__inference_embedding_1_layer_call_fn_1469503Rj/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_embedding_2_layer_call_and_return_conditional_losses_1469548_o/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
-__inference_embedding_2_layer_call_fn_1469532Ro/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_embedding_3_layer_call_and_return_conditional_losses_1469276_1/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
-__inference_embedding_3_layer_call_fn_1469260R1/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_embedding_4_layer_call_and_return_conditional_losses_1469305_6/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
-__inference_embedding_4_layer_call_fn_1469289R6/?,
%?"
 ?
inputs?????????
? "???????????
H__inference_embedding_5_layer_call_and_return_conditional_losses_1469334_;/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
-__inference_embedding_5_layer_call_fn_1469318R;/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_embedding_layer_call_and_return_conditional_losses_1469490_e/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
+__inference_embedding_layer_call_fn_1469474Re/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_flatten_1_layer_call_and_return_conditional_losses_1469650\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_flatten_1_layer_call_fn_1469644O3?0
)?&
$?!
inputs?????????
? "???????????
F__inference_flatten_2_layer_call_and_return_conditional_losses_1469661\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_flatten_2_layer_call_fn_1469655O3?0
)?&
$?!
inputs?????????
? "???????????
F__inference_flatten_3_layer_call_and_return_conditional_losses_1469360\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_flatten_3_layer_call_fn_1469354O3?0
)?&
$?!
inputs?????????
? "???????????
D__inference_flatten_layer_call_and_return_conditional_losses_1469639\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? |
)__inference_flatten_layer_call_fn_1469633O3?0
)?&
$?!
inputs?????????
? "???????????
E__inference_lambda_1_layer_call_and_return_conditional_losses_1469576d;?8
1?.
$?!
inputs?????????

 
p 
? "%?"
?
0?????????
? ?
E__inference_lambda_1_layer_call_and_return_conditional_losses_1469582d;?8
1?.
$?!
inputs?????????

 
p
? "%?"
?
0?????????
? ?
*__inference_lambda_1_layer_call_fn_1469565W;?8
1?.
$?!
inputs?????????

 
p 
? "???????????
*__inference_lambda_1_layer_call_fn_1469570W;?8
1?.
$?!
inputs?????????

 
p
? "???????????
E__inference_lambda_2_layer_call_and_return_conditional_losses_1469743`7?4
-?*
 ?
inputs?????????

 
p 
? "%?"
?
0?????????
? ?
E__inference_lambda_2_layer_call_and_return_conditional_losses_1469749`7?4
-?*
 ?
inputs?????????

 
p
? "%?"
?
0?????????
? ?
*__inference_lambda_2_layer_call_fn_1469732S7?4
-?*
 ?
inputs?????????

 
p 
? "???????????
*__inference_lambda_2_layer_call_fn_1469737S7?4
-?*
 ?
inputs?????????

 
p
? "???????????
E__inference_lambda_3_layer_call_and_return_conditional_losses_1469804`7?4
-?*
 ?
inputs?????????

 
p 
? "%?"
?
0?????????
? ?
E__inference_lambda_3_layer_call_and_return_conditional_losses_1469810`7?4
-?*
 ?
inputs?????????

 
p
? "%?"
?
0?????????
? ?
*__inference_lambda_3_layer_call_fn_1469793S7?4
-?*
 ?
inputs?????????

 
p 
? "???????????
*__inference_lambda_3_layer_call_fn_1469798S7?4
-?*
 ?
inputs?????????

 
p
? "???????????
C__inference_lambda_layer_call_and_return_conditional_losses_1469423d;?8
1?.
$?!
inputs?????????

 
p 
? "%?"
?
0?????????
? ?
C__inference_lambda_layer_call_and_return_conditional_losses_1469429d;?8
1?.
$?!
inputs?????????

 
p
? "%?"
?
0?????????
? ?
(__inference_lambda_layer_call_fn_1469412W;?8
1?.
$?!
inputs?????????

 
p 
? "???????????
(__inference_lambda_layer_call_fn_1469417W;?8
1?.
$?!
inputs?????????

 
p
? "??????????<
__inference_loss_fn_0_14698651?

? 
? "? <
__inference_loss_fn_1_14698766?

? 
? "? <
__inference_loss_fn_2_1469887;?

? 
? "? <
__inference_loss_fn_3_1469898e?

? 
? "? <
__inference_loss_fn_4_1469909j?

? 
? "? <
__inference_loss_fn_5_1469920o?

? 
? "? ?
B__inference_model_layer_call_and_return_conditional_losses_1468644?16;HIZ[oje?????????
???
???
?
high?????????
?
total?????????
?
mean?????????
$?!

total_time?????????
"?
hratings?????????
 ?
genres?????????
?
h?????????
?
f?????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_layer_call_and_return_conditional_losses_1468754?16;HIZ[oje?????????
???
???
?
high?????????
?
total?????????
?
mean?????????
$?!

total_time?????????
"?
hratings?????????
 ?
genres?????????
?
h?????????
?
f?????????
p

 
? "%?"
?
0?????????
? ?
B__inference_model_layer_call_and_return_conditional_losses_1469078?16;HIZ[oje?????????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_layer_call_and_return_conditional_losses_1469247?16;HIZ[oje?????????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
p

 
? "%?"
?
0?????????
? ?
'__inference_model_layer_call_fn_1467965?16;HIZ[oje?????????
???
???
?
high?????????
?
total?????????
?
mean?????????
$?!

total_time?????????
"?
hratings?????????
 ?
genres?????????
?
h?????????
?
f?????????
p 

 
? "???????????
'__inference_model_layer_call_fn_1468534?16;HIZ[oje?????????
???
???
?
high?????????
?
total?????????
?
mean?????????
$?!

total_time?????????
"?
hratings?????????
 ?
genres?????????
?
h?????????
?
f?????????
p

 
? "???????????
'__inference_model_layer_call_fn_1468886?16;HIZ[oje?????????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
p 

 
? "???????????
'__inference_model_layer_call_fn_1468930?16;HIZ[oje?????????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
p

 
? "???????????
G__inference_multiply_1_layer_call_and_return_conditional_losses_1469441?b?_
X?U
S?P
&?#
inputs/0?????????
&?#
inputs/1?????????
? ")?&
?
0?????????
? ?
,__inference_multiply_1_layer_call_fn_1469435?b?_
X?U
S?P
&?#
inputs/0?????????
&?#
inputs/1?????????
? "???????????
E__inference_multiply_layer_call_and_return_conditional_losses_1469560?Z?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "%?"
?
0?????????
? ?
*__inference_multiply_layer_call_fn_1469554vZ?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "???????????
%__inference_signature_wrapper_1468842?16;HIZ[oje?????????
? 
???
 
f?
f?????????
*
genres ?
genres?????????
 
h?
h?????????
&
high?
high?????????
.
hratings"?
hratings?????????
&
mean?
mean?????????
(
total?
total?????????
2

total_time$?!

total_time?????????"7?4
2

activation$?!

activation??????????
E__inference_subtract_layer_call_and_return_conditional_losses_1469673?Z?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "%?"
?
0?????????
? ?
*__inference_subtract_layer_call_fn_1469667vZ?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "??????????