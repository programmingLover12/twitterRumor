ща
їМ
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
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
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
0
Sigmoid
x"T
y"T"
Ttype:

2
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
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
-
Tanh
x"T
y"T"
Ttype:

2
Т
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
Б
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8ШО
И
embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d@*'
shared_nameembedding_3/embeddings
Б
*embedding_3/embeddings/Read/ReadVariableOpReadVariableOpembedding_3/embeddings*
_output_shapes

:d@*
dtype0
y
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_8/kernel
r
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes
:	А*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
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
І
%simple_rnn_3/simple_rnn_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*6
shared_name'%simple_rnn_3/simple_rnn_cell_3/kernel
†
9simple_rnn_3/simple_rnn_cell_3/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_3/simple_rnn_cell_3/kernel*
_output_shapes
:	@А*
dtype0
Љ
/simple_rnn_3/simple_rnn_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*@
shared_name1/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel
µ
Csimple_rnn_3/simple_rnn_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
Я
#simple_rnn_3/simple_rnn_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#simple_rnn_3/simple_rnn_cell_3/bias
Ш
7simple_rnn_3/simple_rnn_cell_3/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_3/simple_rnn_cell_3/bias*
_output_shapes	
:А*
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
Ц
Adam/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d@*.
shared_nameAdam/embedding_3/embeddings/m
П
1Adam/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_3/embeddings/m*
_output_shapes

:d@*
dtype0
З
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_8/kernel/m
А
)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes
:	А*
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
:*
dtype0
µ
,Adam/simple_rnn_3/simple_rnn_cell_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*=
shared_name.,Adam/simple_rnn_3/simple_rnn_cell_3/kernel/m
Ѓ
@Adam/simple_rnn_3/simple_rnn_cell_3/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_3/simple_rnn_cell_3/kernel/m*
_output_shapes
:	@А*
dtype0
 
6Adam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*G
shared_name86Adam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/m
√
JAdam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/m* 
_output_shapes
:
АА*
dtype0
≠
*Adam/simple_rnn_3/simple_rnn_cell_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*;
shared_name,*Adam/simple_rnn_3/simple_rnn_cell_3/bias/m
¶
>Adam/simple_rnn_3/simple_rnn_cell_3/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_3/simple_rnn_cell_3/bias/m*
_output_shapes	
:А*
dtype0
Ц
Adam/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d@*.
shared_nameAdam/embedding_3/embeddings/v
П
1Adam/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_3/embeddings/v*
_output_shapes

:d@*
dtype0
З
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_8/kernel/v
А
)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes
:	А*
dtype0
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
:*
dtype0
µ
,Adam/simple_rnn_3/simple_rnn_cell_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*=
shared_name.,Adam/simple_rnn_3/simple_rnn_cell_3/kernel/v
Ѓ
@Adam/simple_rnn_3/simple_rnn_cell_3/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_3/simple_rnn_cell_3/kernel/v*
_output_shapes
:	@А*
dtype0
 
6Adam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*G
shared_name86Adam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/v
√
JAdam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/v* 
_output_shapes
:
АА*
dtype0
≠
*Adam/simple_rnn_3/simple_rnn_cell_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*;
shared_name,*Adam/simple_rnn_3/simple_rnn_cell_3/bias/v
¶
>Adam/simple_rnn_3/simple_rnn_cell_3/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_3/simple_rnn_cell_3/bias/v*
_output_shapes	
:А*
dtype0

NoOpNoOp
ђ)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*з(
valueЁ(BЏ( B”(
ж
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api
	
signatures
b


embeddings
trainable_variables
	variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
ђ
iter

beta_1

beta_2
	decay
learning_rate
mLmMmN mO!mP"mQ
vRvSvT vU!vV"vW
*

0
 1
!2
"3
4
5
 
*

0
 1
!2
"3
4
5
≠
#metrics
$layer_metrics

%layers
	variables
&non_trainable_variables
regularization_losses
trainable_variables
'layer_regularization_losses
 
fd
VARIABLE_VALUEembedding_3/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE


0


0
 
≠
trainable_variables
(metrics

)layers
	variables
*non_trainable_variables
regularization_losses
+layer_metrics
,layer_regularization_losses
~

 kernel
!recurrent_kernel
"bias
-trainable_variables
.	variables
/regularization_losses
0	keras_api
 

 0
!1
"2
 

 0
!1
"2
є
1metrics
2layer_metrics

3layers
	variables
4non_trainable_variables
regularization_losses
trainable_variables
5layer_regularization_losses

6states
ZX
VARIABLE_VALUEdense_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠
trainable_variables
7metrics

8layers
	variables
9non_trainable_variables
regularization_losses
:layer_metrics
;layer_regularization_losses
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
a_
VARIABLE_VALUE%simple_rnn_3/simple_rnn_cell_3/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#simple_rnn_3/simple_rnn_cell_3/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
 

0
1
2
 
 
 
 
 
 
 

 0
!1
"2

 0
!1
"2
 
≠
-trainable_variables
>metrics

?layers
.	variables
@non_trainable_variables
/regularization_losses
Alayer_metrics
Blayer_regularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	Ctotal
	Dcount
E	variables
F	keras_api
D
	Gtotal
	Hcount
I
_fn_kwargs
J	variables
K	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

C0
D1

E	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

G0
H1

J	variables
КЗ
VARIABLE_VALUEAdam/embedding_3/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/simple_rnn_3/simple_rnn_cell_3/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE6Adam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE*Adam/simple_rnn_3/simple_rnn_cell_3/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUEAdam/embedding_3/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/simple_rnn_3/simple_rnn_cell_3/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE6Adam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE*Adam/simple_rnn_3/simple_rnn_cell_3/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ц
!serving_default_embedding_3_inputPlaceholder*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*%
shape:€€€€€€€€€€€€€€€€€€
ы
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_3_inputembedding_3/embeddings%simple_rnn_3/simple_rnn_cell_3/kernel#simple_rnn_3/simple_rnn_cell_3/bias/simple_rnn_3/simple_rnn_cell_3/recurrent_kerneldense_8/kerneldense_8/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_178231
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
§
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_3/embeddings/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp9simple_rnn_3/simple_rnn_cell_3/kernel/Read/ReadVariableOpCsimple_rnn_3/simple_rnn_cell_3/recurrent_kernel/Read/ReadVariableOp7simple_rnn_3/simple_rnn_cell_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_3/embeddings/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp@Adam/simple_rnn_3/simple_rnn_cell_3/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_3/simple_rnn_cell_3/bias/m/Read/ReadVariableOp1Adam/embedding_3/embeddings/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp@Adam/simple_rnn_3/simple_rnn_cell_3/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_3/simple_rnn_cell_3/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8В *(
f#R!
__inference__traced_save_179210
Г
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_3/embeddingsdense_8/kerneldense_8/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate%simple_rnn_3/simple_rnn_cell_3/kernel/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel#simple_rnn_3/simple_rnn_cell_3/biastotalcounttotal_1count_1Adam/embedding_3/embeddings/mAdam/dense_8/kernel/mAdam/dense_8/bias/m,Adam/simple_rnn_3/simple_rnn_cell_3/kernel/m6Adam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/m*Adam/simple_rnn_3/simple_rnn_cell_3/bias/mAdam/embedding_3/embeddings/vAdam/dense_8/kernel/vAdam/dense_8/bias/v,Adam/simple_rnn_3/simple_rnn_cell_3/kernel/v6Adam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/v*Adam/simple_rnn_3/simple_rnn_cell_3/bias/v*'
Tin 
2*
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_179301ЇР
ж3
ь
while_body_178824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_3_matmul_readvariableop_resource;
7while_simple_rnn_cell_3_biasadd_readvariableop_resource<
8while_simple_rnn_cell_3_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_3/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЎ
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02/
-while/simple_rnn_cell_3/MatMul/ReadVariableOpж
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_3/MatMul„
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_3/BiasAddя
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_3/MatMul_1ћ
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_3/addШ
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_3/Tanhд
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ш
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
УД
я
!__inference__wrapped_model_177293
embedding_3_input4
0sequential_8_embedding_3_embedding_lookup_177172N
Jsequential_8_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resourceO
Ksequential_8_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resourceP
Lsequential_8_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource7
3sequential_8_dense_8_matmul_readvariableop_resource8
4sequential_8_dense_8_biasadd_readvariableop_resource
identityИҐ+sequential_8/dense_8/BiasAdd/ReadVariableOpҐ*sequential_8/dense_8/MatMul/ReadVariableOpҐ)sequential_8/embedding_3/embedding_lookupҐBsequential_8/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpҐAsequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpҐCsequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpҐsequential_8/simple_rnn_3/while£
sequential_8/embedding_3/CastCastembedding_3_input*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sequential_8/embedding_3/CastГ
)sequential_8/embedding_3/embedding_lookupResourceGather0sequential_8_embedding_3_embedding_lookup_177172!sequential_8/embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*C
_class9
75loc:@sequential_8/embedding_3/embedding_lookup/177172*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
dtype02+
)sequential_8/embedding_3/embedding_lookupЏ
2sequential_8/embedding_3/embedding_lookup/IdentityIdentity2sequential_8/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@sequential_8/embedding_3/embedding_lookup/177172*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@24
2sequential_8/embedding_3/embedding_lookup/Identityф
4sequential_8/embedding_3/embedding_lookup/Identity_1Identity;sequential_8/embedding_3/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@26
4sequential_8/embedding_3/embedding_lookup/Identity_1ѓ
sequential_8/simple_rnn_3/ShapeShape=sequential_8/embedding_3/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2!
sequential_8/simple_rnn_3/Shape®
-sequential_8/simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_8/simple_rnn_3/strided_slice/stackђ
/sequential_8/simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_8/simple_rnn_3/strided_slice/stack_1ђ
/sequential_8/simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_8/simple_rnn_3/strided_slice/stack_2ю
'sequential_8/simple_rnn_3/strided_sliceStridedSlice(sequential_8/simple_rnn_3/Shape:output:06sequential_8/simple_rnn_3/strided_slice/stack:output:08sequential_8/simple_rnn_3/strided_slice/stack_1:output:08sequential_8/simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential_8/simple_rnn_3/strided_sliceС
%sequential_8/simple_rnn_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2'
%sequential_8/simple_rnn_3/zeros/mul/y‘
#sequential_8/simple_rnn_3/zeros/mulMul0sequential_8/simple_rnn_3/strided_slice:output:0.sequential_8/simple_rnn_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#sequential_8/simple_rnn_3/zeros/mulУ
&sequential_8/simple_rnn_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2(
&sequential_8/simple_rnn_3/zeros/Less/yѕ
$sequential_8/simple_rnn_3/zeros/LessLess'sequential_8/simple_rnn_3/zeros/mul:z:0/sequential_8/simple_rnn_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$sequential_8/simple_rnn_3/zeros/LessЧ
(sequential_8/simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2*
(sequential_8/simple_rnn_3/zeros/packed/1л
&sequential_8/simple_rnn_3/zeros/packedPack0sequential_8/simple_rnn_3/strided_slice:output:01sequential_8/simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_8/simple_rnn_3/zeros/packedУ
%sequential_8/simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_8/simple_rnn_3/zeros/Constё
sequential_8/simple_rnn_3/zerosFill/sequential_8/simple_rnn_3/zeros/packed:output:0.sequential_8/simple_rnn_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
sequential_8/simple_rnn_3/zeros©
(sequential_8/simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential_8/simple_rnn_3/transpose/permИ
#sequential_8/simple_rnn_3/transpose	Transpose=sequential_8/embedding_3/embedding_lookup/Identity_1:output:01sequential_8/simple_rnn_3/transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2%
#sequential_8/simple_rnn_3/transposeЭ
!sequential_8/simple_rnn_3/Shape_1Shape'sequential_8/simple_rnn_3/transpose:y:0*
T0*
_output_shapes
:2#
!sequential_8/simple_rnn_3/Shape_1ђ
/sequential_8/simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_8/simple_rnn_3/strided_slice_1/stack∞
1sequential_8/simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_8/simple_rnn_3/strided_slice_1/stack_1∞
1sequential_8/simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_8/simple_rnn_3/strided_slice_1/stack_2К
)sequential_8/simple_rnn_3/strided_slice_1StridedSlice*sequential_8/simple_rnn_3/Shape_1:output:08sequential_8/simple_rnn_3/strided_slice_1/stack:output:0:sequential_8/simple_rnn_3/strided_slice_1/stack_1:output:0:sequential_8/simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential_8/simple_rnn_3/strided_slice_1є
5sequential_8/simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€27
5sequential_8/simple_rnn_3/TensorArrayV2/element_shapeЪ
'sequential_8/simple_rnn_3/TensorArrayV2TensorListReserve>sequential_8/simple_rnn_3/TensorArrayV2/element_shape:output:02sequential_8/simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential_8/simple_rnn_3/TensorArrayV2у
Osequential_8/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2Q
Osequential_8/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeа
Asequential_8/simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_8/simple_rnn_3/transpose:y:0Xsequential_8/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02C
Asequential_8/simple_rnn_3/TensorArrayUnstack/TensorListFromTensorђ
/sequential_8/simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_8/simple_rnn_3/strided_slice_2/stack∞
1sequential_8/simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_8/simple_rnn_3/strided_slice_2/stack_1∞
1sequential_8/simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_8/simple_rnn_3/strided_slice_2/stack_2Ш
)sequential_8/simple_rnn_3/strided_slice_2StridedSlice'sequential_8/simple_rnn_3/transpose:y:08sequential_8/simple_rnn_3/strided_slice_2/stack:output:0:sequential_8/simple_rnn_3/strided_slice_2/stack_1:output:0:sequential_8/simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2+
)sequential_8/simple_rnn_3/strided_slice_2Т
Asequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpJsequential_8_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02C
Asequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp§
2sequential_8/simple_rnn_3/simple_rnn_cell_3/MatMulMatMul2sequential_8/simple_rnn_3/strided_slice_2:output:0Isequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А24
2sequential_8/simple_rnn_3/simple_rnn_cell_3/MatMulС
Bsequential_8/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpKsequential_8_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02D
Bsequential_8/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp≤
3sequential_8/simple_rnn_3/simple_rnn_cell_3/BiasAddBiasAdd<sequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul:product:0Jsequential_8/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А25
3sequential_8/simple_rnn_3/simple_rnn_cell_3/BiasAddЩ
Csequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpLsequential_8_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02E
Csequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp†
4sequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul_1MatMul(sequential_8/simple_rnn_3/zeros:output:0Ksequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А26
4sequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul_1Ь
/sequential_8/simple_rnn_3/simple_rnn_cell_3/addAddV2<sequential_8/simple_rnn_3/simple_rnn_cell_3/BiasAdd:output:0>sequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А21
/sequential_8/simple_rnn_3/simple_rnn_cell_3/add‘
0sequential_8/simple_rnn_3/simple_rnn_cell_3/TanhTanh3sequential_8/simple_rnn_3/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А22
0sequential_8/simple_rnn_3/simple_rnn_cell_3/Tanh√
7sequential_8/simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   29
7sequential_8/simple_rnn_3/TensorArrayV2_1/element_shape†
)sequential_8/simple_rnn_3/TensorArrayV2_1TensorListReserve@sequential_8/simple_rnn_3/TensorArrayV2_1/element_shape:output:02sequential_8/simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02+
)sequential_8/simple_rnn_3/TensorArrayV2_1В
sequential_8/simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2 
sequential_8/simple_rnn_3/time≥
2sequential_8/simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€24
2sequential_8/simple_rnn_3/while/maximum_iterationsЮ
,sequential_8/simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_8/simple_rnn_3/while/loop_counter≤
sequential_8/simple_rnn_3/whileWhile5sequential_8/simple_rnn_3/while/loop_counter:output:0;sequential_8/simple_rnn_3/while/maximum_iterations:output:0'sequential_8/simple_rnn_3/time:output:02sequential_8/simple_rnn_3/TensorArrayV2_1:handle:0(sequential_8/simple_rnn_3/zeros:output:02sequential_8/simple_rnn_3/strided_slice_1:output:0Qsequential_8/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_8_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resourceKsequential_8_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resourceLsequential_8_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*7
body/R-
+sequential_8_simple_rnn_3_while_body_177220*7
cond/R-
+sequential_8_simple_rnn_3_while_cond_177219*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2!
sequential_8/simple_rnn_3/whileй
Jsequential_8/simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2L
Jsequential_8/simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeЏ
<sequential_8/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_8/simple_rnn_3/while:output:3Ssequential_8/simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02>
<sequential_8/simple_rnn_3/TensorArrayV2Stack/TensorListStackµ
/sequential_8/simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€21
/sequential_8/simple_rnn_3/strided_slice_3/stack∞
1sequential_8/simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_8/simple_rnn_3/strided_slice_3/stack_1∞
1sequential_8/simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential_8/simple_rnn_3/strided_slice_3/stack_2Ј
)sequential_8/simple_rnn_3/strided_slice_3StridedSliceEsequential_8/simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:08sequential_8/simple_rnn_3/strided_slice_3/stack:output:0:sequential_8/simple_rnn_3/strided_slice_3/stack_1:output:0:sequential_8/simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2+
)sequential_8/simple_rnn_3/strided_slice_3≠
*sequential_8/simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2,
*sequential_8/simple_rnn_3/transpose_1/permЧ
%sequential_8/simple_rnn_3/transpose_1	TransposeEsequential_8/simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:03sequential_8/simple_rnn_3/transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2'
%sequential_8/simple_rnn_3/transpose_1Ќ
*sequential_8/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_8_dense_8_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02,
*sequential_8/dense_8/MatMul/ReadVariableOpё
sequential_8/dense_8/MatMulMatMul2sequential_8/simple_rnn_3/strided_slice_3:output:02sequential_8/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_8/dense_8/MatMulЋ
+sequential_8/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_8_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_8/dense_8/BiasAdd/ReadVariableOp’
sequential_8/dense_8/BiasAddBiasAdd%sequential_8/dense_8/MatMul:product:03sequential_8/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_8/dense_8/BiasAdd†
sequential_8/dense_8/SigmoidSigmoid%sequential_8/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_8/dense_8/Sigmoidм
IdentityIdentity sequential_8/dense_8/Sigmoid:y:0,^sequential_8/dense_8/BiasAdd/ReadVariableOp+^sequential_8/dense_8/MatMul/ReadVariableOp*^sequential_8/embedding_3/embedding_lookupC^sequential_8/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpB^sequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpD^sequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp ^sequential_8/simple_rnn_3/while*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:€€€€€€€€€€€€€€€€€€::::::2Z
+sequential_8/dense_8/BiasAdd/ReadVariableOp+sequential_8/dense_8/BiasAdd/ReadVariableOp2X
*sequential_8/dense_8/MatMul/ReadVariableOp*sequential_8/dense_8/MatMul/ReadVariableOp2V
)sequential_8/embedding_3/embedding_lookup)sequential_8/embedding_3/embedding_lookup2И
Bsequential_8/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpBsequential_8/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp2Ж
Asequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpAsequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp2К
Csequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpCsequential_8/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp2B
sequential_8/simple_rnn_3/whilesequential_8/simple_rnn_3/while:c _
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
+
_user_specified_nameembedding_3_input
ъl
“
H__inference_sequential_8_layer_call_and_return_conditional_losses_178356

inputs'
#embedding_3_embedding_lookup_178235A
=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resourceB
>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resourceC
?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identityИҐdense_8/BiasAdd/ReadVariableOpҐdense_8/MatMul/ReadVariableOpҐembedding_3/embedding_lookupҐ5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpҐ6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpҐsimple_rnn_3/while~
embedding_3/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
embedding_3/Cast¬
embedding_3/embedding_lookupResourceGather#embedding_3_embedding_lookup_178235embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_3/embedding_lookup/178235*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
dtype02
embedding_3/embedding_lookup¶
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_3/embedding_lookup/178235*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2'
%embedding_3/embedding_lookup/IdentityЌ
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2)
'embedding_3/embedding_lookup/Identity_1И
simple_rnn_3/ShapeShape0embedding_3/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn_3/ShapeО
 simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_3/strided_slice/stackТ
"simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_3/strided_slice/stack_1Т
"simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_3/strided_slice/stack_2∞
simple_rnn_3/strided_sliceStridedSlicesimple_rnn_3/Shape:output:0)simple_rnn_3/strided_slice/stack:output:0+simple_rnn_3/strided_slice/stack_1:output:0+simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_3/strided_slicew
simple_rnn_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
simple_rnn_3/zeros/mul/y†
simple_rnn_3/zeros/mulMul#simple_rnn_3/strided_slice:output:0!simple_rnn_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_3/zeros/muly
simple_rnn_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
simple_rnn_3/zeros/Less/yЫ
simple_rnn_3/zeros/LessLesssimple_rnn_3/zeros/mul:z:0"simple_rnn_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_3/zeros/Less}
simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
simple_rnn_3/zeros/packed/1Ј
simple_rnn_3/zeros/packedPack#simple_rnn_3/strided_slice:output:0$simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_3/zeros/packedy
simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_3/zeros/Const™
simple_rnn_3/zerosFill"simple_rnn_3/zeros/packed:output:0!simple_rnn_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_3/zerosП
simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_3/transpose/perm‘
simple_rnn_3/transpose	Transpose0embedding_3/embedding_lookup/Identity_1:output:0$simple_rnn_3/transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
simple_rnn_3/transposev
simple_rnn_3/Shape_1Shapesimple_rnn_3/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_3/Shape_1Т
"simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_3/strided_slice_1/stackЦ
$simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_3/strided_slice_1/stack_1Ц
$simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_3/strided_slice_1/stack_2Љ
simple_rnn_3/strided_slice_1StridedSlicesimple_rnn_3/Shape_1:output:0+simple_rnn_3/strided_slice_1/stack:output:0-simple_rnn_3/strided_slice_1/stack_1:output:0-simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_3/strided_slice_1Я
(simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(simple_rnn_3/TensorArrayV2/element_shapeж
simple_rnn_3/TensorArrayV2TensorListReserve1simple_rnn_3/TensorArrayV2/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_3/TensorArrayV2ў
Bsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2D
Bsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeђ
4simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_3/transpose:y:0Ksimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_3/TensorArrayUnstack/TensorListFromTensorТ
"simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_3/strided_slice_2/stackЦ
$simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_3/strided_slice_2/stack_1Ц
$simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_3/strided_slice_2/stack_2 
simple_rnn_3/strided_slice_2StridedSlicesimple_rnn_3/transpose:y:0+simple_rnn_3/strided_slice_2/stack:output:0-simple_rnn_3/strided_slice_2/stack_1:output:0-simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
simple_rnn_3/strided_slice_2л
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype026
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpр
%simple_rnn_3/simple_rnn_cell_3/MatMulMatMul%simple_rnn_3/strided_slice_2:output:0<simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2'
%simple_rnn_3/simple_rnn_cell_3/MatMulк
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype027
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpю
&simple_rnn_3/simple_rnn_cell_3/BiasAddBiasAdd/simple_rnn_3/simple_rnn_cell_3/MatMul:product:0=simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2(
&simple_rnn_3/simple_rnn_cell_3/BiasAddт
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype028
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpм
'simple_rnn_3/simple_rnn_cell_3/MatMul_1MatMulsimple_rnn_3/zeros:output:0>simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2)
'simple_rnn_3/simple_rnn_cell_3/MatMul_1и
"simple_rnn_3/simple_rnn_cell_3/addAddV2/simple_rnn_3/simple_rnn_cell_3/BiasAdd:output:01simple_rnn_3/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"simple_rnn_3/simple_rnn_cell_3/add≠
#simple_rnn_3/simple_rnn_cell_3/TanhTanh&simple_rnn_3/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2%
#simple_rnn_3/simple_rnn_cell_3/Tanh©
*simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2,
*simple_rnn_3/TensorArrayV2_1/element_shapeм
simple_rnn_3/TensorArrayV2_1TensorListReserve3simple_rnn_3/TensorArrayV2_1/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_3/TensorArrayV2_1h
simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_3/timeЩ
%simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2'
%simple_rnn_3/while/maximum_iterationsД
simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_3/while/loop_counterь
simple_rnn_3/whileWhile(simple_rnn_3/while/loop_counter:output:0.simple_rnn_3/while/maximum_iterations:output:0simple_rnn_3/time:output:0%simple_rnn_3/TensorArrayV2_1:handle:0simple_rnn_3/zeros:output:0%simple_rnn_3/strided_slice_1:output:0Dsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_3_while_body_178283**
cond"R 
simple_rnn_3_while_cond_178282*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
simple_rnn_3/whileѕ
=simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2?
=simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape¶
/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_3/while:output:3Fsimple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype021
/simple_rnn_3/TensorArrayV2Stack/TensorListStackЫ
"simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2$
"simple_rnn_3/strided_slice_3/stackЦ
$simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_3/strided_slice_3/stack_1Ц
$simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_3/strided_slice_3/stack_2й
simple_rnn_3/strided_slice_3StridedSlice8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_3/strided_slice_3/stack:output:0-simple_rnn_3/strided_slice_3/stack_1:output:0-simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
simple_rnn_3/strided_slice_3У
simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_3/transpose_1/permг
simple_rnn_3/transpose_1	Transpose8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_3/transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
simple_rnn_3/transpose_1¶
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_8/MatMul/ReadVariableOp™
dense_8/MatMulMatMul%simple_rnn_3/strided_slice_3:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_8/MatMul§
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_8/BiasAdd/ReadVariableOp°
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_8/SigmoidД
IdentityIdentitydense_8/Sigmoid:y:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^embedding_3/embedding_lookup6^simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5^simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp7^simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp^simple_rnn_3/while*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:€€€€€€€€€€€€€€€€€€::::::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2n
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp2l
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp2p
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp2(
simple_rnn_3/whilesimple_rnn_3/while:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
І
У
-__inference_simple_rnn_3_layer_call_fn_178767
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_1776792
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
"
_user_specified_name
inputs/0
Ў
ƒ
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_179061

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addP
TanhTanhadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Tanh®
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityђ

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€@:€€€€€€€€€А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
ъl
“
H__inference_sequential_8_layer_call_and_return_conditional_losses_178481

inputs'
#embedding_3_embedding_lookup_178360A
=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resourceB
>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resourceC
?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource
identityИҐdense_8/BiasAdd/ReadVariableOpҐdense_8/MatMul/ReadVariableOpҐembedding_3/embedding_lookupҐ5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpҐ6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpҐsimple_rnn_3/while~
embedding_3/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
embedding_3/Cast¬
embedding_3/embedding_lookupResourceGather#embedding_3_embedding_lookup_178360embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_3/embedding_lookup/178360*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
dtype02
embedding_3/embedding_lookup¶
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_3/embedding_lookup/178360*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2'
%embedding_3/embedding_lookup/IdentityЌ
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2)
'embedding_3/embedding_lookup/Identity_1И
simple_rnn_3/ShapeShape0embedding_3/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn_3/ShapeО
 simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_3/strided_slice/stackТ
"simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_3/strided_slice/stack_1Т
"simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_3/strided_slice/stack_2∞
simple_rnn_3/strided_sliceStridedSlicesimple_rnn_3/Shape:output:0)simple_rnn_3/strided_slice/stack:output:0+simple_rnn_3/strided_slice/stack_1:output:0+simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_3/strided_slicew
simple_rnn_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
simple_rnn_3/zeros/mul/y†
simple_rnn_3/zeros/mulMul#simple_rnn_3/strided_slice:output:0!simple_rnn_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_3/zeros/muly
simple_rnn_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
simple_rnn_3/zeros/Less/yЫ
simple_rnn_3/zeros/LessLesssimple_rnn_3/zeros/mul:z:0"simple_rnn_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_3/zeros/Less}
simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
simple_rnn_3/zeros/packed/1Ј
simple_rnn_3/zeros/packedPack#simple_rnn_3/strided_slice:output:0$simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_3/zeros/packedy
simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_3/zeros/Const™
simple_rnn_3/zerosFill"simple_rnn_3/zeros/packed:output:0!simple_rnn_3/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_3/zerosП
simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_3/transpose/perm‘
simple_rnn_3/transpose	Transpose0embedding_3/embedding_lookup/Identity_1:output:0$simple_rnn_3/transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
simple_rnn_3/transposev
simple_rnn_3/Shape_1Shapesimple_rnn_3/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_3/Shape_1Т
"simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_3/strided_slice_1/stackЦ
$simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_3/strided_slice_1/stack_1Ц
$simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_3/strided_slice_1/stack_2Љ
simple_rnn_3/strided_slice_1StridedSlicesimple_rnn_3/Shape_1:output:0+simple_rnn_3/strided_slice_1/stack:output:0-simple_rnn_3/strided_slice_1/stack_1:output:0-simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_3/strided_slice_1Я
(simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(simple_rnn_3/TensorArrayV2/element_shapeж
simple_rnn_3/TensorArrayV2TensorListReserve1simple_rnn_3/TensorArrayV2/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_3/TensorArrayV2ў
Bsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2D
Bsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeђ
4simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_3/transpose:y:0Ksimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_3/TensorArrayUnstack/TensorListFromTensorТ
"simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_3/strided_slice_2/stackЦ
$simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_3/strided_slice_2/stack_1Ц
$simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_3/strided_slice_2/stack_2 
simple_rnn_3/strided_slice_2StridedSlicesimple_rnn_3/transpose:y:0+simple_rnn_3/strided_slice_2/stack:output:0-simple_rnn_3/strided_slice_2/stack_1:output:0-simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
simple_rnn_3/strided_slice_2л
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype026
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpр
%simple_rnn_3/simple_rnn_cell_3/MatMulMatMul%simple_rnn_3/strided_slice_2:output:0<simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2'
%simple_rnn_3/simple_rnn_cell_3/MatMulк
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype027
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpю
&simple_rnn_3/simple_rnn_cell_3/BiasAddBiasAdd/simple_rnn_3/simple_rnn_cell_3/MatMul:product:0=simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2(
&simple_rnn_3/simple_rnn_cell_3/BiasAddт
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype028
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpм
'simple_rnn_3/simple_rnn_cell_3/MatMul_1MatMulsimple_rnn_3/zeros:output:0>simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2)
'simple_rnn_3/simple_rnn_cell_3/MatMul_1и
"simple_rnn_3/simple_rnn_cell_3/addAddV2/simple_rnn_3/simple_rnn_cell_3/BiasAdd:output:01simple_rnn_3/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"simple_rnn_3/simple_rnn_cell_3/add≠
#simple_rnn_3/simple_rnn_cell_3/TanhTanh&simple_rnn_3/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2%
#simple_rnn_3/simple_rnn_cell_3/Tanh©
*simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2,
*simple_rnn_3/TensorArrayV2_1/element_shapeм
simple_rnn_3/TensorArrayV2_1TensorListReserve3simple_rnn_3/TensorArrayV2_1/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_3/TensorArrayV2_1h
simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_3/timeЩ
%simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2'
%simple_rnn_3/while/maximum_iterationsД
simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_3/while/loop_counterь
simple_rnn_3/whileWhile(simple_rnn_3/while/loop_counter:output:0.simple_rnn_3/while/maximum_iterations:output:0simple_rnn_3/time:output:0%simple_rnn_3/TensorArrayV2_1:handle:0simple_rnn_3/zeros:output:0%simple_rnn_3/strided_slice_1:output:0Dsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_3_while_body_178408**
cond"R 
simple_rnn_3_while_cond_178407*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
simple_rnn_3/whileѕ
=simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2?
=simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape¶
/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_3/while:output:3Fsimple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype021
/simple_rnn_3/TensorArrayV2Stack/TensorListStackЫ
"simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2$
"simple_rnn_3/strided_slice_3/stackЦ
$simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_3/strided_slice_3/stack_1Ц
$simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_3/strided_slice_3/stack_2й
simple_rnn_3/strided_slice_3StridedSlice8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_3/strided_slice_3/stack:output:0-simple_rnn_3/strided_slice_3/stack_1:output:0-simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
simple_rnn_3/strided_slice_3У
simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_3/transpose_1/permг
simple_rnn_3/transpose_1	Transpose8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_3/transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
simple_rnn_3/transpose_1¶
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_8/MatMul/ReadVariableOp™
dense_8/MatMulMatMul%simple_rnn_3/strided_slice_3:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_8/MatMul§
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_8/BiasAdd/ReadVariableOp°
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_8/BiasAddy
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_8/SigmoidД
IdentityIdentitydense_8/Sigmoid:y:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^embedding_3/embedding_lookup6^simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5^simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp7^simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp^simple_rnn_3/while*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:€€€€€€€€€€€€€€€€€€::::::2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2n
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp2l
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp2p
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp2(
simple_rnn_3/whilesimple_rnn_3/while:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
т	
№
C__inference_dense_8_layer_call_and_return_conditional_losses_179035

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ч
Њ
-__inference_sequential_8_layer_call_fn_178515

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_1781892
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:€€€€€€€€€€€€€€€€€€::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ы#
Е
while_body_177616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_3_177638_0$
 while_simple_rnn_cell_3_177640_0$
 while_simple_rnn_cell_3_177642_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_3_177638"
while_simple_rnn_cell_3_177640"
while_simple_rnn_cell_3_177642ИҐ/while/simple_rnn_cell_3/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
/while/simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_3_177638_0 while_simple_rnn_cell_3_177640_0 while_simple_rnn_cell_3_177642_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_17734221
/while/simple_rnn_cell_3/StatefulPartitionedCallь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Р
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity£
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Т
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2њ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ѕ
while/Identity_4Identity8while/simple_rnn_cell_3/StatefulPartitionedCall:output:10^while/simple_rnn_cell_3/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_3_177638 while_simple_rnn_cell_3_177638_0"B
while_simple_rnn_cell_3_177640 while_simple_rnn_cell_3_177640_0"B
while_simple_rnn_cell_3_177642 while_simple_rnn_cell_3_177642_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2b
/while/simple_rnn_cell_3/StatefulPartitionedCall/while/simple_rnn_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Ш
…
-__inference_sequential_8_layer_call_fn_178168
embedding_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_1781532
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:€€€€€€€€€€€€€€€€€€::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
+
_user_specified_nameembedding_3_input
“
™
while_cond_177732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177732___redundant_placeholder04
0while_while_cond_177732___redundant_placeholder14
0while_while_cond_177732___redundant_placeholder24
0while_while_cond_177732___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
Ў
ƒ
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_179078

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addP
TanhTanhadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Tanh®
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityђ

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€@:€€€€€€€€€А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
“
м
H__inference_sequential_8_layer_call_and_return_conditional_losses_178112
embedding_3_input
embedding_3_177828
simple_rnn_3_178077
simple_rnn_3_178079
simple_rnn_3_178081
dense_8_178106
dense_8_178108
identityИҐdense_8/StatefulPartitionedCallҐ#embedding_3/StatefulPartitionedCallҐ$simple_rnn_3/StatefulPartitionedCall•
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputembedding_3_177828*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_1778192%
#embedding_3/StatefulPartitionedCallж
$simple_rnn_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_3/StatefulPartitionedCall:output:0simple_rnn_3_178077simple_rnn_3_178079simple_rnn_3_178081*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_1779422&
$simple_rnn_3/StatefulPartitionedCallґ
dense_8/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_3/StatefulPartitionedCall:output:0dense_8_178106dense_8_178108*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1780952!
dense_8/StatefulPartitionedCallл
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall%^simple_rnn_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:€€€€€€€€€€€€€€€€€€::::::2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2L
$simple_rnn_3/StatefulPartitionedCall$simple_rnn_3/StatefulPartitionedCall:c _
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
+
_user_specified_nameembedding_3_input
ж3
ь
while_body_178936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_3_matmul_readvariableop_resource;
7while_simple_rnn_cell_3_biasadd_readvariableop_resource<
8while_simple_rnn_cell_3_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_3/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЎ
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02/
-while/simple_rnn_cell_3/MatMul/ReadVariableOpж
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_3/MatMul„
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_3/BiasAddя
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_3/MatMul_1ћ
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_3/addШ
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_3/Tanhд
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ш
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
–@
Г
__inference__traced_save_179210
file_prefix5
1savev2_embedding_3_embeddings_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopD
@savev2_simple_rnn_3_simple_rnn_cell_3_kernel_read_readvariableopN
Jsavev2_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_3_simple_rnn_cell_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_3_embeddings_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_3_simple_rnn_cell_3_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_3_simple_rnn_cell_3_bias_m_read_readvariableop<
8savev2_adam_embedding_3_embeddings_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_3_simple_rnn_cell_3_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_3_simple_rnn_cell_3_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameФ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¶
valueЬBЩB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesј
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesА
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_3_embeddings_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop@savev2_simple_rnn_3_simple_rnn_cell_3_kernel_read_readvariableopJsavev2_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_read_readvariableop>savev2_simple_rnn_3_simple_rnn_cell_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_3_embeddings_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableopGsavev2_adam_simple_rnn_3_simple_rnn_cell_3_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_3_simple_rnn_cell_3_bias_m_read_readvariableop8savev2_adam_embedding_3_embeddings_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableopGsavev2_adam_simple_rnn_3_simple_rnn_cell_3_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_3_simple_rnn_cell_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
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

identity_1Identity_1:output:0*÷
_input_shapesƒ
Ѕ: :d@:	А:: : : : : :	@А:
АА:А: : : : :d@:	А::	@А:
АА:А:d@:	А::	@А:
АА:А: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:d@:%!

_output_shapes
:	А: 

_output_shapes
::
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
: :

_output_shapes
: :%	!

_output_shapes
:	@А:&
"
 
_output_shapes
:
АА:!

_output_shapes	
:А:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:d@:%!

_output_shapes
:	А: 

_output_shapes
::%!

_output_shapes
:	@А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:$ 

_output_shapes

:d@:%!

_output_shapes
:	А: 

_output_shapes
::%!

_output_shapes
:	@А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:

_output_shapes
: 
Ю

Ц
G__inference_embedding_3_layer_call_and_return_conditional_losses_178525

inputs
embedding_lookup_178519
identityИҐembedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
CastЖ
embedding_lookupResourceGatherembedding_lookup_178519Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/178519*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
dtype02
embedding_lookupц
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/178519*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
embedding_lookup/Identity©
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
embedding_lookup/Identity_1Ш
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≤Q
М
+sequential_8_simple_rnn_3_while_body_177220P
Lsequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_while_loop_counterV
Rsequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_while_maximum_iterations/
+sequential_8_simple_rnn_3_while_placeholder1
-sequential_8_simple_rnn_3_while_placeholder_11
-sequential_8_simple_rnn_3_while_placeholder_2O
Ksequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_strided_slice_1_0М
Зsequential_8_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_8_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0V
Rsequential_8_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0W
Ssequential_8_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0X
Tsequential_8_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0,
(sequential_8_simple_rnn_3_while_identity.
*sequential_8_simple_rnn_3_while_identity_1.
*sequential_8_simple_rnn_3_while_identity_2.
*sequential_8_simple_rnn_3_while_identity_3.
*sequential_8_simple_rnn_3_while_identity_4M
Isequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_strided_slice_1К
Еsequential_8_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_8_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorT
Psequential_8_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceU
Qsequential_8_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceV
Rsequential_8_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceИҐHsequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpҐGsequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpҐIsequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpч
Qsequential_8/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2S
Qsequential_8/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeр
Csequential_8/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЗsequential_8_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_8_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0+sequential_8_simple_rnn_3_while_placeholderZsequential_8/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02E
Csequential_8/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem¶
Gsequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpRsequential_8_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02I
Gsequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpќ
8sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMulMatMulJsequential_8/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2:
8sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul•
Hsequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpSsequential_8_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02J
Hsequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp 
9sequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAddBiasAddBsequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul:product:0Psequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2;
9sequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd≠
Isequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpTsequential_8_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02K
Isequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpЈ
:sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1MatMul-sequential_8_simple_rnn_3_while_placeholder_2Qsequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2<
:sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1і
5sequential_8/simple_rnn_3/while/simple_rnn_cell_3/addAddV2Bsequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd:output:0Dsequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А27
5sequential_8/simple_rnn_3/while/simple_rnn_cell_3/addж
6sequential_8/simple_rnn_3/while/simple_rnn_cell_3/TanhTanh9sequential_8/simple_rnn_3/while/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А28
6sequential_8/simple_rnn_3/while/simple_rnn_cell_3/Tanhж
Dsequential_8/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_8_simple_rnn_3_while_placeholder_1+sequential_8_simple_rnn_3_while_placeholder:sequential_8/simple_rnn_3/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02F
Dsequential_8/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemР
%sequential_8/simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_8/simple_rnn_3/while/add/y—
#sequential_8/simple_rnn_3/while/addAddV2+sequential_8_simple_rnn_3_while_placeholder.sequential_8/simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: 2%
#sequential_8/simple_rnn_3/while/addФ
'sequential_8/simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_8/simple_rnn_3/while/add_1/yш
%sequential_8/simple_rnn_3/while/add_1AddV2Lsequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_while_loop_counter0sequential_8/simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2'
%sequential_8/simple_rnn_3/while/add_1Н
(sequential_8/simple_rnn_3/while/IdentityIdentity)sequential_8/simple_rnn_3/while/add_1:z:0I^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpH^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpJ^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential_8/simple_rnn_3/while/IdentityЇ
*sequential_8/simple_rnn_3/while/Identity_1IdentityRsequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_while_maximum_iterationsI^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpH^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpJ^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_8/simple_rnn_3/while/Identity_1П
*sequential_8/simple_rnn_3/while/Identity_2Identity'sequential_8/simple_rnn_3/while/add:z:0I^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpH^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpJ^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_8/simple_rnn_3/while/Identity_2Љ
*sequential_8/simple_rnn_3/while/Identity_3IdentityTsequential_8/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0I^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpH^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpJ^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2,
*sequential_8/simple_rnn_3/while/Identity_3і
*sequential_8/simple_rnn_3/while/Identity_4Identity:sequential_8/simple_rnn_3/while/simple_rnn_cell_3/Tanh:y:0I^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpH^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpJ^sequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2,
*sequential_8/simple_rnn_3/while/Identity_4"]
(sequential_8_simple_rnn_3_while_identity1sequential_8/simple_rnn_3/while/Identity:output:0"a
*sequential_8_simple_rnn_3_while_identity_13sequential_8/simple_rnn_3/while/Identity_1:output:0"a
*sequential_8_simple_rnn_3_while_identity_23sequential_8/simple_rnn_3/while/Identity_2:output:0"a
*sequential_8_simple_rnn_3_while_identity_33sequential_8/simple_rnn_3/while/Identity_3:output:0"a
*sequential_8_simple_rnn_3_while_identity_43sequential_8/simple_rnn_3/while/Identity_4:output:0"Ш
Isequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_strided_slice_1Ksequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_strided_slice_1_0"®
Qsequential_8_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceSsequential_8_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"™
Rsequential_8_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceTsequential_8_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"¶
Psequential_8_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceRsequential_8_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"Т
Еsequential_8_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_8_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorЗsequential_8_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_8_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2Ф
Hsequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpHsequential_8/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2Т
Gsequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpGsequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp2Ц
Isequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpIsequential_8/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
“
¬
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_177359

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addP
TanhTanhadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Tanh®
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityђ

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€@:€€€€€€€€€А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates
ж3
ь
while_body_178690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_3_matmul_readvariableop_resource;
7while_simple_rnn_cell_3_biasadd_readvariableop_resource<
8while_simple_rnn_cell_3_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_3/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЎ
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02/
-while/simple_rnn_cell_3/MatMul/ReadVariableOpж
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_3/MatMul„
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_3/BiasAddя
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_3/MatMul_1ћ
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_3/addШ
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_3/Tanhд
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ш
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
Ќ

°
simple_rnn_3_while_cond_1784076
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_28
4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_178407___redundant_placeholder0N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_178407___redundant_placeholder1N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_178407___redundant_placeholder2N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_178407___redundant_placeholder3
simple_rnn_3_while_identity
±
simple_rnn_3/while/LessLesssimple_rnn_3_while_placeholder4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_3/while/LessД
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_3/while/Identity"C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
∆
Ш
+sequential_8_simple_rnn_3_while_cond_177219P
Lsequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_while_loop_counterV
Rsequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_while_maximum_iterations/
+sequential_8_simple_rnn_3_while_placeholder1
-sequential_8_simple_rnn_3_while_placeholder_11
-sequential_8_simple_rnn_3_while_placeholder_2R
Nsequential_8_simple_rnn_3_while_less_sequential_8_simple_rnn_3_strided_slice_1h
dsequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_while_cond_177219___redundant_placeholder0h
dsequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_while_cond_177219___redundant_placeholder1h
dsequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_while_cond_177219___redundant_placeholder2h
dsequential_8_simple_rnn_3_while_sequential_8_simple_rnn_3_while_cond_177219___redundant_placeholder3,
(sequential_8_simple_rnn_3_while_identity
т
$sequential_8/simple_rnn_3/while/LessLess+sequential_8_simple_rnn_3_while_placeholderNsequential_8_simple_rnn_3_while_less_sequential_8_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: 2&
$sequential_8/simple_rnn_3/while/LessЂ
(sequential_8/simple_rnn_3/while/IdentityIdentity(sequential_8/simple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: 2*
(sequential_8/simple_rnn_3/while/Identity"]
(sequential_8_simple_rnn_3_while_identity1sequential_8/simple_rnn_3/while/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
п<
х
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_177679

inputs
simple_rnn_cell_3_177604
simple_rnn_cell_3_177606
simple_rnn_cell_3_177608
identityИҐ)simple_rnn_cell_3/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2Ц
)simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_3_177604simple_rnn_cell_3_177606simple_rnn_cell_3_177608*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_1773422+
)simple_rnn_cell_3/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_3_177604simple_rnn_cell_3_177606simple_rnn_cell_3_177608*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_177616*
condR
while_cond_177615*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1°
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_3/StatefulPartitionedCall^while*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::2V
)simple_rnn_cell_3/StatefulPartitionedCall)simple_rnn_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ҐH
Х
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_177942

inputs4
0simple_rnn_cell_3_matmul_readvariableop_resource5
1simple_rnn_cell_3_biasadd_readvariableop_resource6
2simple_rnn_cell_3_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_3/MatMul/ReadVariableOpҐ)simple_rnn_cell_3/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2ƒ
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02)
'simple_rnn_cell_3/MatMul/ReadVariableOpЉ
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/MatMul√
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_3/BiasAdd/ReadVariableOp 
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/BiasAddЋ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_3/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/MatMul_1і
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/addЖ
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/TanhП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter∆
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_177876*
condR
while_cond_177875*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1ц
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
І
У
-__inference_simple_rnn_3_layer_call_fn_178778
inputs_0
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_1777962
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
"
_user_specified_name
inputs/0
оu
Ё
"__inference__traced_restore_179301
file_prefix+
'assignvariableop_embedding_3_embeddings%
!assignvariableop_1_dense_8_kernel#
assignvariableop_2_dense_8_bias 
assignvariableop_3_adam_iter"
assignvariableop_4_adam_beta_1"
assignvariableop_5_adam_beta_2!
assignvariableop_6_adam_decay)
%assignvariableop_7_adam_learning_rate<
8assignvariableop_8_simple_rnn_3_simple_rnn_cell_3_kernelF
Bassignvariableop_9_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel;
7assignvariableop_10_simple_rnn_3_simple_rnn_cell_3_bias
assignvariableop_11_total
assignvariableop_12_count
assignvariableop_13_total_1
assignvariableop_14_count_15
1assignvariableop_15_adam_embedding_3_embeddings_m-
)assignvariableop_16_adam_dense_8_kernel_m+
'assignvariableop_17_adam_dense_8_bias_mD
@assignvariableop_18_adam_simple_rnn_3_simple_rnn_cell_3_kernel_mN
Jassignvariableop_19_adam_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_mB
>assignvariableop_20_adam_simple_rnn_3_simple_rnn_cell_3_bias_m5
1assignvariableop_21_adam_embedding_3_embeddings_v-
)assignvariableop_22_adam_dense_8_kernel_v+
'assignvariableop_23_adam_dense_8_bias_vD
@assignvariableop_24_adam_simple_rnn_3_simple_rnn_cell_3_kernel_vN
Jassignvariableop_25_adam_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_vB
>assignvariableop_26_adam_simple_rnn_3_simple_rnn_cell_3_bias_v
identity_28ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ъ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¶
valueЬBЩB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names∆
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЄ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Д
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¶
AssignVariableOpAssignVariableOp'assignvariableop_embedding_3_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¶
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_8_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_8_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3°
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ґ
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7™
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8љ
AssignVariableOp_8AssignVariableOp8assignvariableop_8_simple_rnn_3_simple_rnn_cell_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9«
AssignVariableOp_9AssignVariableOpBassignvariableop_9_simple_rnn_3_simple_rnn_cell_3_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10њ
AssignVariableOp_10AssignVariableOp7assignvariableop_10_simple_rnn_3_simple_rnn_cell_3_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11°
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12°
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15є
AssignVariableOp_15AssignVariableOp1assignvariableop_15_adam_embedding_3_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16±
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_8_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17ѓ
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_8_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18»
AssignVariableOp_18AssignVariableOp@assignvariableop_18_adam_simple_rnn_3_simple_rnn_cell_3_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19“
AssignVariableOp_19AssignVariableOpJassignvariableop_19_adam_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20∆
AssignVariableOp_20AssignVariableOp>assignvariableop_20_adam_simple_rnn_3_simple_rnn_cell_3_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21є
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_embedding_3_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_8_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23ѓ
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_8_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24»
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_simple_rnn_3_simple_rnn_cell_3_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25“
AssignVariableOp_25AssignVariableOpJassignvariableop_25_adam_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26∆
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_simple_rnn_3_simple_rnn_cell_3_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp∞
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27£
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*Б
_input_shapesp
n: :::::::::::::::::::::::::::2$
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
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ы#
Е
while_body_177733
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_3_177755_0$
 while_simple_rnn_cell_3_177757_0$
 while_simple_rnn_cell_3_177759_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_3_177755"
while_simple_rnn_cell_3_177757"
while_simple_rnn_cell_3_177759ИҐ/while/simple_rnn_cell_3/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem„
/while/simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_3_177755_0 while_simple_rnn_cell_3_177757_0 while_simple_rnn_cell_3_177759_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_17735921
/while/simple_rnn_cell_3/StatefulPartitionedCallь
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Р
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity£
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Т
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2њ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ѕ
while/Identity_4Identity8while/simple_rnn_cell_3/StatefulPartitionedCall:output:10^while/simple_rnn_cell_3/StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_3_177755 while_simple_rnn_cell_3_177755_0"B
while_simple_rnn_cell_3_177757 while_simple_rnn_cell_3_177757_0"B
while_simple_rnn_cell_3_177759 while_simple_rnn_cell_3_177759_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2b
/while/simple_rnn_cell_3/StatefulPartitionedCall/while/simple_rnn_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
ж3
ь
while_body_177876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_3_matmul_readvariableop_resource;
7while_simple_rnn_cell_3_biasadd_readvariableop_resource<
8while_simple_rnn_cell_3_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_3/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЎ
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02/
-while/simple_rnn_cell_3/MatMul/ReadVariableOpж
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_3/MatMul„
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_3/BiasAddя
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_3/MatMul_1ћ
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_3/addШ
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_3/Tanhд
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ш
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
“
™
while_cond_177615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177615___redundant_placeholder04
0while_while_cond_177615___redundant_placeholder14
0while_while_cond_177615___redundant_placeholder24
0while_while_cond_177615___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
о
r
,__inference_embedding_3_layer_call_fn_178532

inputs
unknown
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_1778192
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
“
¬
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_177342

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddХ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addP
TanhTanhadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Tanh®
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityђ

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€@:€€€€€€€€€А:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_namestates
™H
Ч
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_178644
inputs_04
0simple_rnn_cell_3_matmul_readvariableop_resource5
1simple_rnn_cell_3_biasadd_readvariableop_resource6
2simple_rnn_cell_3_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_3/MatMul/ReadVariableOpҐ)simple_rnn_cell_3/MatMul_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2ƒ
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02)
'simple_rnn_cell_3/MatMul/ReadVariableOpЉ
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/MatMul√
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_3/BiasAdd/ReadVariableOp 
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/BiasAddЋ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_3/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/MatMul_1і
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/addЖ
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/TanhП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter∆
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_178578*
condR
while_cond_178577*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1ц
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
"
_user_specified_name
inputs/0
ч
Њ
-__inference_sequential_8_layer_call_fn_178498

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_1781532
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:€€€€€€€€€€€€€€€€€€::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ш
…
-__inference_sequential_8_layer_call_fn_178204
embedding_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_1781892
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:€€€€€€€€€€€€€€€€€€::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
+
_user_specified_nameembedding_3_input
“
™
while_cond_178577
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_178577___redundant_placeholder04
0while_while_cond_178577___redundant_placeholder14
0while_while_cond_178577___redundant_placeholder24
0while_while_cond_178577___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
“
™
while_cond_178935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_178935___redundant_placeholder04
0while_while_cond_178935___redundant_placeholder14
0while_while_cond_178935___redundant_placeholder24
0while_while_cond_178935___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
ж3
ь
while_body_177988
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_3_matmul_readvariableop_resource;
7while_simple_rnn_cell_3_biasadd_readvariableop_resource<
8while_simple_rnn_cell_3_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_3/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЎ
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02/
-while/simple_rnn_cell_3/MatMul/ReadVariableOpж
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_3/MatMul„
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_3/BiasAddя
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_3/MatMul_1ћ
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_3/addШ
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_3/Tanhд
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ш
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
р	
і
2__inference_simple_rnn_cell_3_layer_call_fn_179106

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ИҐStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_1773592
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

IdentityУ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€@:€€€€€€€€€А:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
Ю

Ц
G__inference_embedding_3_layer_call_and_return_conditional_losses_177819

inputs
embedding_lookup_177813
identityИҐembedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
CastЖ
embedding_lookupResourceGatherembedding_lookup_177813Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/177813*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
dtype02
embedding_lookupц
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/177813*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
embedding_lookup/Identity©
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
embedding_lookup/Identity_1Ш
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
±
б
H__inference_sequential_8_layer_call_and_return_conditional_losses_178153

inputs
embedding_3_178137
simple_rnn_3_178140
simple_rnn_3_178142
simple_rnn_3_178144
dense_8_178147
dense_8_178149
identityИҐdense_8/StatefulPartitionedCallҐ#embedding_3/StatefulPartitionedCallҐ$simple_rnn_3/StatefulPartitionedCallЪ
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_3_178137*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_1778192%
#embedding_3/StatefulPartitionedCallж
$simple_rnn_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_3/StatefulPartitionedCall:output:0simple_rnn_3_178140simple_rnn_3_178142simple_rnn_3_178144*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_1779422&
$simple_rnn_3/StatefulPartitionedCallґ
dense_8/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_3/StatefulPartitionedCall:output:0dense_8_178147dense_8_178149*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1780952!
dense_8/StatefulPartitionedCallл
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall%^simple_rnn_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:€€€€€€€€€€€€€€€€€€::::::2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2L
$simple_rnn_3/StatefulPartitionedCall$simple_rnn_3/StatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
“
м
H__inference_sequential_8_layer_call_and_return_conditional_losses_178131
embedding_3_input
embedding_3_178115
simple_rnn_3_178118
simple_rnn_3_178120
simple_rnn_3_178122
dense_8_178125
dense_8_178127
identityИҐdense_8/StatefulPartitionedCallҐ#embedding_3/StatefulPartitionedCallҐ$simple_rnn_3/StatefulPartitionedCall•
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputembedding_3_178115*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_1778192%
#embedding_3/StatefulPartitionedCallж
$simple_rnn_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_3/StatefulPartitionedCall:output:0simple_rnn_3_178118simple_rnn_3_178120simple_rnn_3_178122*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_1780542&
$simple_rnn_3/StatefulPartitionedCallґ
dense_8/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_3/StatefulPartitionedCall:output:0dense_8_178125dense_8_178127*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1780952!
dense_8/StatefulPartitionedCallл
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall%^simple_rnn_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:€€€€€€€€€€€€€€€€€€::::::2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2L
$simple_rnn_3/StatefulPartitionedCall$simple_rnn_3/StatefulPartitionedCall:c _
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
+
_user_specified_nameembedding_3_input
“
™
while_cond_177987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177987___redundant_placeholder04
0while_while_cond_177987___redundant_placeholder14
0while_while_cond_177987___redundant_placeholder24
0while_while_cond_177987___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
»B
В
simple_rnn_3_while_body_1784086
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_25
1simple_rnn_3_while_simple_rnn_3_strided_slice_1_0q
msimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0J
Fsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0K
Gsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0
simple_rnn_3_while_identity!
simple_rnn_3_while_identity_1!
simple_rnn_3_while_identity_2!
simple_rnn_3_while_identity_3!
simple_rnn_3_while_identity_43
/simple_rnn_3_while_simple_rnn_3_strided_slice_1o
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceH
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceI
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceИҐ;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpҐ<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpЁ
Dsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2F
Dsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape°
6simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_3_while_placeholderMsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype028
6simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem€
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02<
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpЪ
+simple_rnn_3/while/simple_rnn_cell_3/MatMulMatMul=simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2-
+simple_rnn_3/while/simple_rnn_cell_3/MatMulю
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02=
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpЦ
,simple_rnn_3/while/simple_rnn_cell_3/BiasAddBiasAdd5simple_rnn_3/while/simple_rnn_cell_3/MatMul:product:0Csimple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,simple_rnn_3/while/simple_rnn_cell_3/BiasAddЖ
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02>
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpГ
-simple_rnn_3/while/simple_rnn_cell_3/MatMul_1MatMul simple_rnn_3_while_placeholder_2Dsimple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2/
-simple_rnn_3/while/simple_rnn_cell_3/MatMul_1А
(simple_rnn_3/while/simple_rnn_cell_3/addAddV25simple_rnn_3/while/simple_rnn_cell_3/BiasAdd:output:07simple_rnn_3/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(simple_rnn_3/while/simple_rnn_cell_3/addњ
)simple_rnn_3/while/simple_rnn_cell_3/TanhTanh,simple_rnn_3/while/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2+
)simple_rnn_3/while/simple_rnn_cell_3/Tanh•
7simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_3_while_placeholder_1simple_rnn_3_while_placeholder-simple_rnn_3/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype029
7simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_3/while/add/yЭ
simple_rnn_3/while/addAddV2simple_rnn_3_while_placeholder!simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_3/while/addz
simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_3/while/add_1/yЈ
simple_rnn_3/while/add_1AddV22simple_rnn_3_while_simple_rnn_3_while_loop_counter#simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_3/while/add_1њ
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/add_1:z:0<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_3/while/Identityя
simple_rnn_3/while/Identity_1Identity8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_3/while/Identity_1Ѕ
simple_rnn_3/while/Identity_2Identitysimple_rnn_3/while/add:z:0<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_3/while/Identity_2о
simple_rnn_3/while/Identity_3IdentityGsimple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_3/while/Identity_3ж
simple_rnn_3/while/Identity_4Identity-simple_rnn_3/while/simple_rnn_cell_3/Tanh:y:0<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_3/while/Identity_4"C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0"G
simple_rnn_3_while_identity_1&simple_rnn_3/while/Identity_1:output:0"G
simple_rnn_3_while_identity_2&simple_rnn_3/while/Identity_2:output:0"G
simple_rnn_3_while_identity_3&simple_rnn_3/while/Identity_3:output:0"G
simple_rnn_3_while_identity_4&simple_rnn_3/while/Identity_4:output:0"d
/simple_rnn_3_while_simple_rnn_3_strided_slice_11simple_rnn_3_while_simple_rnn_3_strided_slice_1_0"О
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"Р
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"М
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"№
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensormsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2z
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2x
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp2|
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
“
™
while_cond_178823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_178823___redundant_placeholder04
0while_while_cond_178823___redundant_placeholder14
0while_while_cond_178823___redundant_placeholder24
0while_while_cond_178823___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
°
С
-__inference_simple_rnn_3_layer_call_fn_179024

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_1780542
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ж3
ь
while_body_178578
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_3_matmul_readvariableop_resource;
7while_simple_rnn_cell_3_biasadd_readvariableop_resource<
8while_simple_rnn_cell_3_matmul_1_readvariableop_resourceИҐ.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ-while/simple_rnn_cell_3/MatMul/ReadVariableOpҐ/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЎ
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02/
-while/simple_rnn_cell_3/MatMul/ReadVariableOpж
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
while/simple_rnn_cell_3/MatMul„
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype020
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpв
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
while/simple_rnn_cell_3/BiasAddя
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype021
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpѕ
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 while/simple_rnn_cell_3/MatMul_1ћ
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_3/addШ
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/simple_rnn_cell_3/Tanhд
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1с
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityД
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1у
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2†
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ш
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
п<
х
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_177796

inputs
simple_rnn_cell_3_177721
simple_rnn_cell_3_177723
simple_rnn_cell_3_177725
identityИҐ)simple_rnn_cell_3/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2Ц
)simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_3_177721simple_rnn_cell_3_177723simple_rnn_cell_3_177725*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_1773592+
)simple_rnn_cell_3/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterы
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_3_177721simple_rnn_cell_3_177723simple_rnn_cell_3_177725*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_177733*
condR
while_cond_177732*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1°
IdentityIdentitystrided_slice_3:output:0*^simple_rnn_cell_3/StatefulPartitionedCall^while*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::2V
)simple_rnn_cell_3/StatefulPartitionedCall)simple_rnn_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
т	
№
C__inference_dense_8_layer_call_and_return_conditional_losses_178095

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
™H
Ч
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_178756
inputs_04
0simple_rnn_cell_3_matmul_readvariableop_resource5
1simple_rnn_cell_3_biasadd_readvariableop_resource6
2simple_rnn_cell_3_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_3/MatMul/ReadVariableOpҐ)simple_rnn_cell_3/MatMul_1/ReadVariableOpҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2ƒ
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02)
'simple_rnn_cell_3/MatMul/ReadVariableOpЉ
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/MatMul√
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_3/BiasAdd/ReadVariableOp 
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/BiasAddЋ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_3/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/MatMul_1і
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/addЖ
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/TanhП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter∆
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_178690*
condR
while_cond_178689*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1ц
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
"
_user_specified_name
inputs/0
°
С
-__inference_simple_rnn_3_layer_call_fn_179013

inputs
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_1779422
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
и
ј
$__inference_signature_wrapper_178231
embedding_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_1772932
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:€€€€€€€€€€€€€€€€€€::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
+
_user_specified_nameembedding_3_input
“
™
while_cond_178689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_178689___redundant_placeholder04
0while_while_cond_178689___redundant_placeholder14
0while_while_cond_178689___redundant_placeholder24
0while_while_cond_178689___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
р	
і
2__inference_simple_rnn_cell_3_layer_call_fn_179092

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ИҐStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:€€€€€€€€€А:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_1773422
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

IdentityУ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*F
_input_shapes5
3:€€€€€€€€€@:€€€€€€€€€А:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
states/0
±
б
H__inference_sequential_8_layer_call_and_return_conditional_losses_178189

inputs
embedding_3_178173
simple_rnn_3_178176
simple_rnn_3_178178
simple_rnn_3_178180
dense_8_178183
dense_8_178185
identityИҐdense_8/StatefulPartitionedCallҐ#embedding_3/StatefulPartitionedCallҐ$simple_rnn_3/StatefulPartitionedCallЪ
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_3_178173*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_1778192%
#embedding_3/StatefulPartitionedCallж
$simple_rnn_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_3/StatefulPartitionedCall:output:0simple_rnn_3_178176simple_rnn_3_178178simple_rnn_3_178180*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_1780542&
$simple_rnn_3/StatefulPartitionedCallґ
dense_8/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_3/StatefulPartitionedCall:output:0dense_8_178183dense_8_178185*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1780952!
dense_8/StatefulPartitionedCallл
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall%^simple_rnn_3/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:€€€€€€€€€€€€€€€€€€::::::2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2L
$simple_rnn_3/StatefulPartitionedCall$simple_rnn_3/StatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
“
™
while_cond_177875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177875___redundant_placeholder04
0while_while_cond_177875___redundant_placeholder14
0while_while_cond_177875___redundant_placeholder24
0while_while_cond_177875___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
ҐH
Х
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_178890

inputs4
0simple_rnn_cell_3_matmul_readvariableop_resource5
1simple_rnn_cell_3_biasadd_readvariableop_resource6
2simple_rnn_cell_3_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_3/MatMul/ReadVariableOpҐ)simple_rnn_cell_3/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2ƒ
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02)
'simple_rnn_cell_3/MatMul/ReadVariableOpЉ
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/MatMul√
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_3/BiasAdd/ReadVariableOp 
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/BiasAddЋ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_3/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/MatMul_1і
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/addЖ
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/TanhП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter∆
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_178824*
condR
while_cond_178823*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1ц
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ҐH
Х
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_178054

inputs4
0simple_rnn_cell_3_matmul_readvariableop_resource5
1simple_rnn_cell_3_biasadd_readvariableop_resource6
2simple_rnn_cell_3_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_3/MatMul/ReadVariableOpҐ)simple_rnn_cell_3/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2ƒ
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02)
'simple_rnn_cell_3/MatMul/ReadVariableOpЉ
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/MatMul√
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_3/BiasAdd/ReadVariableOp 
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/BiasAddЋ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_3/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/MatMul_1і
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/addЖ
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/TanhП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter∆
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_177988*
condR
while_cond_177987*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1ц
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ҐH
Х
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_179002

inputs4
0simple_rnn_cell_3_matmul_readvariableop_resource5
1simple_rnn_cell_3_biasadd_readvariableop_resource6
2simple_rnn_cell_3_matmul_1_readvariableop_resource
identityИҐ(simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ'simple_rnn_cell_3/MatMul/ReadVariableOpҐ)simple_rnn_cell_3/MatMul_1/ReadVariableOpҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€@*
shrink_axis_mask2
strided_slice_2ƒ
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02)
'simple_rnn_cell_3/MatMul/ReadVariableOpЉ
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/MatMul√
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(simple_rnn_cell_3/BiasAdd/ReadVariableOp 
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/BiasAddЋ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02+
)simple_rnn_cell_3/MatMul_1/ReadVariableOpЄ
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/MatMul_1і
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/addЖ
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_cell_3/TanhП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter∆
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :€€€€€€€€€А: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_178936*
condR
while_cond_178935*9
output_shapes(
&: : : : :€€€€€€€€€А: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   22
0TensorArrayV2Stack/TensorListStack/element_shapeт
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ы
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€А*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permѓ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А2
transpose_1ц
IdentityIdentitystrided_slice_3:output:0)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€@:::2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Ќ

°
simple_rnn_3_while_cond_1782826
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_28
4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_178282___redundant_placeholder0N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_178282___redundant_placeholder1N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_178282___redundant_placeholder2N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_178282___redundant_placeholder3
simple_rnn_3_while_identity
±
simple_rnn_3/while/LessLesssimple_rnn_3_while_placeholder4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_3/while/LessД
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_3/while/Identity"C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0*A
_input_shapes0
.: : : : :€€€€€€€€€А: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
:
»B
В
simple_rnn_3_while_body_1782836
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_25
1simple_rnn_3_while_simple_rnn_3_strided_slice_1_0q
msimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0J
Fsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0K
Gsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0
simple_rnn_3_while_identity!
simple_rnn_3_while_identity_1!
simple_rnn_3_while_identity_2!
simple_rnn_3_while_identity_3!
simple_rnn_3_while_identity_43
/simple_rnn_3_while_simple_rnn_3_strided_slice_1o
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceH
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceI
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceИҐ;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpҐ:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpҐ<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpЁ
Dsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   2F
Dsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape°
6simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_3_while_placeholderMsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€@*
element_dtype028
6simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem€
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02<
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpЪ
+simple_rnn_3/while/simple_rnn_cell_3/MatMulMatMul=simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2-
+simple_rnn_3/while/simple_rnn_cell_3/MatMulю
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02=
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpЦ
,simple_rnn_3/while/simple_rnn_cell_3/BiasAddBiasAdd5simple_rnn_3/while/simple_rnn_cell_3/MatMul:product:0Csimple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,simple_rnn_3/while/simple_rnn_cell_3/BiasAddЖ
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype02>
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpГ
-simple_rnn_3/while/simple_rnn_cell_3/MatMul_1MatMul simple_rnn_3_while_placeholder_2Dsimple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2/
-simple_rnn_3/while/simple_rnn_cell_3/MatMul_1А
(simple_rnn_3/while/simple_rnn_cell_3/addAddV25simple_rnn_3/while/simple_rnn_cell_3/BiasAdd:output:07simple_rnn_3/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(simple_rnn_3/while/simple_rnn_cell_3/addњ
)simple_rnn_3/while/simple_rnn_cell_3/TanhTanh,simple_rnn_3/while/simple_rnn_cell_3/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2+
)simple_rnn_3/while/simple_rnn_cell_3/Tanh•
7simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_3_while_placeholder_1simple_rnn_3_while_placeholder-simple_rnn_3/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype029
7simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_3/while/add/yЭ
simple_rnn_3/while/addAddV2simple_rnn_3_while_placeholder!simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_3/while/addz
simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_3/while/add_1/yЈ
simple_rnn_3/while/add_1AddV22simple_rnn_3_while_simple_rnn_3_while_loop_counter#simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_3/while/add_1њ
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/add_1:z:0<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_3/while/Identityя
simple_rnn_3/while/Identity_1Identity8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_3/while/Identity_1Ѕ
simple_rnn_3/while/Identity_2Identitysimple_rnn_3/while/add:z:0<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_3/while/Identity_2о
simple_rnn_3/while/Identity_3IdentityGsimple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_3/while/Identity_3ж
simple_rnn_3/while/Identity_4Identity-simple_rnn_3/while/simple_rnn_cell_3/Tanh:y:0<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2
simple_rnn_3/while/Identity_4"C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0"G
simple_rnn_3_while_identity_1&simple_rnn_3/while/Identity_1:output:0"G
simple_rnn_3_while_identity_2&simple_rnn_3/while/Identity_2:output:0"G
simple_rnn_3_while_identity_3&simple_rnn_3/while/Identity_3:output:0"G
simple_rnn_3_while_identity_4&simple_rnn_3/while/Identity_4:output:0"d
/simple_rnn_3_while_simple_rnn_3_strided_slice_11simple_rnn_3_while_simple_rnn_3_strided_slice_1_0"О
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"Р
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"М
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"№
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensormsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :€€€€€€€€€А: : :::2z
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2x
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp2|
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:€€€€€€€€€А:

_output_shapes
: :

_output_shapes
: 
№
}
(__inference_dense_8_layer_call_fn_179044

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1780952
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default≥
X
embedding_3_inputC
#serving_default_embedding_3_input:0€€€€€€€€€€€€€€€€€€;
dense_80
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Ґґ
т&
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api
	
signatures
*X&call_and_return_all_conditional_losses
Y_default_save_signature
Z__call__"≤$
_tf_keras_sequentialУ${"class_name": "Sequential", "name": "sequential_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_3_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 100, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_3", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_3_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 100, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_3", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mean_squared_error", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ѓ


embeddings
trainable_variables
	variables
regularization_losses
	keras_api
*[&call_and_return_all_conditional_losses
\__call__"Р
_tf_keras_layerц{"class_name": "Embedding", "name": "embedding_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 100, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
€

cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*]&call_and_return_all_conditional_losses
^__call__"÷	
_tf_keras_rnn_layerЄ	{"class_name": "SimpleRNN", "name": "simple_rnn_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_3", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 64]}}
ф

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*_&call_and_return_all_conditional_losses
`__call__"ѕ
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
њ
iter

beta_1

beta_2
	decay
learning_rate
mLmMmN mO!mP"mQ
vRvSvT vU!vV"vW"
	optimizer
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
 
#metrics
$layer_metrics

%layers
	variables
&non_trainable_variables
regularization_losses
trainable_variables
'layer_regularization_losses
Z__call__
Y_default_save_signature
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
,
aserving_default"
signature_map
(:&d@2embedding_3/embeddings
'

0"
trackable_list_wrapper
'

0"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
trainable_variables
(metrics

)layers
	variables
*non_trainable_variables
regularization_losses
+layer_metrics
,layer_regularization_losses
\__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
и

 kernel
!recurrent_kernel
"bias
-trainable_variables
.	variables
/regularization_losses
0	keras_api
*b&call_and_return_all_conditional_losses
c__call__"≠
_tf_keras_layerУ{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_3", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
є
1metrics
2layer_metrics

3layers
	variables
4non_trainable_variables
regularization_losses
trainable_variables
5layer_regularization_losses

6states
^__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
!:	А2dense_8/kernel
:2dense_8/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
trainable_variables
7metrics

8layers
	variables
9non_trainable_variables
regularization_losses
:layer_metrics
;layer_regularization_losses
`__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
8:6	@А2%simple_rnn_3/simple_rnn_cell_3/kernel
C:A
АА2/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel
2:0А2#simple_rnn_3/simple_rnn_cell_3/bias
.
<0
=1"
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
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
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
-trainable_variables
>metrics

?layers
.	variables
@non_trainable_variables
/regularization_losses
Alayer_metrics
Blayer_regularization_losses
c__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
ї
	Ctotal
	Dcount
E	variables
F	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
ъ
	Gtotal
	Hcount
I
_fn_kwargs
J	variables
K	keras_api"≥
_tf_keras_metricШ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
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
.
C0
D1"
trackable_list_wrapper
-
E	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
G0
H1"
trackable_list_wrapper
-
J	variables"
_generic_user_object
-:+d@2Adam/embedding_3/embeddings/m
&:$	А2Adam/dense_8/kernel/m
:2Adam/dense_8/bias/m
=:;	@А2,Adam/simple_rnn_3/simple_rnn_cell_3/kernel/m
H:F
АА26Adam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/m
7:5А2*Adam/simple_rnn_3/simple_rnn_cell_3/bias/m
-:+d@2Adam/embedding_3/embeddings/v
&:$	А2Adam/dense_8/kernel/v
:2Adam/dense_8/bias/v
=:;	@А2,Adam/simple_rnn_3/simple_rnn_cell_3/kernel/v
H:F
АА26Adam/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/v
7:5А2*Adam/simple_rnn_3/simple_rnn_cell_3/bias/v
о2л
H__inference_sequential_8_layer_call_and_return_conditional_losses_178481
H__inference_sequential_8_layer_call_and_return_conditional_losses_178356
H__inference_sequential_8_layer_call_and_return_conditional_losses_178131
H__inference_sequential_8_layer_call_and_return_conditional_losses_178112ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
т2п
!__inference__wrapped_model_177293…
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *9Ґ6
4К1
embedding_3_input€€€€€€€€€€€€€€€€€€
В2€
-__inference_sequential_8_layer_call_fn_178168
-__inference_sequential_8_layer_call_fn_178515
-__inference_sequential_8_layer_call_fn_178498
-__inference_sequential_8_layer_call_fn_178204ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
с2о
G__inference_embedding_3_layer_call_and_return_conditional_losses_178525Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_embedding_3_layer_call_fn_178532Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Г2А
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_178756
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_178644
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_178890
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_179002’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ч2Ф
-__inference_simple_rnn_3_layer_call_fn_178767
-__inference_simple_rnn_3_layer_call_fn_178778
-__inference_simple_rnn_3_layer_call_fn_179013
-__inference_simple_rnn_3_layer_call_fn_179024’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
н2к
C__inference_dense_8_layer_call_and_return_conditional_losses_179035Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_8_layer_call_fn_179044Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
’B“
$__inference_signature_wrapper_178231embedding_3_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
в2я
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_179061
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_179078Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ђ2©
2__inference_simple_rnn_cell_3_layer_call_fn_179106
2__inference_simple_rnn_cell_3_layer_call_fn_179092Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 ¶
!__inference__wrapped_model_177293А
 "!CҐ@
9Ґ6
4К1
embedding_3_input€€€€€€€€€€€€€€€€€€
™ "1™.
,
dense_8!К
dense_8€€€€€€€€€§
C__inference_dense_8_layer_call_and_return_conditional_losses_179035]0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ |
(__inference_dense_8_layer_call_fn_179044P0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€Љ
G__inference_embedding_3_layer_call_and_return_conditional_losses_178525q
8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€€€€€€€€€€
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€@
Ъ Ф
,__inference_embedding_3_layer_call_fn_178532d
8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€€€€€€€€€€
™ "%К"€€€€€€€€€€€€€€€€€€@»
H__inference_sequential_8_layer_call_and_return_conditional_losses_178112|
 "!KҐH
AҐ>
4К1
embedding_3_input€€€€€€€€€€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ »
H__inference_sequential_8_layer_call_and_return_conditional_losses_178131|
 "!KҐH
AҐ>
4К1
embedding_3_input€€€€€€€€€€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ љ
H__inference_sequential_8_layer_call_and_return_conditional_losses_178356q
 "!@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ љ
H__inference_sequential_8_layer_call_and_return_conditional_losses_178481q
 "!@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ †
-__inference_sequential_8_layer_call_fn_178168o
 "!KҐH
AҐ>
4К1
embedding_3_input€€€€€€€€€€€€€€€€€€
p

 
™ "К€€€€€€€€€†
-__inference_sequential_8_layer_call_fn_178204o
 "!KҐH
AҐ>
4К1
embedding_3_input€€€€€€€€€€€€€€€€€€
p 

 
™ "К€€€€€€€€€Х
-__inference_sequential_8_layer_call_fn_178498d
 "!@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "К€€€€€€€€€Х
-__inference_sequential_8_layer_call_fn_178515d
 "!@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "К€€€€€€€€€Њ
$__inference_signature_wrapper_178231Х
 "!XҐU
Ґ 
N™K
I
embedding_3_input4К1
embedding_3_input€€€€€€€€€€€€€€€€€€"1™.
,
dense_8!К
dense_8€€€€€€€€€ 
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_178644~ "!OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€@

 
p

 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ  
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_178756~ "!OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€@

 
p 

 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ √
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_178890w "!HҐE
>Ґ;
-К*
inputs€€€€€€€€€€€€€€€€€€@

 
p

 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ √
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_179002w "!HҐE
>Ґ;
-К*
inputs€€€€€€€€€€€€€€€€€€@

 
p 

 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ Ґ
-__inference_simple_rnn_3_layer_call_fn_178767q "!OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€@

 
p

 
™ "К€€€€€€€€€АҐ
-__inference_simple_rnn_3_layer_call_fn_178778q "!OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€@

 
p 

 
™ "К€€€€€€€€€АЫ
-__inference_simple_rnn_3_layer_call_fn_179013j "!HҐE
>Ґ;
-К*
inputs€€€€€€€€€€€€€€€€€€@

 
p

 
™ "К€€€€€€€€€АЫ
-__inference_simple_rnn_3_layer_call_fn_179024j "!HҐE
>Ґ;
-К*
inputs€€€€€€€€€€€€€€€€€€@

 
p 

 
™ "К€€€€€€€€€АМ
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_179061Ї "!]ҐZ
SҐP
 К
inputs€€€€€€€€€@
(Ґ%
#К 
states/0€€€€€€€€€А
p
™ "TҐQ
JҐG
К
0/0€€€€€€€€€А
%Ъ"
 К
0/1/0€€€€€€€€€А
Ъ М
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_179078Ї "!]ҐZ
SҐP
 К
inputs€€€€€€€€€@
(Ґ%
#К 
states/0€€€€€€€€€А
p 
™ "TҐQ
JҐG
К
0/0€€€€€€€€€А
%Ъ"
 К
0/1/0€€€€€€€€€А
Ъ г
2__inference_simple_rnn_cell_3_layer_call_fn_179092ђ "!]ҐZ
SҐP
 К
inputs€€€€€€€€€@
(Ґ%
#К 
states/0€€€€€€€€€А
p
™ "FҐC
К
0€€€€€€€€€А
#Ъ 
К
1/0€€€€€€€€€Аг
2__inference_simple_rnn_cell_3_layer_call_fn_179106ђ "!]ҐZ
SҐP
 К
inputs€€€€€€€€€@
(Ґ%
#К 
states/0€€€€€€€€€А
p 
™ "FҐC
К
0€€€€€€€€€А
#Ъ 
К
1/0€€€€€€€€€А