��
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
�
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
�
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%��8"
data_formatstringNHWC"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
D
Relu
features"T
activations"T"
Ttype:
2	
q
ResizeBilinear
images"T
size
resized_images"
Ttype:
2
	"
align_cornersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
H
ShardedFilename
basename	
shard

num_shards
filename
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �"serve*1.8.02b'v1.8.0-0-g93bc2e2072'��
�
PlaceholderPlaceholder*
dtype0*4
_output_shapes"
 :������������������*)
shape :������������������
P
ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�

ExpandDims
ExpandDimsPlaceholderExpandDims/dim*
T0*

Tdim0*8
_output_shapes&
$:"������������������
T
Generator/sub/yConst*
valueB
 * ��D*
dtype0*
_output_shapes
: 
t
Generator/subSub
ExpandDimsGenerator/sub/y*
T0*8
_output_shapes&
$:"������������������
T
Generator/mul/yConst*
valueB
 *���:*
dtype0*
_output_shapes
: 
w
Generator/mulMulGenerator/subGenerator/mul/y*
T0*8
_output_shapes&
$:"������������������
�
DGenerator/Gen_down0/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:*4
_class*
(&loc:@Generator/Gen_down0/conv1/filters
�
CGenerator/Gen_down0/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down0/conv1/filters
�
EGenerator/Gen_down0/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *���=*
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down0/conv1/filters
�
NGenerator/Gen_down0/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDGenerator/Gen_down0/conv1/filters/Initializer/truncated_normal/shape*
seed2 *4
_class*
(&loc:@Generator/Gen_down0/conv1/filters*
T0*&
_output_shapes
: *
dtype0*

seed 
�
BGenerator/Gen_down0/conv1/filters/Initializer/truncated_normal/mulMulNGenerator/Gen_down0/conv1/filters/Initializer/truncated_normal/TruncatedNormalEGenerator/Gen_down0/conv1/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down0/conv1/filters
�
>Generator/Gen_down0/conv1/filters/Initializer/truncated_normalAddBGenerator/Gen_down0/conv1/filters/Initializer/truncated_normal/mulCGenerator/Gen_down0/conv1/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down0/conv1/filters
�
!Generator/Gen_down0/conv1/filters
VariableV2*
shared_name *4
_class*
(&loc:@Generator/Gen_down0/conv1/filters*&
_output_shapes
: *
dtype0*
shape: *
	container 
�
(Generator/Gen_down0/conv1/filters/AssignAssign!Generator/Gen_down0/conv1/filters>Generator/Gen_down0/conv1/filters/Initializer/truncated_normal*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down0/conv1/filters
�
&Generator/Gen_down0/conv1/filters/readIdentity!Generator/Gen_down0/conv1/filters*
T0*&
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down0/conv1/filters
�
2Generator/Gen_down0/conv1/biases/Initializer/ConstConst*
valueB *    *
dtype0*
_output_shapes
: *3
_class)
'%loc:@Generator/Gen_down0/conv1/biases
�
 Generator/Gen_down0/conv1/biases
VariableV2*
shared_name *3
_class)
'%loc:@Generator/Gen_down0/conv1/biases*
_output_shapes
: *
dtype0*
shape: *
	container 
�
'Generator/Gen_down0/conv1/biases/AssignAssign Generator/Gen_down0/conv1/biases2Generator/Gen_down0/conv1/biases/Initializer/Const*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down0/conv1/biases
�
%Generator/Gen_down0/conv1/biases/readIdentity Generator/Gen_down0/conv1/biases*
T0*
_output_shapes
: *3
_class)
'%loc:@Generator/Gen_down0/conv1/biases
�
Generator/Conv2DConv2DGenerator/mul&Generator/Gen_down0/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*8
_output_shapes&
$:"������������������ *
use_cudnn_on_gpu(
�
Generator/BiasAddBiasAddGenerator/Conv2D%Generator/Gen_down0/conv1/biases/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"������������������ 
�
4Generator/batch_normalization/gamma/Initializer/onesConst*
valueB *  �?*
dtype0*
_output_shapes
: *6
_class,
*(loc:@Generator/batch_normalization/gamma
�
#Generator/batch_normalization/gamma
VariableV2*
shared_name *6
_class,
*(loc:@Generator/batch_normalization/gamma*
_output_shapes
: *
dtype0*
shape: *
	container 
�
*Generator/batch_normalization/gamma/AssignAssign#Generator/batch_normalization/gamma4Generator/batch_normalization/gamma/Initializer/ones*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*6
_class,
*(loc:@Generator/batch_normalization/gamma
�
(Generator/batch_normalization/gamma/readIdentity#Generator/batch_normalization/gamma*
T0*
_output_shapes
: *6
_class,
*(loc:@Generator/batch_normalization/gamma
�
4Generator/batch_normalization/beta/Initializer/zerosConst*
valueB *    *
dtype0*
_output_shapes
: *5
_class+
)'loc:@Generator/batch_normalization/beta
�
"Generator/batch_normalization/beta
VariableV2*
shared_name *5
_class+
)'loc:@Generator/batch_normalization/beta*
_output_shapes
: *
dtype0*
shape: *
	container 
�
)Generator/batch_normalization/beta/AssignAssign"Generator/batch_normalization/beta4Generator/batch_normalization/beta/Initializer/zeros*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*5
_class+
)'loc:@Generator/batch_normalization/beta
�
'Generator/batch_normalization/beta/readIdentity"Generator/batch_normalization/beta*
T0*
_output_shapes
: *5
_class+
)'loc:@Generator/batch_normalization/beta
�
;Generator/batch_normalization/moving_mean/Initializer/zerosConst*
valueB *    *
dtype0*
_output_shapes
: *<
_class2
0.loc:@Generator/batch_normalization/moving_mean
�
)Generator/batch_normalization/moving_mean
VariableV2*
shared_name *<
_class2
0.loc:@Generator/batch_normalization/moving_mean*
_output_shapes
: *
dtype0*
shape: *
	container 
�
0Generator/batch_normalization/moving_mean/AssignAssign)Generator/batch_normalization/moving_mean;Generator/batch_normalization/moving_mean/Initializer/zeros*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*<
_class2
0.loc:@Generator/batch_normalization/moving_mean
�
.Generator/batch_normalization/moving_mean/readIdentity)Generator/batch_normalization/moving_mean*
T0*
_output_shapes
: *<
_class2
0.loc:@Generator/batch_normalization/moving_mean
�
>Generator/batch_normalization/moving_variance/Initializer/onesConst*
valueB *  �?*
dtype0*
_output_shapes
: *@
_class6
42loc:@Generator/batch_normalization/moving_variance
�
-Generator/batch_normalization/moving_variance
VariableV2*
shared_name *@
_class6
42loc:@Generator/batch_normalization/moving_variance*
_output_shapes
: *
dtype0*
shape: *
	container 
�
4Generator/batch_normalization/moving_variance/AssignAssign-Generator/batch_normalization/moving_variance>Generator/batch_normalization/moving_variance/Initializer/ones*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*@
_class6
42loc:@Generator/batch_normalization/moving_variance
�
2Generator/batch_normalization/moving_variance/readIdentity-Generator/batch_normalization/moving_variance*
T0*
_output_shapes
: *@
_class6
42loc:@Generator/batch_normalization/moving_variance
�
,Generator/batch_normalization/FusedBatchNormFusedBatchNormGenerator/BiasAdd(Generator/batch_normalization/gamma/read'Generator/batch_normalization/beta/read.Generator/batch_normalization/moving_mean/read2Generator/batch_normalization/moving_variance/read*
is_training( *
T0*
data_formatNHWC*P
_output_shapes>
<:"������������������ : : : : *
epsilon%o�:
h
#Generator/batch_normalization/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Generator/ReluRelu,Generator/batch_normalization/FusedBatchNorm*
T0*8
_output_shapes&
$:"������������������ 
�
Generator/NegNeg,Generator/batch_normalization/FusedBatchNorm*
T0*8
_output_shapes&
$:"������������������ 
j
Generator/Relu_1ReluGenerator/Neg*
T0*8
_output_shapes&
$:"������������������ 
V
Generator/mul_1/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
~
Generator/mul_1MulGenerator/mul_1/xGenerator/Relu_1*
T0*8
_output_shapes&
$:"������������������ 
z
Generator/sub_1SubGenerator/ReluGenerator/mul_1*
T0*8
_output_shapes&
$:"������������������ 
�
DGenerator/Gen_down0/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"              *
dtype0*
_output_shapes
:*4
_class*
(&loc:@Generator/Gen_down0/conv2/filters
�
CGenerator/Gen_down0/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down0/conv2/filters
�
EGenerator/Gen_down0/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *���=*
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down0/conv2/filters
�
NGenerator/Gen_down0/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDGenerator/Gen_down0/conv2/filters/Initializer/truncated_normal/shape*
seed2 *4
_class*
(&loc:@Generator/Gen_down0/conv2/filters*
T0*&
_output_shapes
:  *
dtype0*

seed 
�
BGenerator/Gen_down0/conv2/filters/Initializer/truncated_normal/mulMulNGenerator/Gen_down0/conv2/filters/Initializer/truncated_normal/TruncatedNormalEGenerator/Gen_down0/conv2/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
:  *4
_class*
(&loc:@Generator/Gen_down0/conv2/filters
�
>Generator/Gen_down0/conv2/filters/Initializer/truncated_normalAddBGenerator/Gen_down0/conv2/filters/Initializer/truncated_normal/mulCGenerator/Gen_down0/conv2/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
:  *4
_class*
(&loc:@Generator/Gen_down0/conv2/filters
�
!Generator/Gen_down0/conv2/filters
VariableV2*
shared_name *4
_class*
(&loc:@Generator/Gen_down0/conv2/filters*&
_output_shapes
:  *
dtype0*
shape:  *
	container 
�
(Generator/Gen_down0/conv2/filters/AssignAssign!Generator/Gen_down0/conv2/filters>Generator/Gen_down0/conv2/filters/Initializer/truncated_normal*
T0*&
_output_shapes
:  *
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down0/conv2/filters
�
&Generator/Gen_down0/conv2/filters/readIdentity!Generator/Gen_down0/conv2/filters*
T0*&
_output_shapes
:  *4
_class*
(&loc:@Generator/Gen_down0/conv2/filters
�
2Generator/Gen_down0/conv2/biases/Initializer/ConstConst*
valueB *    *
dtype0*
_output_shapes
: *3
_class)
'%loc:@Generator/Gen_down0/conv2/biases
�
 Generator/Gen_down0/conv2/biases
VariableV2*
shared_name *3
_class)
'%loc:@Generator/Gen_down0/conv2/biases*
_output_shapes
: *
dtype0*
shape: *
	container 
�
'Generator/Gen_down0/conv2/biases/AssignAssign Generator/Gen_down0/conv2/biases2Generator/Gen_down0/conv2/biases/Initializer/Const*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down0/conv2/biases
�
%Generator/Gen_down0/conv2/biases/readIdentity Generator/Gen_down0/conv2/biases*
T0*
_output_shapes
: *3
_class)
'%loc:@Generator/Gen_down0/conv2/biases
�
Generator/Conv2D_1Conv2DGenerator/sub_1&Generator/Gen_down0/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*8
_output_shapes&
$:"������������������ *
use_cudnn_on_gpu(
�
Generator/BiasAdd_1BiasAddGenerator/Conv2D_1%Generator/Gen_down0/conv2/biases/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"������������������ 
�
6Generator/batch_normalization_1/gamma/Initializer/onesConst*
valueB *  �?*
dtype0*
_output_shapes
: *8
_class.
,*loc:@Generator/batch_normalization_1/gamma
�
%Generator/batch_normalization_1/gamma
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_1/gamma*
_output_shapes
: *
dtype0*
shape: *
	container 
�
,Generator/batch_normalization_1/gamma/AssignAssign%Generator/batch_normalization_1/gamma6Generator/batch_normalization_1/gamma/Initializer/ones*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_1/gamma
�
*Generator/batch_normalization_1/gamma/readIdentity%Generator/batch_normalization_1/gamma*
T0*
_output_shapes
: *8
_class.
,*loc:@Generator/batch_normalization_1/gamma
�
6Generator/batch_normalization_1/beta/Initializer/zerosConst*
valueB *    *
dtype0*
_output_shapes
: *7
_class-
+)loc:@Generator/batch_normalization_1/beta
�
$Generator/batch_normalization_1/beta
VariableV2*
shared_name *7
_class-
+)loc:@Generator/batch_normalization_1/beta*
_output_shapes
: *
dtype0*
shape: *
	container 
�
+Generator/batch_normalization_1/beta/AssignAssign$Generator/batch_normalization_1/beta6Generator/batch_normalization_1/beta/Initializer/zeros*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_1/beta
�
)Generator/batch_normalization_1/beta/readIdentity$Generator/batch_normalization_1/beta*
T0*
_output_shapes
: *7
_class-
+)loc:@Generator/batch_normalization_1/beta
�
=Generator/batch_normalization_1/moving_mean/Initializer/zerosConst*
valueB *    *
dtype0*
_output_shapes
: *>
_class4
20loc:@Generator/batch_normalization_1/moving_mean
�
+Generator/batch_normalization_1/moving_mean
VariableV2*
shared_name *>
_class4
20loc:@Generator/batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0*
shape: *
	container 
�
2Generator/batch_normalization_1/moving_mean/AssignAssign+Generator/batch_normalization_1/moving_mean=Generator/batch_normalization_1/moving_mean/Initializer/zeros*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_1/moving_mean
�
0Generator/batch_normalization_1/moving_mean/readIdentity+Generator/batch_normalization_1/moving_mean*
T0*
_output_shapes
: *>
_class4
20loc:@Generator/batch_normalization_1/moving_mean
�
@Generator/batch_normalization_1/moving_variance/Initializer/onesConst*
valueB *  �?*
dtype0*
_output_shapes
: *B
_class8
64loc:@Generator/batch_normalization_1/moving_variance
�
/Generator/batch_normalization_1/moving_variance
VariableV2*
shared_name *B
_class8
64loc:@Generator/batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0*
shape: *
	container 
�
6Generator/batch_normalization_1/moving_variance/AssignAssign/Generator/batch_normalization_1/moving_variance@Generator/batch_normalization_1/moving_variance/Initializer/ones*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_1/moving_variance
�
4Generator/batch_normalization_1/moving_variance/readIdentity/Generator/batch_normalization_1/moving_variance*
T0*
_output_shapes
: *B
_class8
64loc:@Generator/batch_normalization_1/moving_variance
�
.Generator/batch_normalization_1/FusedBatchNormFusedBatchNormGenerator/BiasAdd_1*Generator/batch_normalization_1/gamma/read)Generator/batch_normalization_1/beta/read0Generator/batch_normalization_1/moving_mean/read4Generator/batch_normalization_1/moving_variance/read*
is_training( *
T0*
data_formatNHWC*P
_output_shapes>
<:"������������������ : : : : *
epsilon%o�:
j
%Generator/batch_normalization_1/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Generator/Relu_2Relu.Generator/batch_normalization_1/FusedBatchNorm*
T0*8
_output_shapes&
$:"������������������ 
�
Generator/Neg_1Neg.Generator/batch_normalization_1/FusedBatchNorm*
T0*8
_output_shapes&
$:"������������������ 
l
Generator/Relu_3ReluGenerator/Neg_1*
T0*8
_output_shapes&
$:"������������������ 
V
Generator/mul_2/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
~
Generator/mul_2MulGenerator/mul_2/xGenerator/Relu_3*
T0*8
_output_shapes&
$:"������������������ 
|
Generator/sub_2SubGenerator/Relu_2Generator/mul_2*
T0*8
_output_shapes&
$:"������������������ 
�
DGenerator/Gen_down0/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"          @   *
dtype0*
_output_shapes
:*4
_class*
(&loc:@Generator/Gen_down0/conv3/filters
�
CGenerator/Gen_down0/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down0/conv3/filters
�
EGenerator/Gen_down0/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *�[q=*
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down0/conv3/filters
�
NGenerator/Gen_down0/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDGenerator/Gen_down0/conv3/filters/Initializer/truncated_normal/shape*
seed2 *4
_class*
(&loc:@Generator/Gen_down0/conv3/filters*
T0*&
_output_shapes
: @*
dtype0*

seed 
�
BGenerator/Gen_down0/conv3/filters/Initializer/truncated_normal/mulMulNGenerator/Gen_down0/conv3/filters/Initializer/truncated_normal/TruncatedNormalEGenerator/Gen_down0/conv3/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
: @*4
_class*
(&loc:@Generator/Gen_down0/conv3/filters
�
>Generator/Gen_down0/conv3/filters/Initializer/truncated_normalAddBGenerator/Gen_down0/conv3/filters/Initializer/truncated_normal/mulCGenerator/Gen_down0/conv3/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
: @*4
_class*
(&loc:@Generator/Gen_down0/conv3/filters
�
!Generator/Gen_down0/conv3/filters
VariableV2*
shared_name *4
_class*
(&loc:@Generator/Gen_down0/conv3/filters*&
_output_shapes
: @*
dtype0*
shape: @*
	container 
�
(Generator/Gen_down0/conv3/filters/AssignAssign!Generator/Gen_down0/conv3/filters>Generator/Gen_down0/conv3/filters/Initializer/truncated_normal*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down0/conv3/filters
�
&Generator/Gen_down0/conv3/filters/readIdentity!Generator/Gen_down0/conv3/filters*
T0*&
_output_shapes
: @*4
_class*
(&loc:@Generator/Gen_down0/conv3/filters
�
2Generator/Gen_down0/conv3/biases/Initializer/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@*3
_class)
'%loc:@Generator/Gen_down0/conv3/biases
�
 Generator/Gen_down0/conv3/biases
VariableV2*
shared_name *3
_class)
'%loc:@Generator/Gen_down0/conv3/biases*
_output_shapes
:@*
dtype0*
shape:@*
	container 
�
'Generator/Gen_down0/conv3/biases/AssignAssign Generator/Gen_down0/conv3/biases2Generator/Gen_down0/conv3/biases/Initializer/Const*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down0/conv3/biases
�
%Generator/Gen_down0/conv3/biases/readIdentity Generator/Gen_down0/conv3/biases*
T0*
_output_shapes
:@*3
_class)
'%loc:@Generator/Gen_down0/conv3/biases
�
Generator/Conv2D_2Conv2DGenerator/sub_2&Generator/Gen_down0/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*8
_output_shapes&
$:"������������������@*
use_cudnn_on_gpu(
�
Generator/BiasAdd_2BiasAddGenerator/Conv2D_2%Generator/Gen_down0/conv3/biases/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"������������������@
�
6Generator/batch_normalization_2/gamma/Initializer/onesConst*
valueB@*  �?*
dtype0*
_output_shapes
:@*8
_class.
,*loc:@Generator/batch_normalization_2/gamma
�
%Generator/batch_normalization_2/gamma
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_2/gamma*
_output_shapes
:@*
dtype0*
shape:@*
	container 
�
,Generator/batch_normalization_2/gamma/AssignAssign%Generator/batch_normalization_2/gamma6Generator/batch_normalization_2/gamma/Initializer/ones*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_2/gamma
�
*Generator/batch_normalization_2/gamma/readIdentity%Generator/batch_normalization_2/gamma*
T0*
_output_shapes
:@*8
_class.
,*loc:@Generator/batch_normalization_2/gamma
�
6Generator/batch_normalization_2/beta/Initializer/zerosConst*
valueB@*    *
dtype0*
_output_shapes
:@*7
_class-
+)loc:@Generator/batch_normalization_2/beta
�
$Generator/batch_normalization_2/beta
VariableV2*
shared_name *7
_class-
+)loc:@Generator/batch_normalization_2/beta*
_output_shapes
:@*
dtype0*
shape:@*
	container 
�
+Generator/batch_normalization_2/beta/AssignAssign$Generator/batch_normalization_2/beta6Generator/batch_normalization_2/beta/Initializer/zeros*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_2/beta
�
)Generator/batch_normalization_2/beta/readIdentity$Generator/batch_normalization_2/beta*
T0*
_output_shapes
:@*7
_class-
+)loc:@Generator/batch_normalization_2/beta
�
=Generator/batch_normalization_2/moving_mean/Initializer/zerosConst*
valueB@*    *
dtype0*
_output_shapes
:@*>
_class4
20loc:@Generator/batch_normalization_2/moving_mean
�
+Generator/batch_normalization_2/moving_mean
VariableV2*
shared_name *>
_class4
20loc:@Generator/batch_normalization_2/moving_mean*
_output_shapes
:@*
dtype0*
shape:@*
	container 
�
2Generator/batch_normalization_2/moving_mean/AssignAssign+Generator/batch_normalization_2/moving_mean=Generator/batch_normalization_2/moving_mean/Initializer/zeros*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_2/moving_mean
�
0Generator/batch_normalization_2/moving_mean/readIdentity+Generator/batch_normalization_2/moving_mean*
T0*
_output_shapes
:@*>
_class4
20loc:@Generator/batch_normalization_2/moving_mean
�
@Generator/batch_normalization_2/moving_variance/Initializer/onesConst*
valueB@*  �?*
dtype0*
_output_shapes
:@*B
_class8
64loc:@Generator/batch_normalization_2/moving_variance
�
/Generator/batch_normalization_2/moving_variance
VariableV2*
shared_name *B
_class8
64loc:@Generator/batch_normalization_2/moving_variance*
_output_shapes
:@*
dtype0*
shape:@*
	container 
�
6Generator/batch_normalization_2/moving_variance/AssignAssign/Generator/batch_normalization_2/moving_variance@Generator/batch_normalization_2/moving_variance/Initializer/ones*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_2/moving_variance
�
4Generator/batch_normalization_2/moving_variance/readIdentity/Generator/batch_normalization_2/moving_variance*
T0*
_output_shapes
:@*B
_class8
64loc:@Generator/batch_normalization_2/moving_variance
�
.Generator/batch_normalization_2/FusedBatchNormFusedBatchNormGenerator/BiasAdd_2*Generator/batch_normalization_2/gamma/read)Generator/batch_normalization_2/beta/read0Generator/batch_normalization_2/moving_mean/read4Generator/batch_normalization_2/moving_variance/read*
is_training( *
T0*
data_formatNHWC*P
_output_shapes>
<:"������������������@:@:@:@:@*
epsilon%o�:
j
%Generator/batch_normalization_2/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Generator/Relu_4Relu.Generator/batch_normalization_2/FusedBatchNorm*
T0*8
_output_shapes&
$:"������������������@
�
Generator/Neg_2Neg.Generator/batch_normalization_2/FusedBatchNorm*
T0*8
_output_shapes&
$:"������������������@
l
Generator/Relu_5ReluGenerator/Neg_2*
T0*8
_output_shapes&
$:"������������������@
V
Generator/mul_3/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
~
Generator/mul_3MulGenerator/mul_3/xGenerator/Relu_5*
T0*8
_output_shapes&
$:"������������������@
|
Generator/sub_3SubGenerator/Relu_4Generator/mul_3*
T0*8
_output_shapes&
$:"������������������@
�
Generator/Pad/paddingsConst*9
value0B."                             ?   *
dtype0*
_output_shapes

:
�
Generator/PadPadGenerator/mulGenerator/Pad/paddings*
T0*8
_output_shapes&
$:"������������������@*
	Tpaddings0
w
Generator/addAddGenerator/sub_3Generator/Pad*
T0*8
_output_shapes&
$:"������������������@
�
Generator/AvgPoolAvgPoolGenerator/add*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*8
_output_shapes&
$:"������������������@
�
DGenerator/Gen_down1/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"      @   `   *
dtype0*
_output_shapes
:*4
_class*
(&loc:@Generator/Gen_down1/conv1/filters
�
CGenerator/Gen_down1/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down1/conv1/filters
�
EGenerator/Gen_down1/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *�E=*
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down1/conv1/filters
�
NGenerator/Gen_down1/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDGenerator/Gen_down1/conv1/filters/Initializer/truncated_normal/shape*
seed2 *4
_class*
(&loc:@Generator/Gen_down1/conv1/filters*
T0*&
_output_shapes
:@`*
dtype0*

seed 
�
BGenerator/Gen_down1/conv1/filters/Initializer/truncated_normal/mulMulNGenerator/Gen_down1/conv1/filters/Initializer/truncated_normal/TruncatedNormalEGenerator/Gen_down1/conv1/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
:@`*4
_class*
(&loc:@Generator/Gen_down1/conv1/filters
�
>Generator/Gen_down1/conv1/filters/Initializer/truncated_normalAddBGenerator/Gen_down1/conv1/filters/Initializer/truncated_normal/mulCGenerator/Gen_down1/conv1/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
:@`*4
_class*
(&loc:@Generator/Gen_down1/conv1/filters
�
!Generator/Gen_down1/conv1/filters
VariableV2*
shared_name *4
_class*
(&loc:@Generator/Gen_down1/conv1/filters*&
_output_shapes
:@`*
dtype0*
shape:@`*
	container 
�
(Generator/Gen_down1/conv1/filters/AssignAssign!Generator/Gen_down1/conv1/filters>Generator/Gen_down1/conv1/filters/Initializer/truncated_normal*
T0*&
_output_shapes
:@`*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down1/conv1/filters
�
&Generator/Gen_down1/conv1/filters/readIdentity!Generator/Gen_down1/conv1/filters*
T0*&
_output_shapes
:@`*4
_class*
(&loc:@Generator/Gen_down1/conv1/filters
�
2Generator/Gen_down1/conv1/biases/Initializer/ConstConst*
valueB`*    *
dtype0*
_output_shapes
:`*3
_class)
'%loc:@Generator/Gen_down1/conv1/biases
�
 Generator/Gen_down1/conv1/biases
VariableV2*
shared_name *3
_class)
'%loc:@Generator/Gen_down1/conv1/biases*
_output_shapes
:`*
dtype0*
shape:`*
	container 
�
'Generator/Gen_down1/conv1/biases/AssignAssign Generator/Gen_down1/conv1/biases2Generator/Gen_down1/conv1/biases/Initializer/Const*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down1/conv1/biases
�
%Generator/Gen_down1/conv1/biases/readIdentity Generator/Gen_down1/conv1/biases*
T0*
_output_shapes
:`*3
_class)
'%loc:@Generator/Gen_down1/conv1/biases
�
Generator/Conv2D_3Conv2DGenerator/AvgPool&Generator/Gen_down1/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*8
_output_shapes&
$:"������������������`*
use_cudnn_on_gpu(
�
Generator/BiasAdd_3BiasAddGenerator/Conv2D_3%Generator/Gen_down1/conv1/biases/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"������������������`
�
6Generator/batch_normalization_3/gamma/Initializer/onesConst*
valueB`*  �?*
dtype0*
_output_shapes
:`*8
_class.
,*loc:@Generator/batch_normalization_3/gamma
�
%Generator/batch_normalization_3/gamma
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_3/gamma*
_output_shapes
:`*
dtype0*
shape:`*
	container 
�
,Generator/batch_normalization_3/gamma/AssignAssign%Generator/batch_normalization_3/gamma6Generator/batch_normalization_3/gamma/Initializer/ones*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_3/gamma
�
*Generator/batch_normalization_3/gamma/readIdentity%Generator/batch_normalization_3/gamma*
T0*
_output_shapes
:`*8
_class.
,*loc:@Generator/batch_normalization_3/gamma
�
6Generator/batch_normalization_3/beta/Initializer/zerosConst*
valueB`*    *
dtype0*
_output_shapes
:`*7
_class-
+)loc:@Generator/batch_normalization_3/beta
�
$Generator/batch_normalization_3/beta
VariableV2*
shared_name *7
_class-
+)loc:@Generator/batch_normalization_3/beta*
_output_shapes
:`*
dtype0*
shape:`*
	container 
�
+Generator/batch_normalization_3/beta/AssignAssign$Generator/batch_normalization_3/beta6Generator/batch_normalization_3/beta/Initializer/zeros*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_3/beta
�
)Generator/batch_normalization_3/beta/readIdentity$Generator/batch_normalization_3/beta*
T0*
_output_shapes
:`*7
_class-
+)loc:@Generator/batch_normalization_3/beta
�
=Generator/batch_normalization_3/moving_mean/Initializer/zerosConst*
valueB`*    *
dtype0*
_output_shapes
:`*>
_class4
20loc:@Generator/batch_normalization_3/moving_mean
�
+Generator/batch_normalization_3/moving_mean
VariableV2*
shared_name *>
_class4
20loc:@Generator/batch_normalization_3/moving_mean*
_output_shapes
:`*
dtype0*
shape:`*
	container 
�
2Generator/batch_normalization_3/moving_mean/AssignAssign+Generator/batch_normalization_3/moving_mean=Generator/batch_normalization_3/moving_mean/Initializer/zeros*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_3/moving_mean
�
0Generator/batch_normalization_3/moving_mean/readIdentity+Generator/batch_normalization_3/moving_mean*
T0*
_output_shapes
:`*>
_class4
20loc:@Generator/batch_normalization_3/moving_mean
�
@Generator/batch_normalization_3/moving_variance/Initializer/onesConst*
valueB`*  �?*
dtype0*
_output_shapes
:`*B
_class8
64loc:@Generator/batch_normalization_3/moving_variance
�
/Generator/batch_normalization_3/moving_variance
VariableV2*
shared_name *B
_class8
64loc:@Generator/batch_normalization_3/moving_variance*
_output_shapes
:`*
dtype0*
shape:`*
	container 
�
6Generator/batch_normalization_3/moving_variance/AssignAssign/Generator/batch_normalization_3/moving_variance@Generator/batch_normalization_3/moving_variance/Initializer/ones*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_3/moving_variance
�
4Generator/batch_normalization_3/moving_variance/readIdentity/Generator/batch_normalization_3/moving_variance*
T0*
_output_shapes
:`*B
_class8
64loc:@Generator/batch_normalization_3/moving_variance
�
.Generator/batch_normalization_3/FusedBatchNormFusedBatchNormGenerator/BiasAdd_3*Generator/batch_normalization_3/gamma/read)Generator/batch_normalization_3/beta/read0Generator/batch_normalization_3/moving_mean/read4Generator/batch_normalization_3/moving_variance/read*
is_training( *
T0*
data_formatNHWC*P
_output_shapes>
<:"������������������`:`:`:`:`*
epsilon%o�:
j
%Generator/batch_normalization_3/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Generator/Relu_6Relu.Generator/batch_normalization_3/FusedBatchNorm*
T0*8
_output_shapes&
$:"������������������`
�
Generator/Neg_3Neg.Generator/batch_normalization_3/FusedBatchNorm*
T0*8
_output_shapes&
$:"������������������`
l
Generator/Relu_7ReluGenerator/Neg_3*
T0*8
_output_shapes&
$:"������������������`
V
Generator/mul_4/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
~
Generator/mul_4MulGenerator/mul_4/xGenerator/Relu_7*
T0*8
_output_shapes&
$:"������������������`
|
Generator/sub_4SubGenerator/Relu_6Generator/mul_4*
T0*8
_output_shapes&
$:"������������������`
�
DGenerator/Gen_down1/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:*4
_class*
(&loc:@Generator/Gen_down1/conv2/filters
�
CGenerator/Gen_down1/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down1/conv2/filters
�
EGenerator/Gen_down1/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *�E=*
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down1/conv2/filters
�
NGenerator/Gen_down1/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDGenerator/Gen_down1/conv2/filters/Initializer/truncated_normal/shape*
seed2 *4
_class*
(&loc:@Generator/Gen_down1/conv2/filters*
T0*&
_output_shapes
:``*
dtype0*

seed 
�
BGenerator/Gen_down1/conv2/filters/Initializer/truncated_normal/mulMulNGenerator/Gen_down1/conv2/filters/Initializer/truncated_normal/TruncatedNormalEGenerator/Gen_down1/conv2/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
:``*4
_class*
(&loc:@Generator/Gen_down1/conv2/filters
�
>Generator/Gen_down1/conv2/filters/Initializer/truncated_normalAddBGenerator/Gen_down1/conv2/filters/Initializer/truncated_normal/mulCGenerator/Gen_down1/conv2/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
:``*4
_class*
(&loc:@Generator/Gen_down1/conv2/filters
�
!Generator/Gen_down1/conv2/filters
VariableV2*
shared_name *4
_class*
(&loc:@Generator/Gen_down1/conv2/filters*&
_output_shapes
:``*
dtype0*
shape:``*
	container 
�
(Generator/Gen_down1/conv2/filters/AssignAssign!Generator/Gen_down1/conv2/filters>Generator/Gen_down1/conv2/filters/Initializer/truncated_normal*
T0*&
_output_shapes
:``*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down1/conv2/filters
�
&Generator/Gen_down1/conv2/filters/readIdentity!Generator/Gen_down1/conv2/filters*
T0*&
_output_shapes
:``*4
_class*
(&loc:@Generator/Gen_down1/conv2/filters
�
2Generator/Gen_down1/conv2/biases/Initializer/ConstConst*
valueB`*    *
dtype0*
_output_shapes
:`*3
_class)
'%loc:@Generator/Gen_down1/conv2/biases
�
 Generator/Gen_down1/conv2/biases
VariableV2*
shared_name *3
_class)
'%loc:@Generator/Gen_down1/conv2/biases*
_output_shapes
:`*
dtype0*
shape:`*
	container 
�
'Generator/Gen_down1/conv2/biases/AssignAssign Generator/Gen_down1/conv2/biases2Generator/Gen_down1/conv2/biases/Initializer/Const*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down1/conv2/biases
�
%Generator/Gen_down1/conv2/biases/readIdentity Generator/Gen_down1/conv2/biases*
T0*
_output_shapes
:`*3
_class)
'%loc:@Generator/Gen_down1/conv2/biases
�
Generator/Conv2D_4Conv2DGenerator/sub_4&Generator/Gen_down1/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*8
_output_shapes&
$:"������������������`*
use_cudnn_on_gpu(
�
Generator/BiasAdd_4BiasAddGenerator/Conv2D_4%Generator/Gen_down1/conv2/biases/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"������������������`
�
6Generator/batch_normalization_4/gamma/Initializer/onesConst*
valueB`*  �?*
dtype0*
_output_shapes
:`*8
_class.
,*loc:@Generator/batch_normalization_4/gamma
�
%Generator/batch_normalization_4/gamma
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_4/gamma*
_output_shapes
:`*
dtype0*
shape:`*
	container 
�
,Generator/batch_normalization_4/gamma/AssignAssign%Generator/batch_normalization_4/gamma6Generator/batch_normalization_4/gamma/Initializer/ones*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_4/gamma
�
*Generator/batch_normalization_4/gamma/readIdentity%Generator/batch_normalization_4/gamma*
T0*
_output_shapes
:`*8
_class.
,*loc:@Generator/batch_normalization_4/gamma
�
6Generator/batch_normalization_4/beta/Initializer/zerosConst*
valueB`*    *
dtype0*
_output_shapes
:`*7
_class-
+)loc:@Generator/batch_normalization_4/beta
�
$Generator/batch_normalization_4/beta
VariableV2*
shared_name *7
_class-
+)loc:@Generator/batch_normalization_4/beta*
_output_shapes
:`*
dtype0*
shape:`*
	container 
�
+Generator/batch_normalization_4/beta/AssignAssign$Generator/batch_normalization_4/beta6Generator/batch_normalization_4/beta/Initializer/zeros*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_4/beta
�
)Generator/batch_normalization_4/beta/readIdentity$Generator/batch_normalization_4/beta*
T0*
_output_shapes
:`*7
_class-
+)loc:@Generator/batch_normalization_4/beta
�
=Generator/batch_normalization_4/moving_mean/Initializer/zerosConst*
valueB`*    *
dtype0*
_output_shapes
:`*>
_class4
20loc:@Generator/batch_normalization_4/moving_mean
�
+Generator/batch_normalization_4/moving_mean
VariableV2*
shared_name *>
_class4
20loc:@Generator/batch_normalization_4/moving_mean*
_output_shapes
:`*
dtype0*
shape:`*
	container 
�
2Generator/batch_normalization_4/moving_mean/AssignAssign+Generator/batch_normalization_4/moving_mean=Generator/batch_normalization_4/moving_mean/Initializer/zeros*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_4/moving_mean
�
0Generator/batch_normalization_4/moving_mean/readIdentity+Generator/batch_normalization_4/moving_mean*
T0*
_output_shapes
:`*>
_class4
20loc:@Generator/batch_normalization_4/moving_mean
�
@Generator/batch_normalization_4/moving_variance/Initializer/onesConst*
valueB`*  �?*
dtype0*
_output_shapes
:`*B
_class8
64loc:@Generator/batch_normalization_4/moving_variance
�
/Generator/batch_normalization_4/moving_variance
VariableV2*
shared_name *B
_class8
64loc:@Generator/batch_normalization_4/moving_variance*
_output_shapes
:`*
dtype0*
shape:`*
	container 
�
6Generator/batch_normalization_4/moving_variance/AssignAssign/Generator/batch_normalization_4/moving_variance@Generator/batch_normalization_4/moving_variance/Initializer/ones*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_4/moving_variance
�
4Generator/batch_normalization_4/moving_variance/readIdentity/Generator/batch_normalization_4/moving_variance*
T0*
_output_shapes
:`*B
_class8
64loc:@Generator/batch_normalization_4/moving_variance
�
.Generator/batch_normalization_4/FusedBatchNormFusedBatchNormGenerator/BiasAdd_4*Generator/batch_normalization_4/gamma/read)Generator/batch_normalization_4/beta/read0Generator/batch_normalization_4/moving_mean/read4Generator/batch_normalization_4/moving_variance/read*
is_training( *
T0*
data_formatNHWC*P
_output_shapes>
<:"������������������`:`:`:`:`*
epsilon%o�:
j
%Generator/batch_normalization_4/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Generator/Relu_8Relu.Generator/batch_normalization_4/FusedBatchNorm*
T0*8
_output_shapes&
$:"������������������`
�
Generator/Neg_4Neg.Generator/batch_normalization_4/FusedBatchNorm*
T0*8
_output_shapes&
$:"������������������`
l
Generator/Relu_9ReluGenerator/Neg_4*
T0*8
_output_shapes&
$:"������������������`
V
Generator/mul_5/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
~
Generator/mul_5MulGenerator/mul_5/xGenerator/Relu_9*
T0*8
_output_shapes&
$:"������������������`
|
Generator/sub_5SubGenerator/Relu_8Generator/mul_5*
T0*8
_output_shapes&
$:"������������������`
�
DGenerator/Gen_down1/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      `   �   *
dtype0*
_output_shapes
:*4
_class*
(&loc:@Generator/Gen_down1/conv3/filters
�
CGenerator/Gen_down1/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down1/conv3/filters
�
EGenerator/Gen_down1/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *��*=*
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down1/conv3/filters
�
NGenerator/Gen_down1/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDGenerator/Gen_down1/conv3/filters/Initializer/truncated_normal/shape*
seed2 *4
_class*
(&loc:@Generator/Gen_down1/conv3/filters*
T0*'
_output_shapes
:`�*
dtype0*

seed 
�
BGenerator/Gen_down1/conv3/filters/Initializer/truncated_normal/mulMulNGenerator/Gen_down1/conv3/filters/Initializer/truncated_normal/TruncatedNormalEGenerator/Gen_down1/conv3/filters/Initializer/truncated_normal/stddev*
T0*'
_output_shapes
:`�*4
_class*
(&loc:@Generator/Gen_down1/conv3/filters
�
>Generator/Gen_down1/conv3/filters/Initializer/truncated_normalAddBGenerator/Gen_down1/conv3/filters/Initializer/truncated_normal/mulCGenerator/Gen_down1/conv3/filters/Initializer/truncated_normal/mean*
T0*'
_output_shapes
:`�*4
_class*
(&loc:@Generator/Gen_down1/conv3/filters
�
!Generator/Gen_down1/conv3/filters
VariableV2*
shared_name *4
_class*
(&loc:@Generator/Gen_down1/conv3/filters*'
_output_shapes
:`�*
dtype0*
shape:`�*
	container 
�
(Generator/Gen_down1/conv3/filters/AssignAssign!Generator/Gen_down1/conv3/filters>Generator/Gen_down1/conv3/filters/Initializer/truncated_normal*
T0*'
_output_shapes
:`�*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down1/conv3/filters
�
&Generator/Gen_down1/conv3/filters/readIdentity!Generator/Gen_down1/conv3/filters*
T0*'
_output_shapes
:`�*4
_class*
(&loc:@Generator/Gen_down1/conv3/filters
�
2Generator/Gen_down1/conv3/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down1/conv3/biases
�
 Generator/Gen_down1/conv3/biases
VariableV2*
shared_name *3
_class)
'%loc:@Generator/Gen_down1/conv3/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
'Generator/Gen_down1/conv3/biases/AssignAssign Generator/Gen_down1/conv3/biases2Generator/Gen_down1/conv3/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down1/conv3/biases
�
%Generator/Gen_down1/conv3/biases/readIdentity Generator/Gen_down1/conv3/biases*
T0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down1/conv3/biases
�
Generator/Conv2D_5Conv2DGenerator/sub_5&Generator/Gen_down1/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#�������������������*
use_cudnn_on_gpu(
�
Generator/BiasAdd_5BiasAddGenerator/Conv2D_5%Generator/Gen_down1/conv3/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#�������������������
�
6Generator/batch_normalization_5/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_5/gamma
�
%Generator/batch_normalization_5/gamma
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_5/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_5/gamma/AssignAssign%Generator/batch_normalization_5/gamma6Generator/batch_normalization_5/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_5/gamma
�
*Generator/batch_normalization_5/gamma/readIdentity%Generator/batch_normalization_5/gamma*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_5/gamma
�
6Generator/batch_normalization_5/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*7
_class-
+)loc:@Generator/batch_normalization_5/beta
�
$Generator/batch_normalization_5/beta
VariableV2*
shared_name *7
_class-
+)loc:@Generator/batch_normalization_5/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
+Generator/batch_normalization_5/beta/AssignAssign$Generator/batch_normalization_5/beta6Generator/batch_normalization_5/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_5/beta
�
)Generator/batch_normalization_5/beta/readIdentity$Generator/batch_normalization_5/beta*
T0*
_output_shapes	
:�*7
_class-
+)loc:@Generator/batch_normalization_5/beta
�
=Generator/batch_normalization_5/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*>
_class4
20loc:@Generator/batch_normalization_5/moving_mean
�
+Generator/batch_normalization_5/moving_mean
VariableV2*
shared_name *>
_class4
20loc:@Generator/batch_normalization_5/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
2Generator/batch_normalization_5/moving_mean/AssignAssign+Generator/batch_normalization_5/moving_mean=Generator/batch_normalization_5/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_5/moving_mean
�
0Generator/batch_normalization_5/moving_mean/readIdentity+Generator/batch_normalization_5/moving_mean*
T0*
_output_shapes	
:�*>
_class4
20loc:@Generator/batch_normalization_5/moving_mean
�
@Generator/batch_normalization_5/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*B
_class8
64loc:@Generator/batch_normalization_5/moving_variance
�
/Generator/batch_normalization_5/moving_variance
VariableV2*
shared_name *B
_class8
64loc:@Generator/batch_normalization_5/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
6Generator/batch_normalization_5/moving_variance/AssignAssign/Generator/batch_normalization_5/moving_variance@Generator/batch_normalization_5/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_5/moving_variance
�
4Generator/batch_normalization_5/moving_variance/readIdentity/Generator/batch_normalization_5/moving_variance*
T0*
_output_shapes	
:�*B
_class8
64loc:@Generator/batch_normalization_5/moving_variance
�
.Generator/batch_normalization_5/FusedBatchNormFusedBatchNormGenerator/BiasAdd_5*Generator/batch_normalization_5/gamma/read)Generator/batch_normalization_5/beta/read0Generator/batch_normalization_5/moving_mean/read4Generator/batch_normalization_5/moving_variance/read*
is_training( *
T0*
data_formatNHWC*U
_output_shapesC
A:#�������������������:�:�:�:�*
epsilon%o�:
j
%Generator/batch_normalization_5/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Generator/Relu_10Relu.Generator/batch_normalization_5/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
�
Generator/Neg_5Neg.Generator/batch_normalization_5/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
n
Generator/Relu_11ReluGenerator/Neg_5*
T0*9
_output_shapes'
%:#�������������������
V
Generator/mul_6/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
Generator/mul_6MulGenerator/mul_6/xGenerator/Relu_11*
T0*9
_output_shapes'
%:#�������������������
~
Generator/sub_6SubGenerator/Relu_10Generator/mul_6*
T0*9
_output_shapes'
%:#�������������������
�
Generator/Pad_1/paddingsConst*9
value0B."                             @   *
dtype0*
_output_shapes

:
�
Generator/Pad_1PadGenerator/AvgPoolGenerator/Pad_1/paddings*
T0*9
_output_shapes'
%:#�������������������*
	Tpaddings0
|
Generator/add_1AddGenerator/sub_6Generator/Pad_1*
T0*9
_output_shapes'
%:#�������������������
�
Generator/AvgPool_1AvgPoolGenerator/add_1*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#�������������������
�
DGenerator/Gen_down2/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"      �   �   *
dtype0*
_output_shapes
:*4
_class*
(&loc:@Generator/Gen_down2/conv1/filters
�
CGenerator/Gen_down2/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down2/conv1/filters
�
EGenerator/Gen_down2/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *HY=*
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down2/conv1/filters
�
NGenerator/Gen_down2/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDGenerator/Gen_down2/conv1/filters/Initializer/truncated_normal/shape*
seed2 *4
_class*
(&loc:@Generator/Gen_down2/conv1/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
BGenerator/Gen_down2/conv1/filters/Initializer/truncated_normal/mulMulNGenerator/Gen_down2/conv1/filters/Initializer/truncated_normal/TruncatedNormalEGenerator/Gen_down2/conv1/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down2/conv1/filters
�
>Generator/Gen_down2/conv1/filters/Initializer/truncated_normalAddBGenerator/Gen_down2/conv1/filters/Initializer/truncated_normal/mulCGenerator/Gen_down2/conv1/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down2/conv1/filters
�
!Generator/Gen_down2/conv1/filters
VariableV2*
shared_name *4
_class*
(&loc:@Generator/Gen_down2/conv1/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
(Generator/Gen_down2/conv1/filters/AssignAssign!Generator/Gen_down2/conv1/filters>Generator/Gen_down2/conv1/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down2/conv1/filters
�
&Generator/Gen_down2/conv1/filters/readIdentity!Generator/Gen_down2/conv1/filters*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down2/conv1/filters
�
2Generator/Gen_down2/conv1/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down2/conv1/biases
�
 Generator/Gen_down2/conv1/biases
VariableV2*
shared_name *3
_class)
'%loc:@Generator/Gen_down2/conv1/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
'Generator/Gen_down2/conv1/biases/AssignAssign Generator/Gen_down2/conv1/biases2Generator/Gen_down2/conv1/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down2/conv1/biases
�
%Generator/Gen_down2/conv1/biases/readIdentity Generator/Gen_down2/conv1/biases*
T0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down2/conv1/biases
�
Generator/Conv2D_6Conv2DGenerator/AvgPool_1&Generator/Gen_down2/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#�������������������*
use_cudnn_on_gpu(
�
Generator/BiasAdd_6BiasAddGenerator/Conv2D_6%Generator/Gen_down2/conv1/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#�������������������
�
6Generator/batch_normalization_6/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_6/gamma
�
%Generator/batch_normalization_6/gamma
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_6/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_6/gamma/AssignAssign%Generator/batch_normalization_6/gamma6Generator/batch_normalization_6/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_6/gamma
�
*Generator/batch_normalization_6/gamma/readIdentity%Generator/batch_normalization_6/gamma*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_6/gamma
�
6Generator/batch_normalization_6/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*7
_class-
+)loc:@Generator/batch_normalization_6/beta
�
$Generator/batch_normalization_6/beta
VariableV2*
shared_name *7
_class-
+)loc:@Generator/batch_normalization_6/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
+Generator/batch_normalization_6/beta/AssignAssign$Generator/batch_normalization_6/beta6Generator/batch_normalization_6/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_6/beta
�
)Generator/batch_normalization_6/beta/readIdentity$Generator/batch_normalization_6/beta*
T0*
_output_shapes	
:�*7
_class-
+)loc:@Generator/batch_normalization_6/beta
�
=Generator/batch_normalization_6/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*>
_class4
20loc:@Generator/batch_normalization_6/moving_mean
�
+Generator/batch_normalization_6/moving_mean
VariableV2*
shared_name *>
_class4
20loc:@Generator/batch_normalization_6/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
2Generator/batch_normalization_6/moving_mean/AssignAssign+Generator/batch_normalization_6/moving_mean=Generator/batch_normalization_6/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_6/moving_mean
�
0Generator/batch_normalization_6/moving_mean/readIdentity+Generator/batch_normalization_6/moving_mean*
T0*
_output_shapes	
:�*>
_class4
20loc:@Generator/batch_normalization_6/moving_mean
�
@Generator/batch_normalization_6/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*B
_class8
64loc:@Generator/batch_normalization_6/moving_variance
�
/Generator/batch_normalization_6/moving_variance
VariableV2*
shared_name *B
_class8
64loc:@Generator/batch_normalization_6/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
6Generator/batch_normalization_6/moving_variance/AssignAssign/Generator/batch_normalization_6/moving_variance@Generator/batch_normalization_6/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_6/moving_variance
�
4Generator/batch_normalization_6/moving_variance/readIdentity/Generator/batch_normalization_6/moving_variance*
T0*
_output_shapes	
:�*B
_class8
64loc:@Generator/batch_normalization_6/moving_variance
�
.Generator/batch_normalization_6/FusedBatchNormFusedBatchNormGenerator/BiasAdd_6*Generator/batch_normalization_6/gamma/read)Generator/batch_normalization_6/beta/read0Generator/batch_normalization_6/moving_mean/read4Generator/batch_normalization_6/moving_variance/read*
is_training( *
T0*
data_formatNHWC*U
_output_shapesC
A:#�������������������:�:�:�:�*
epsilon%o�:
j
%Generator/batch_normalization_6/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Generator/Relu_12Relu.Generator/batch_normalization_6/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
�
Generator/Neg_6Neg.Generator/batch_normalization_6/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
n
Generator/Relu_13ReluGenerator/Neg_6*
T0*9
_output_shapes'
%:#�������������������
V
Generator/mul_7/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
Generator/mul_7MulGenerator/mul_7/xGenerator/Relu_13*
T0*9
_output_shapes'
%:#�������������������
~
Generator/sub_7SubGenerator/Relu_12Generator/mul_7*
T0*9
_output_shapes'
%:#�������������������
�
DGenerator/Gen_down2/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      �   �   *
dtype0*
_output_shapes
:*4
_class*
(&loc:@Generator/Gen_down2/conv2/filters
�
CGenerator/Gen_down2/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down2/conv2/filters
�
EGenerator/Gen_down2/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *HY=*
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down2/conv2/filters
�
NGenerator/Gen_down2/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDGenerator/Gen_down2/conv2/filters/Initializer/truncated_normal/shape*
seed2 *4
_class*
(&loc:@Generator/Gen_down2/conv2/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
BGenerator/Gen_down2/conv2/filters/Initializer/truncated_normal/mulMulNGenerator/Gen_down2/conv2/filters/Initializer/truncated_normal/TruncatedNormalEGenerator/Gen_down2/conv2/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down2/conv2/filters
�
>Generator/Gen_down2/conv2/filters/Initializer/truncated_normalAddBGenerator/Gen_down2/conv2/filters/Initializer/truncated_normal/mulCGenerator/Gen_down2/conv2/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down2/conv2/filters
�
!Generator/Gen_down2/conv2/filters
VariableV2*
shared_name *4
_class*
(&loc:@Generator/Gen_down2/conv2/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
(Generator/Gen_down2/conv2/filters/AssignAssign!Generator/Gen_down2/conv2/filters>Generator/Gen_down2/conv2/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down2/conv2/filters
�
&Generator/Gen_down2/conv2/filters/readIdentity!Generator/Gen_down2/conv2/filters*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down2/conv2/filters
�
2Generator/Gen_down2/conv2/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down2/conv2/biases
�
 Generator/Gen_down2/conv2/biases
VariableV2*
shared_name *3
_class)
'%loc:@Generator/Gen_down2/conv2/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
'Generator/Gen_down2/conv2/biases/AssignAssign Generator/Gen_down2/conv2/biases2Generator/Gen_down2/conv2/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down2/conv2/biases
�
%Generator/Gen_down2/conv2/biases/readIdentity Generator/Gen_down2/conv2/biases*
T0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down2/conv2/biases
�
Generator/Conv2D_7Conv2DGenerator/sub_7&Generator/Gen_down2/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#�������������������*
use_cudnn_on_gpu(
�
Generator/BiasAdd_7BiasAddGenerator/Conv2D_7%Generator/Gen_down2/conv2/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#�������������������
�
6Generator/batch_normalization_7/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_7/gamma
�
%Generator/batch_normalization_7/gamma
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_7/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_7/gamma/AssignAssign%Generator/batch_normalization_7/gamma6Generator/batch_normalization_7/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_7/gamma
�
*Generator/batch_normalization_7/gamma/readIdentity%Generator/batch_normalization_7/gamma*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_7/gamma
�
6Generator/batch_normalization_7/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*7
_class-
+)loc:@Generator/batch_normalization_7/beta
�
$Generator/batch_normalization_7/beta
VariableV2*
shared_name *7
_class-
+)loc:@Generator/batch_normalization_7/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
+Generator/batch_normalization_7/beta/AssignAssign$Generator/batch_normalization_7/beta6Generator/batch_normalization_7/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_7/beta
�
)Generator/batch_normalization_7/beta/readIdentity$Generator/batch_normalization_7/beta*
T0*
_output_shapes	
:�*7
_class-
+)loc:@Generator/batch_normalization_7/beta
�
=Generator/batch_normalization_7/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*>
_class4
20loc:@Generator/batch_normalization_7/moving_mean
�
+Generator/batch_normalization_7/moving_mean
VariableV2*
shared_name *>
_class4
20loc:@Generator/batch_normalization_7/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
2Generator/batch_normalization_7/moving_mean/AssignAssign+Generator/batch_normalization_7/moving_mean=Generator/batch_normalization_7/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_7/moving_mean
�
0Generator/batch_normalization_7/moving_mean/readIdentity+Generator/batch_normalization_7/moving_mean*
T0*
_output_shapes	
:�*>
_class4
20loc:@Generator/batch_normalization_7/moving_mean
�
@Generator/batch_normalization_7/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*B
_class8
64loc:@Generator/batch_normalization_7/moving_variance
�
/Generator/batch_normalization_7/moving_variance
VariableV2*
shared_name *B
_class8
64loc:@Generator/batch_normalization_7/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
6Generator/batch_normalization_7/moving_variance/AssignAssign/Generator/batch_normalization_7/moving_variance@Generator/batch_normalization_7/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_7/moving_variance
�
4Generator/batch_normalization_7/moving_variance/readIdentity/Generator/batch_normalization_7/moving_variance*
T0*
_output_shapes	
:�*B
_class8
64loc:@Generator/batch_normalization_7/moving_variance
�
.Generator/batch_normalization_7/FusedBatchNormFusedBatchNormGenerator/BiasAdd_7*Generator/batch_normalization_7/gamma/read)Generator/batch_normalization_7/beta/read0Generator/batch_normalization_7/moving_mean/read4Generator/batch_normalization_7/moving_variance/read*
is_training( *
T0*
data_formatNHWC*U
_output_shapesC
A:#�������������������:�:�:�:�*
epsilon%o�:
j
%Generator/batch_normalization_7/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Generator/Relu_14Relu.Generator/batch_normalization_7/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
�
Generator/Neg_7Neg.Generator/batch_normalization_7/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
n
Generator/Relu_15ReluGenerator/Neg_7*
T0*9
_output_shapes'
%:#�������������������
V
Generator/mul_8/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
Generator/mul_8MulGenerator/mul_8/xGenerator/Relu_15*
T0*9
_output_shapes'
%:#�������������������
~
Generator/sub_8SubGenerator/Relu_14Generator/mul_8*
T0*9
_output_shapes'
%:#�������������������
�
DGenerator/Gen_down2/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      �      *
dtype0*
_output_shapes
:*4
_class*
(&loc:@Generator/Gen_down2/conv3/filters
�
CGenerator/Gen_down2/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down2/conv3/filters
�
EGenerator/Gen_down2/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *�[�<*
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down2/conv3/filters
�
NGenerator/Gen_down2/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDGenerator/Gen_down2/conv3/filters/Initializer/truncated_normal/shape*
seed2 *4
_class*
(&loc:@Generator/Gen_down2/conv3/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
BGenerator/Gen_down2/conv3/filters/Initializer/truncated_normal/mulMulNGenerator/Gen_down2/conv3/filters/Initializer/truncated_normal/TruncatedNormalEGenerator/Gen_down2/conv3/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down2/conv3/filters
�
>Generator/Gen_down2/conv3/filters/Initializer/truncated_normalAddBGenerator/Gen_down2/conv3/filters/Initializer/truncated_normal/mulCGenerator/Gen_down2/conv3/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down2/conv3/filters
�
!Generator/Gen_down2/conv3/filters
VariableV2*
shared_name *4
_class*
(&loc:@Generator/Gen_down2/conv3/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
(Generator/Gen_down2/conv3/filters/AssignAssign!Generator/Gen_down2/conv3/filters>Generator/Gen_down2/conv3/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down2/conv3/filters
�
&Generator/Gen_down2/conv3/filters/readIdentity!Generator/Gen_down2/conv3/filters*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down2/conv3/filters
�
2Generator/Gen_down2/conv3/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down2/conv3/biases
�
 Generator/Gen_down2/conv3/biases
VariableV2*
shared_name *3
_class)
'%loc:@Generator/Gen_down2/conv3/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
'Generator/Gen_down2/conv3/biases/AssignAssign Generator/Gen_down2/conv3/biases2Generator/Gen_down2/conv3/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down2/conv3/biases
�
%Generator/Gen_down2/conv3/biases/readIdentity Generator/Gen_down2/conv3/biases*
T0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down2/conv3/biases
�
Generator/Conv2D_8Conv2DGenerator/sub_8&Generator/Gen_down2/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#�������������������*
use_cudnn_on_gpu(
�
Generator/BiasAdd_8BiasAddGenerator/Conv2D_8%Generator/Gen_down2/conv3/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#�������������������
�
6Generator/batch_normalization_8/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_8/gamma
�
%Generator/batch_normalization_8/gamma
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_8/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_8/gamma/AssignAssign%Generator/batch_normalization_8/gamma6Generator/batch_normalization_8/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_8/gamma
�
*Generator/batch_normalization_8/gamma/readIdentity%Generator/batch_normalization_8/gamma*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_8/gamma
�
6Generator/batch_normalization_8/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*7
_class-
+)loc:@Generator/batch_normalization_8/beta
�
$Generator/batch_normalization_8/beta
VariableV2*
shared_name *7
_class-
+)loc:@Generator/batch_normalization_8/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
+Generator/batch_normalization_8/beta/AssignAssign$Generator/batch_normalization_8/beta6Generator/batch_normalization_8/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_8/beta
�
)Generator/batch_normalization_8/beta/readIdentity$Generator/batch_normalization_8/beta*
T0*
_output_shapes	
:�*7
_class-
+)loc:@Generator/batch_normalization_8/beta
�
=Generator/batch_normalization_8/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*>
_class4
20loc:@Generator/batch_normalization_8/moving_mean
�
+Generator/batch_normalization_8/moving_mean
VariableV2*
shared_name *>
_class4
20loc:@Generator/batch_normalization_8/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
2Generator/batch_normalization_8/moving_mean/AssignAssign+Generator/batch_normalization_8/moving_mean=Generator/batch_normalization_8/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_8/moving_mean
�
0Generator/batch_normalization_8/moving_mean/readIdentity+Generator/batch_normalization_8/moving_mean*
T0*
_output_shapes	
:�*>
_class4
20loc:@Generator/batch_normalization_8/moving_mean
�
@Generator/batch_normalization_8/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*B
_class8
64loc:@Generator/batch_normalization_8/moving_variance
�
/Generator/batch_normalization_8/moving_variance
VariableV2*
shared_name *B
_class8
64loc:@Generator/batch_normalization_8/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
6Generator/batch_normalization_8/moving_variance/AssignAssign/Generator/batch_normalization_8/moving_variance@Generator/batch_normalization_8/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_8/moving_variance
�
4Generator/batch_normalization_8/moving_variance/readIdentity/Generator/batch_normalization_8/moving_variance*
T0*
_output_shapes	
:�*B
_class8
64loc:@Generator/batch_normalization_8/moving_variance
�
.Generator/batch_normalization_8/FusedBatchNormFusedBatchNormGenerator/BiasAdd_8*Generator/batch_normalization_8/gamma/read)Generator/batch_normalization_8/beta/read0Generator/batch_normalization_8/moving_mean/read4Generator/batch_normalization_8/moving_variance/read*
is_training( *
T0*
data_formatNHWC*U
_output_shapesC
A:#�������������������:�:�:�:�*
epsilon%o�:
j
%Generator/batch_normalization_8/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Generator/Relu_16Relu.Generator/batch_normalization_8/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
�
Generator/Neg_8Neg.Generator/batch_normalization_8/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
n
Generator/Relu_17ReluGenerator/Neg_8*
T0*9
_output_shapes'
%:#�������������������
V
Generator/mul_9/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
Generator/mul_9MulGenerator/mul_9/xGenerator/Relu_17*
T0*9
_output_shapes'
%:#�������������������
~
Generator/sub_9SubGenerator/Relu_16Generator/mul_9*
T0*9
_output_shapes'
%:#�������������������
�
Generator/Pad_2/paddingsConst*9
value0B."                             �   *
dtype0*
_output_shapes

:
�
Generator/Pad_2PadGenerator/AvgPool_1Generator/Pad_2/paddings*
T0*9
_output_shapes'
%:#�������������������*
	Tpaddings0
|
Generator/add_2AddGenerator/sub_9Generator/Pad_2*
T0*9
_output_shapes'
%:#�������������������
�
Generator/AvgPool_2AvgPoolGenerator/add_2*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#�������������������
�
DGenerator/Gen_down3/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"         �  *
dtype0*
_output_shapes
:*4
_class*
(&loc:@Generator/Gen_down3/conv1/filters
�
CGenerator/Gen_down3/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down3/conv1/filters
�
EGenerator/Gen_down3/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *��<*
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down3/conv1/filters
�
NGenerator/Gen_down3/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDGenerator/Gen_down3/conv1/filters/Initializer/truncated_normal/shape*
seed2 *4
_class*
(&loc:@Generator/Gen_down3/conv1/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
BGenerator/Gen_down3/conv1/filters/Initializer/truncated_normal/mulMulNGenerator/Gen_down3/conv1/filters/Initializer/truncated_normal/TruncatedNormalEGenerator/Gen_down3/conv1/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down3/conv1/filters
�
>Generator/Gen_down3/conv1/filters/Initializer/truncated_normalAddBGenerator/Gen_down3/conv1/filters/Initializer/truncated_normal/mulCGenerator/Gen_down3/conv1/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down3/conv1/filters
�
!Generator/Gen_down3/conv1/filters
VariableV2*
shared_name *4
_class*
(&loc:@Generator/Gen_down3/conv1/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
(Generator/Gen_down3/conv1/filters/AssignAssign!Generator/Gen_down3/conv1/filters>Generator/Gen_down3/conv1/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down3/conv1/filters
�
&Generator/Gen_down3/conv1/filters/readIdentity!Generator/Gen_down3/conv1/filters*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down3/conv1/filters
�
2Generator/Gen_down3/conv1/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down3/conv1/biases
�
 Generator/Gen_down3/conv1/biases
VariableV2*
shared_name *3
_class)
'%loc:@Generator/Gen_down3/conv1/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
'Generator/Gen_down3/conv1/biases/AssignAssign Generator/Gen_down3/conv1/biases2Generator/Gen_down3/conv1/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down3/conv1/biases
�
%Generator/Gen_down3/conv1/biases/readIdentity Generator/Gen_down3/conv1/biases*
T0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down3/conv1/biases
�
Generator/Conv2D_9Conv2DGenerator/AvgPool_2&Generator/Gen_down3/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#�������������������*
use_cudnn_on_gpu(
�
Generator/BiasAdd_9BiasAddGenerator/Conv2D_9%Generator/Gen_down3/conv1/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#�������������������
�
6Generator/batch_normalization_9/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_9/gamma
�
%Generator/batch_normalization_9/gamma
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_9/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_9/gamma/AssignAssign%Generator/batch_normalization_9/gamma6Generator/batch_normalization_9/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_9/gamma
�
*Generator/batch_normalization_9/gamma/readIdentity%Generator/batch_normalization_9/gamma*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_9/gamma
�
6Generator/batch_normalization_9/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*7
_class-
+)loc:@Generator/batch_normalization_9/beta
�
$Generator/batch_normalization_9/beta
VariableV2*
shared_name *7
_class-
+)loc:@Generator/batch_normalization_9/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
+Generator/batch_normalization_9/beta/AssignAssign$Generator/batch_normalization_9/beta6Generator/batch_normalization_9/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_9/beta
�
)Generator/batch_normalization_9/beta/readIdentity$Generator/batch_normalization_9/beta*
T0*
_output_shapes	
:�*7
_class-
+)loc:@Generator/batch_normalization_9/beta
�
=Generator/batch_normalization_9/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*>
_class4
20loc:@Generator/batch_normalization_9/moving_mean
�
+Generator/batch_normalization_9/moving_mean
VariableV2*
shared_name *>
_class4
20loc:@Generator/batch_normalization_9/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
2Generator/batch_normalization_9/moving_mean/AssignAssign+Generator/batch_normalization_9/moving_mean=Generator/batch_normalization_9/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_9/moving_mean
�
0Generator/batch_normalization_9/moving_mean/readIdentity+Generator/batch_normalization_9/moving_mean*
T0*
_output_shapes	
:�*>
_class4
20loc:@Generator/batch_normalization_9/moving_mean
�
@Generator/batch_normalization_9/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*B
_class8
64loc:@Generator/batch_normalization_9/moving_variance
�
/Generator/batch_normalization_9/moving_variance
VariableV2*
shared_name *B
_class8
64loc:@Generator/batch_normalization_9/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
6Generator/batch_normalization_9/moving_variance/AssignAssign/Generator/batch_normalization_9/moving_variance@Generator/batch_normalization_9/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_9/moving_variance
�
4Generator/batch_normalization_9/moving_variance/readIdentity/Generator/batch_normalization_9/moving_variance*
T0*
_output_shapes	
:�*B
_class8
64loc:@Generator/batch_normalization_9/moving_variance
�
.Generator/batch_normalization_9/FusedBatchNormFusedBatchNormGenerator/BiasAdd_9*Generator/batch_normalization_9/gamma/read)Generator/batch_normalization_9/beta/read0Generator/batch_normalization_9/moving_mean/read4Generator/batch_normalization_9/moving_variance/read*
is_training( *
T0*
data_formatNHWC*U
_output_shapesC
A:#�������������������:�:�:�:�*
epsilon%o�:
j
%Generator/batch_normalization_9/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Generator/Relu_18Relu.Generator/batch_normalization_9/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
�
Generator/Neg_9Neg.Generator/batch_normalization_9/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
n
Generator/Relu_19ReluGenerator/Neg_9*
T0*9
_output_shapes'
%:#�������������������
W
Generator/mul_10/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
Generator/mul_10MulGenerator/mul_10/xGenerator/Relu_19*
T0*9
_output_shapes'
%:#�������������������
�
Generator/sub_10SubGenerator/Relu_18Generator/mul_10*
T0*9
_output_shapes'
%:#�������������������
�
DGenerator/Gen_down3/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      �  �  *
dtype0*
_output_shapes
:*4
_class*
(&loc:@Generator/Gen_down3/conv2/filters
�
CGenerator/Gen_down3/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down3/conv2/filters
�
EGenerator/Gen_down3/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *��<*
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down3/conv2/filters
�
NGenerator/Gen_down3/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDGenerator/Gen_down3/conv2/filters/Initializer/truncated_normal/shape*
seed2 *4
_class*
(&loc:@Generator/Gen_down3/conv2/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
BGenerator/Gen_down3/conv2/filters/Initializer/truncated_normal/mulMulNGenerator/Gen_down3/conv2/filters/Initializer/truncated_normal/TruncatedNormalEGenerator/Gen_down3/conv2/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down3/conv2/filters
�
>Generator/Gen_down3/conv2/filters/Initializer/truncated_normalAddBGenerator/Gen_down3/conv2/filters/Initializer/truncated_normal/mulCGenerator/Gen_down3/conv2/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down3/conv2/filters
�
!Generator/Gen_down3/conv2/filters
VariableV2*
shared_name *4
_class*
(&loc:@Generator/Gen_down3/conv2/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
(Generator/Gen_down3/conv2/filters/AssignAssign!Generator/Gen_down3/conv2/filters>Generator/Gen_down3/conv2/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down3/conv2/filters
�
&Generator/Gen_down3/conv2/filters/readIdentity!Generator/Gen_down3/conv2/filters*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down3/conv2/filters
�
2Generator/Gen_down3/conv2/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down3/conv2/biases
�
 Generator/Gen_down3/conv2/biases
VariableV2*
shared_name *3
_class)
'%loc:@Generator/Gen_down3/conv2/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
'Generator/Gen_down3/conv2/biases/AssignAssign Generator/Gen_down3/conv2/biases2Generator/Gen_down3/conv2/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down3/conv2/biases
�
%Generator/Gen_down3/conv2/biases/readIdentity Generator/Gen_down3/conv2/biases*
T0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down3/conv2/biases
�
Generator/Conv2D_10Conv2DGenerator/sub_10&Generator/Gen_down3/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#�������������������*
use_cudnn_on_gpu(
�
Generator/BiasAdd_10BiasAddGenerator/Conv2D_10%Generator/Gen_down3/conv2/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#�������������������
�
7Generator/batch_normalization_10/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_10/gamma
�
&Generator/batch_normalization_10/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_10/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
-Generator/batch_normalization_10/gamma/AssignAssign&Generator/batch_normalization_10/gamma7Generator/batch_normalization_10/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_10/gamma
�
+Generator/batch_normalization_10/gamma/readIdentity&Generator/batch_normalization_10/gamma*
T0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_10/gamma
�
7Generator/batch_normalization_10/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_10/beta
�
%Generator/batch_normalization_10/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_10/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_10/beta/AssignAssign%Generator/batch_normalization_10/beta7Generator/batch_normalization_10/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_10/beta
�
*Generator/batch_normalization_10/beta/readIdentity%Generator/batch_normalization_10/beta*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_10/beta
�
>Generator/batch_normalization_10/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_10/moving_mean
�
,Generator/batch_normalization_10/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_10/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
3Generator/batch_normalization_10/moving_mean/AssignAssign,Generator/batch_normalization_10/moving_mean>Generator/batch_normalization_10/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_10/moving_mean
�
1Generator/batch_normalization_10/moving_mean/readIdentity,Generator/batch_normalization_10/moving_mean*
T0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_10/moving_mean
�
AGenerator/batch_normalization_10/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_10/moving_variance
�
0Generator/batch_normalization_10/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_10/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
7Generator/batch_normalization_10/moving_variance/AssignAssign0Generator/batch_normalization_10/moving_varianceAGenerator/batch_normalization_10/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_10/moving_variance
�
5Generator/batch_normalization_10/moving_variance/readIdentity0Generator/batch_normalization_10/moving_variance*
T0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_10/moving_variance
�
/Generator/batch_normalization_10/FusedBatchNormFusedBatchNormGenerator/BiasAdd_10+Generator/batch_normalization_10/gamma/read*Generator/batch_normalization_10/beta/read1Generator/batch_normalization_10/moving_mean/read5Generator/batch_normalization_10/moving_variance/read*
is_training( *
T0*
data_formatNHWC*U
_output_shapesC
A:#�������������������:�:�:�:�*
epsilon%o�:
k
&Generator/batch_normalization_10/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Generator/Relu_20Relu/Generator/batch_normalization_10/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
�
Generator/Neg_10Neg/Generator/batch_normalization_10/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
o
Generator/Relu_21ReluGenerator/Neg_10*
T0*9
_output_shapes'
%:#�������������������
W
Generator/mul_11/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
Generator/mul_11MulGenerator/mul_11/xGenerator/Relu_21*
T0*9
_output_shapes'
%:#�������������������
�
Generator/sub_11SubGenerator/Relu_20Generator/mul_11*
T0*9
_output_shapes'
%:#�������������������
�
DGenerator/Gen_down3/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      �     *
dtype0*
_output_shapes
:*4
_class*
(&loc:@Generator/Gen_down3/conv3/filters
�
CGenerator/Gen_down3/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down3/conv3/filters
�
EGenerator/Gen_down3/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *���<*
dtype0*
_output_shapes
: *4
_class*
(&loc:@Generator/Gen_down3/conv3/filters
�
NGenerator/Gen_down3/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalDGenerator/Gen_down3/conv3/filters/Initializer/truncated_normal/shape*
seed2 *4
_class*
(&loc:@Generator/Gen_down3/conv3/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
BGenerator/Gen_down3/conv3/filters/Initializer/truncated_normal/mulMulNGenerator/Gen_down3/conv3/filters/Initializer/truncated_normal/TruncatedNormalEGenerator/Gen_down3/conv3/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down3/conv3/filters
�
>Generator/Gen_down3/conv3/filters/Initializer/truncated_normalAddBGenerator/Gen_down3/conv3/filters/Initializer/truncated_normal/mulCGenerator/Gen_down3/conv3/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down3/conv3/filters
�
!Generator/Gen_down3/conv3/filters
VariableV2*
shared_name *4
_class*
(&loc:@Generator/Gen_down3/conv3/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
(Generator/Gen_down3/conv3/filters/AssignAssign!Generator/Gen_down3/conv3/filters>Generator/Gen_down3/conv3/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down3/conv3/filters
�
&Generator/Gen_down3/conv3/filters/readIdentity!Generator/Gen_down3/conv3/filters*
T0*(
_output_shapes
:��*4
_class*
(&loc:@Generator/Gen_down3/conv3/filters
�
2Generator/Gen_down3/conv3/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down3/conv3/biases
�
 Generator/Gen_down3/conv3/biases
VariableV2*
shared_name *3
_class)
'%loc:@Generator/Gen_down3/conv3/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
'Generator/Gen_down3/conv3/biases/AssignAssign Generator/Gen_down3/conv3/biases2Generator/Gen_down3/conv3/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down3/conv3/biases
�
%Generator/Gen_down3/conv3/biases/readIdentity Generator/Gen_down3/conv3/biases*
T0*
_output_shapes	
:�*3
_class)
'%loc:@Generator/Gen_down3/conv3/biases
�
Generator/Conv2D_11Conv2DGenerator/sub_11&Generator/Gen_down3/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#�������������������*
use_cudnn_on_gpu(
�
Generator/BiasAdd_11BiasAddGenerator/Conv2D_11%Generator/Gen_down3/conv3/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#�������������������
�
7Generator/batch_normalization_11/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_11/gamma
�
&Generator/batch_normalization_11/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_11/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
-Generator/batch_normalization_11/gamma/AssignAssign&Generator/batch_normalization_11/gamma7Generator/batch_normalization_11/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_11/gamma
�
+Generator/batch_normalization_11/gamma/readIdentity&Generator/batch_normalization_11/gamma*
T0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_11/gamma
�
7Generator/batch_normalization_11/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_11/beta
�
%Generator/batch_normalization_11/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_11/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_11/beta/AssignAssign%Generator/batch_normalization_11/beta7Generator/batch_normalization_11/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_11/beta
�
*Generator/batch_normalization_11/beta/readIdentity%Generator/batch_normalization_11/beta*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_11/beta
�
>Generator/batch_normalization_11/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_11/moving_mean
�
,Generator/batch_normalization_11/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_11/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
3Generator/batch_normalization_11/moving_mean/AssignAssign,Generator/batch_normalization_11/moving_mean>Generator/batch_normalization_11/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_11/moving_mean
�
1Generator/batch_normalization_11/moving_mean/readIdentity,Generator/batch_normalization_11/moving_mean*
T0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_11/moving_mean
�
AGenerator/batch_normalization_11/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_11/moving_variance
�
0Generator/batch_normalization_11/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_11/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
7Generator/batch_normalization_11/moving_variance/AssignAssign0Generator/batch_normalization_11/moving_varianceAGenerator/batch_normalization_11/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_11/moving_variance
�
5Generator/batch_normalization_11/moving_variance/readIdentity0Generator/batch_normalization_11/moving_variance*
T0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_11/moving_variance
�
/Generator/batch_normalization_11/FusedBatchNormFusedBatchNormGenerator/BiasAdd_11+Generator/batch_normalization_11/gamma/read*Generator/batch_normalization_11/beta/read1Generator/batch_normalization_11/moving_mean/read5Generator/batch_normalization_11/moving_variance/read*
is_training( *
T0*
data_formatNHWC*U
_output_shapesC
A:#�������������������:�:�:�:�*
epsilon%o�:
k
&Generator/batch_normalization_11/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Generator/Relu_22Relu/Generator/batch_normalization_11/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
�
Generator/Neg_11Neg/Generator/batch_normalization_11/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
o
Generator/Relu_23ReluGenerator/Neg_11*
T0*9
_output_shapes'
%:#�������������������
W
Generator/mul_12/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
Generator/mul_12MulGenerator/mul_12/xGenerator/Relu_23*
T0*9
_output_shapes'
%:#�������������������
�
Generator/sub_12SubGenerator/Relu_22Generator/mul_12*
T0*9
_output_shapes'
%:#�������������������
�
Generator/Pad_3/paddingsConst*9
value0B."                                *
dtype0*
_output_shapes

:
�
Generator/Pad_3PadGenerator/AvgPool_2Generator/Pad_3/paddings*
T0*9
_output_shapes'
%:#�������������������*
	Tpaddings0
}
Generator/add_3AddGenerator/sub_12Generator/Pad_3*
T0*9
_output_shapes'
%:#�������������������
�
Generator/AvgPool_3AvgPoolGenerator/add_3*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#�������������������
�
?Generator/Gen_center/filters/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:*/
_class%
#!loc:@Generator/Gen_center/filters
�
>Generator/Gen_center/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: */
_class%
#!loc:@Generator/Gen_center/filters
�
@Generator/Gen_center/filters/Initializer/truncated_normal/stddevConst*
valueB
 *���<*
dtype0*
_output_shapes
: */
_class%
#!loc:@Generator/Gen_center/filters
�
IGenerator/Gen_center/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?Generator/Gen_center/filters/Initializer/truncated_normal/shape*
seed2 */
_class%
#!loc:@Generator/Gen_center/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
=Generator/Gen_center/filters/Initializer/truncated_normal/mulMulIGenerator/Gen_center/filters/Initializer/truncated_normal/TruncatedNormal@Generator/Gen_center/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*/
_class%
#!loc:@Generator/Gen_center/filters
�
9Generator/Gen_center/filters/Initializer/truncated_normalAdd=Generator/Gen_center/filters/Initializer/truncated_normal/mul>Generator/Gen_center/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*/
_class%
#!loc:@Generator/Gen_center/filters
�
Generator/Gen_center/filters
VariableV2*
shared_name */
_class%
#!loc:@Generator/Gen_center/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
#Generator/Gen_center/filters/AssignAssignGenerator/Gen_center/filters9Generator/Gen_center/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/Gen_center/filters
�
!Generator/Gen_center/filters/readIdentityGenerator/Gen_center/filters*
T0*(
_output_shapes
:��*/
_class%
#!loc:@Generator/Gen_center/filters
�
-Generator/Gen_center/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*.
_class$
" loc:@Generator/Gen_center/biases
�
Generator/Gen_center/biases
VariableV2*
shared_name *.
_class$
" loc:@Generator/Gen_center/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
"Generator/Gen_center/biases/AssignAssignGenerator/Gen_center/biases-Generator/Gen_center/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/Gen_center/biases
�
 Generator/Gen_center/biases/readIdentityGenerator/Gen_center/biases*
T0*
_output_shapes	
:�*.
_class$
" loc:@Generator/Gen_center/biases
�
Generator/Conv2D_12Conv2DGenerator/AvgPool_3!Generator/Gen_center/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#�������������������*
use_cudnn_on_gpu(
�
Generator/BiasAdd_12BiasAddGenerator/Conv2D_12 Generator/Gen_center/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#�������������������
�
7Generator/batch_normalization_12/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_12/gamma
�
&Generator/batch_normalization_12/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_12/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
-Generator/batch_normalization_12/gamma/AssignAssign&Generator/batch_normalization_12/gamma7Generator/batch_normalization_12/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_12/gamma
�
+Generator/batch_normalization_12/gamma/readIdentity&Generator/batch_normalization_12/gamma*
T0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_12/gamma
�
7Generator/batch_normalization_12/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_12/beta
�
%Generator/batch_normalization_12/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_12/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_12/beta/AssignAssign%Generator/batch_normalization_12/beta7Generator/batch_normalization_12/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_12/beta
�
*Generator/batch_normalization_12/beta/readIdentity%Generator/batch_normalization_12/beta*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_12/beta
�
>Generator/batch_normalization_12/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_12/moving_mean
�
,Generator/batch_normalization_12/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_12/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
3Generator/batch_normalization_12/moving_mean/AssignAssign,Generator/batch_normalization_12/moving_mean>Generator/batch_normalization_12/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_12/moving_mean
�
1Generator/batch_normalization_12/moving_mean/readIdentity,Generator/batch_normalization_12/moving_mean*
T0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_12/moving_mean
�
AGenerator/batch_normalization_12/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_12/moving_variance
�
0Generator/batch_normalization_12/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_12/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
7Generator/batch_normalization_12/moving_variance/AssignAssign0Generator/batch_normalization_12/moving_varianceAGenerator/batch_normalization_12/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_12/moving_variance
�
5Generator/batch_normalization_12/moving_variance/readIdentity0Generator/batch_normalization_12/moving_variance*
T0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_12/moving_variance
�
/Generator/batch_normalization_12/FusedBatchNormFusedBatchNormGenerator/BiasAdd_12+Generator/batch_normalization_12/gamma/read*Generator/batch_normalization_12/beta/read1Generator/batch_normalization_12/moving_mean/read5Generator/batch_normalization_12/moving_variance/read*
is_training( *
T0*
data_formatNHWC*U
_output_shapesC
A:#�������������������:�:�:�:�*
epsilon%o�:
k
&Generator/batch_normalization_12/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Generator/Relu_24Relu/Generator/batch_normalization_12/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
�
Generator/Neg_12Neg/Generator/batch_normalization_12/FusedBatchNorm*
T0*9
_output_shapes'
%:#�������������������
o
Generator/Relu_25ReluGenerator/Neg_12*
T0*9
_output_shapes'
%:#�������������������
W
Generator/mul_13/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
Generator/mul_13MulGenerator/mul_13/xGenerator/Relu_25*
T0*9
_output_shapes'
%:#�������������������
�
Generator/sub_13SubGenerator/Relu_24Generator/mul_13*
T0*9
_output_shapes'
%:#�������������������
n
Generator/ResizeBilinear/sizeConst*
valueB"�   �   *
dtype0*
_output_shapes
:
�
Generator/ResizeBilinearResizeBilinearGenerator/sub_13Generator/ResizeBilinear/size*
T0*
align_corners( *)
_output_shapes
:���
W
Generator/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
�
Generator/concatConcatV2Generator/ResizeBilinearGenerator/add_3Generator/concat/axis*
T0*
N*)
_output_shapes
:���*

Tidx0
�
BGenerator/Gen_up3/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"         �  *
dtype0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_up3/conv1/filters
�
AGenerator/Gen_up3/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up3/conv1/filters
�
CGenerator/Gen_up3/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *��<*
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up3/conv1/filters
�
LGenerator/Gen_up3/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBGenerator/Gen_up3/conv1/filters/Initializer/truncated_normal/shape*
seed2 *2
_class(
&$loc:@Generator/Gen_up3/conv1/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
@Generator/Gen_up3/conv1/filters/Initializer/truncated_normal/mulMulLGenerator/Gen_up3/conv1/filters/Initializer/truncated_normal/TruncatedNormalCGenerator/Gen_up3/conv1/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up3/conv1/filters
�
<Generator/Gen_up3/conv1/filters/Initializer/truncated_normalAdd@Generator/Gen_up3/conv1/filters/Initializer/truncated_normal/mulAGenerator/Gen_up3/conv1/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up3/conv1/filters
�
Generator/Gen_up3/conv1/filters
VariableV2*
shared_name *2
_class(
&$loc:@Generator/Gen_up3/conv1/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
&Generator/Gen_up3/conv1/filters/AssignAssignGenerator/Gen_up3/conv1/filters<Generator/Gen_up3/conv1/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up3/conv1/filters
�
$Generator/Gen_up3/conv1/filters/readIdentityGenerator/Gen_up3/conv1/filters*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up3/conv1/filters
�
0Generator/Gen_up3/conv1/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up3/conv1/biases
�
Generator/Gen_up3/conv1/biases
VariableV2*
shared_name *1
_class'
%#loc:@Generator/Gen_up3/conv1/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
%Generator/Gen_up3/conv1/biases/AssignAssignGenerator/Gen_up3/conv1/biases0Generator/Gen_up3/conv1/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up3/conv1/biases
�
#Generator/Gen_up3/conv1/biases/readIdentityGenerator/Gen_up3/conv1/biases*
T0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up3/conv1/biases
�
Generator/Conv2D_13Conv2DGenerator/concat$Generator/Gen_up3/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:���*
use_cudnn_on_gpu(
�
Generator/BiasAdd_13BiasAddGenerator/Conv2D_13#Generator/Gen_up3/conv1/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:���
�
7Generator/batch_normalization_13/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_13/gamma
�
&Generator/batch_normalization_13/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_13/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
-Generator/batch_normalization_13/gamma/AssignAssign&Generator/batch_normalization_13/gamma7Generator/batch_normalization_13/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_13/gamma
�
+Generator/batch_normalization_13/gamma/readIdentity&Generator/batch_normalization_13/gamma*
T0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_13/gamma
�
7Generator/batch_normalization_13/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_13/beta
�
%Generator/batch_normalization_13/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_13/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_13/beta/AssignAssign%Generator/batch_normalization_13/beta7Generator/batch_normalization_13/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_13/beta
�
*Generator/batch_normalization_13/beta/readIdentity%Generator/batch_normalization_13/beta*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_13/beta
�
>Generator/batch_normalization_13/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_13/moving_mean
�
,Generator/batch_normalization_13/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_13/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
3Generator/batch_normalization_13/moving_mean/AssignAssign,Generator/batch_normalization_13/moving_mean>Generator/batch_normalization_13/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_13/moving_mean
�
1Generator/batch_normalization_13/moving_mean/readIdentity,Generator/batch_normalization_13/moving_mean*
T0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_13/moving_mean
�
AGenerator/batch_normalization_13/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_13/moving_variance
�
0Generator/batch_normalization_13/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_13/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
7Generator/batch_normalization_13/moving_variance/AssignAssign0Generator/batch_normalization_13/moving_varianceAGenerator/batch_normalization_13/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_13/moving_variance
�
5Generator/batch_normalization_13/moving_variance/readIdentity0Generator/batch_normalization_13/moving_variance*
T0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_13/moving_variance
�
/Generator/batch_normalization_13/FusedBatchNormFusedBatchNormGenerator/BiasAdd_13+Generator/batch_normalization_13/gamma/read*Generator/batch_normalization_13/beta/read1Generator/batch_normalization_13/moving_mean/read5Generator/batch_normalization_13/moving_variance/read*
is_training( *
T0*
data_formatNHWC*E
_output_shapes3
1:���:�:�:�:�*
epsilon%o�:
k
&Generator/batch_normalization_13/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
~
Generator/Relu_26Relu/Generator/batch_normalization_13/FusedBatchNorm*
T0*)
_output_shapes
:���
|
Generator/Neg_13Neg/Generator/batch_normalization_13/FusedBatchNorm*
T0*)
_output_shapes
:���
_
Generator/Relu_27ReluGenerator/Neg_13*
T0*)
_output_shapes
:���
W
Generator/mul_14/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
r
Generator/mul_14MulGenerator/mul_14/xGenerator/Relu_27*
T0*)
_output_shapes
:���
p
Generator/sub_14SubGenerator/Relu_26Generator/mul_14*
T0*)
_output_shapes
:���
�
BGenerator/Gen_up3/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      �  �  *
dtype0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_up3/conv2/filters
�
AGenerator/Gen_up3/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up3/conv2/filters
�
CGenerator/Gen_up3/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *��<*
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up3/conv2/filters
�
LGenerator/Gen_up3/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBGenerator/Gen_up3/conv2/filters/Initializer/truncated_normal/shape*
seed2 *2
_class(
&$loc:@Generator/Gen_up3/conv2/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
@Generator/Gen_up3/conv2/filters/Initializer/truncated_normal/mulMulLGenerator/Gen_up3/conv2/filters/Initializer/truncated_normal/TruncatedNormalCGenerator/Gen_up3/conv2/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up3/conv2/filters
�
<Generator/Gen_up3/conv2/filters/Initializer/truncated_normalAdd@Generator/Gen_up3/conv2/filters/Initializer/truncated_normal/mulAGenerator/Gen_up3/conv2/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up3/conv2/filters
�
Generator/Gen_up3/conv2/filters
VariableV2*
shared_name *2
_class(
&$loc:@Generator/Gen_up3/conv2/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
&Generator/Gen_up3/conv2/filters/AssignAssignGenerator/Gen_up3/conv2/filters<Generator/Gen_up3/conv2/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up3/conv2/filters
�
$Generator/Gen_up3/conv2/filters/readIdentityGenerator/Gen_up3/conv2/filters*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up3/conv2/filters
�
0Generator/Gen_up3/conv2/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up3/conv2/biases
�
Generator/Gen_up3/conv2/biases
VariableV2*
shared_name *1
_class'
%#loc:@Generator/Gen_up3/conv2/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
%Generator/Gen_up3/conv2/biases/AssignAssignGenerator/Gen_up3/conv2/biases0Generator/Gen_up3/conv2/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up3/conv2/biases
�
#Generator/Gen_up3/conv2/biases/readIdentityGenerator/Gen_up3/conv2/biases*
T0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up3/conv2/biases
�
Generator/Conv2D_14Conv2DGenerator/sub_14$Generator/Gen_up3/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:���*
use_cudnn_on_gpu(
�
Generator/BiasAdd_14BiasAddGenerator/Conv2D_14#Generator/Gen_up3/conv2/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:���
�
7Generator/batch_normalization_14/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_14/gamma
�
&Generator/batch_normalization_14/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_14/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
-Generator/batch_normalization_14/gamma/AssignAssign&Generator/batch_normalization_14/gamma7Generator/batch_normalization_14/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_14/gamma
�
+Generator/batch_normalization_14/gamma/readIdentity&Generator/batch_normalization_14/gamma*
T0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_14/gamma
�
7Generator/batch_normalization_14/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_14/beta
�
%Generator/batch_normalization_14/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_14/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_14/beta/AssignAssign%Generator/batch_normalization_14/beta7Generator/batch_normalization_14/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_14/beta
�
*Generator/batch_normalization_14/beta/readIdentity%Generator/batch_normalization_14/beta*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_14/beta
�
>Generator/batch_normalization_14/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_14/moving_mean
�
,Generator/batch_normalization_14/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_14/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
3Generator/batch_normalization_14/moving_mean/AssignAssign,Generator/batch_normalization_14/moving_mean>Generator/batch_normalization_14/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_14/moving_mean
�
1Generator/batch_normalization_14/moving_mean/readIdentity,Generator/batch_normalization_14/moving_mean*
T0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_14/moving_mean
�
AGenerator/batch_normalization_14/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_14/moving_variance
�
0Generator/batch_normalization_14/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_14/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
7Generator/batch_normalization_14/moving_variance/AssignAssign0Generator/batch_normalization_14/moving_varianceAGenerator/batch_normalization_14/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_14/moving_variance
�
5Generator/batch_normalization_14/moving_variance/readIdentity0Generator/batch_normalization_14/moving_variance*
T0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_14/moving_variance
�
/Generator/batch_normalization_14/FusedBatchNormFusedBatchNormGenerator/BiasAdd_14+Generator/batch_normalization_14/gamma/read*Generator/batch_normalization_14/beta/read1Generator/batch_normalization_14/moving_mean/read5Generator/batch_normalization_14/moving_variance/read*
is_training( *
T0*
data_formatNHWC*E
_output_shapes3
1:���:�:�:�:�*
epsilon%o�:
k
&Generator/batch_normalization_14/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
~
Generator/Relu_28Relu/Generator/batch_normalization_14/FusedBatchNorm*
T0*)
_output_shapes
:���
|
Generator/Neg_14Neg/Generator/batch_normalization_14/FusedBatchNorm*
T0*)
_output_shapes
:���
_
Generator/Relu_29ReluGenerator/Neg_14*
T0*)
_output_shapes
:���
W
Generator/mul_15/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
r
Generator/mul_15MulGenerator/mul_15/xGenerator/Relu_29*
T0*)
_output_shapes
:���
p
Generator/sub_15SubGenerator/Relu_28Generator/mul_15*
T0*)
_output_shapes
:���
�
BGenerator/Gen_up3/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      �     *
dtype0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_up3/conv3/filters
�
AGenerator/Gen_up3/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up3/conv3/filters
�
CGenerator/Gen_up3/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *�[�<*
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up3/conv3/filters
�
LGenerator/Gen_up3/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBGenerator/Gen_up3/conv3/filters/Initializer/truncated_normal/shape*
seed2 *2
_class(
&$loc:@Generator/Gen_up3/conv3/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
@Generator/Gen_up3/conv3/filters/Initializer/truncated_normal/mulMulLGenerator/Gen_up3/conv3/filters/Initializer/truncated_normal/TruncatedNormalCGenerator/Gen_up3/conv3/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up3/conv3/filters
�
<Generator/Gen_up3/conv3/filters/Initializer/truncated_normalAdd@Generator/Gen_up3/conv3/filters/Initializer/truncated_normal/mulAGenerator/Gen_up3/conv3/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up3/conv3/filters
�
Generator/Gen_up3/conv3/filters
VariableV2*
shared_name *2
_class(
&$loc:@Generator/Gen_up3/conv3/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
&Generator/Gen_up3/conv3/filters/AssignAssignGenerator/Gen_up3/conv3/filters<Generator/Gen_up3/conv3/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up3/conv3/filters
�
$Generator/Gen_up3/conv3/filters/readIdentityGenerator/Gen_up3/conv3/filters*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up3/conv3/filters
�
0Generator/Gen_up3/conv3/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up3/conv3/biases
�
Generator/Gen_up3/conv3/biases
VariableV2*
shared_name *1
_class'
%#loc:@Generator/Gen_up3/conv3/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
%Generator/Gen_up3/conv3/biases/AssignAssignGenerator/Gen_up3/conv3/biases0Generator/Gen_up3/conv3/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up3/conv3/biases
�
#Generator/Gen_up3/conv3/biases/readIdentityGenerator/Gen_up3/conv3/biases*
T0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up3/conv3/biases
�
Generator/Conv2D_15Conv2DGenerator/sub_15$Generator/Gen_up3/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:���*
use_cudnn_on_gpu(
�
Generator/BiasAdd_15BiasAddGenerator/Conv2D_15#Generator/Gen_up3/conv3/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:���
�
7Generator/batch_normalization_15/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_15/gamma
�
&Generator/batch_normalization_15/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_15/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
-Generator/batch_normalization_15/gamma/AssignAssign&Generator/batch_normalization_15/gamma7Generator/batch_normalization_15/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_15/gamma
�
+Generator/batch_normalization_15/gamma/readIdentity&Generator/batch_normalization_15/gamma*
T0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_15/gamma
�
7Generator/batch_normalization_15/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_15/beta
�
%Generator/batch_normalization_15/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_15/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_15/beta/AssignAssign%Generator/batch_normalization_15/beta7Generator/batch_normalization_15/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_15/beta
�
*Generator/batch_normalization_15/beta/readIdentity%Generator/batch_normalization_15/beta*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_15/beta
�
>Generator/batch_normalization_15/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_15/moving_mean
�
,Generator/batch_normalization_15/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_15/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
3Generator/batch_normalization_15/moving_mean/AssignAssign,Generator/batch_normalization_15/moving_mean>Generator/batch_normalization_15/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_15/moving_mean
�
1Generator/batch_normalization_15/moving_mean/readIdentity,Generator/batch_normalization_15/moving_mean*
T0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_15/moving_mean
�
AGenerator/batch_normalization_15/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_15/moving_variance
�
0Generator/batch_normalization_15/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_15/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
7Generator/batch_normalization_15/moving_variance/AssignAssign0Generator/batch_normalization_15/moving_varianceAGenerator/batch_normalization_15/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_15/moving_variance
�
5Generator/batch_normalization_15/moving_variance/readIdentity0Generator/batch_normalization_15/moving_variance*
T0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_15/moving_variance
�
/Generator/batch_normalization_15/FusedBatchNormFusedBatchNormGenerator/BiasAdd_15+Generator/batch_normalization_15/gamma/read*Generator/batch_normalization_15/beta/read1Generator/batch_normalization_15/moving_mean/read5Generator/batch_normalization_15/moving_variance/read*
is_training( *
T0*
data_formatNHWC*E
_output_shapes3
1:���:�:�:�:�*
epsilon%o�:
k
&Generator/batch_normalization_15/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
~
Generator/Relu_30Relu/Generator/batch_normalization_15/FusedBatchNorm*
T0*)
_output_shapes
:���
|
Generator/Neg_15Neg/Generator/batch_normalization_15/FusedBatchNorm*
T0*)
_output_shapes
:���
_
Generator/Relu_31ReluGenerator/Neg_15*
T0*)
_output_shapes
:���
W
Generator/mul_16/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
r
Generator/mul_16MulGenerator/mul_16/xGenerator/Relu_31*
T0*)
_output_shapes
:���
p
Generator/sub_16SubGenerator/Relu_30Generator/mul_16*
T0*)
_output_shapes
:���
p
Generator/ResizeBilinear_1/sizeConst*
valueB"2  2  *
dtype0*
_output_shapes
:
�
Generator/ResizeBilinear_1ResizeBilinearGenerator/sub_16Generator/ResizeBilinear_1/size*
T0*
align_corners( *)
_output_shapes
:���
Y
Generator/concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
�
Generator/concat_1ConcatV2Generator/ResizeBilinear_1Generator/add_2Generator/concat_1/axis*
T0*
N*)
_output_shapes
:���*

Tidx0
�
BGenerator/Gen_up2/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"         @  *
dtype0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_up2/conv1/filters
�
AGenerator/Gen_up2/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up2/conv1/filters
�
CGenerator/Gen_up2/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *���<*
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up2/conv1/filters
�
LGenerator/Gen_up2/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBGenerator/Gen_up2/conv1/filters/Initializer/truncated_normal/shape*
seed2 *2
_class(
&$loc:@Generator/Gen_up2/conv1/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
@Generator/Gen_up2/conv1/filters/Initializer/truncated_normal/mulMulLGenerator/Gen_up2/conv1/filters/Initializer/truncated_normal/TruncatedNormalCGenerator/Gen_up2/conv1/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up2/conv1/filters
�
<Generator/Gen_up2/conv1/filters/Initializer/truncated_normalAdd@Generator/Gen_up2/conv1/filters/Initializer/truncated_normal/mulAGenerator/Gen_up2/conv1/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up2/conv1/filters
�
Generator/Gen_up2/conv1/filters
VariableV2*
shared_name *2
_class(
&$loc:@Generator/Gen_up2/conv1/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
&Generator/Gen_up2/conv1/filters/AssignAssignGenerator/Gen_up2/conv1/filters<Generator/Gen_up2/conv1/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up2/conv1/filters
�
$Generator/Gen_up2/conv1/filters/readIdentityGenerator/Gen_up2/conv1/filters*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up2/conv1/filters
�
0Generator/Gen_up2/conv1/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up2/conv1/biases
�
Generator/Gen_up2/conv1/biases
VariableV2*
shared_name *1
_class'
%#loc:@Generator/Gen_up2/conv1/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
%Generator/Gen_up2/conv1/biases/AssignAssignGenerator/Gen_up2/conv1/biases0Generator/Gen_up2/conv1/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up2/conv1/biases
�
#Generator/Gen_up2/conv1/biases/readIdentityGenerator/Gen_up2/conv1/biases*
T0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up2/conv1/biases
�
Generator/Conv2D_16Conv2DGenerator/concat_1$Generator/Gen_up2/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:���*
use_cudnn_on_gpu(
�
Generator/BiasAdd_16BiasAddGenerator/Conv2D_16#Generator/Gen_up2/conv1/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:���
�
7Generator/batch_normalization_16/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_16/gamma
�
&Generator/batch_normalization_16/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_16/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
-Generator/batch_normalization_16/gamma/AssignAssign&Generator/batch_normalization_16/gamma7Generator/batch_normalization_16/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_16/gamma
�
+Generator/batch_normalization_16/gamma/readIdentity&Generator/batch_normalization_16/gamma*
T0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_16/gamma
�
7Generator/batch_normalization_16/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_16/beta
�
%Generator/batch_normalization_16/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_16/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_16/beta/AssignAssign%Generator/batch_normalization_16/beta7Generator/batch_normalization_16/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_16/beta
�
*Generator/batch_normalization_16/beta/readIdentity%Generator/batch_normalization_16/beta*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_16/beta
�
>Generator/batch_normalization_16/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_16/moving_mean
�
,Generator/batch_normalization_16/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_16/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
3Generator/batch_normalization_16/moving_mean/AssignAssign,Generator/batch_normalization_16/moving_mean>Generator/batch_normalization_16/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_16/moving_mean
�
1Generator/batch_normalization_16/moving_mean/readIdentity,Generator/batch_normalization_16/moving_mean*
T0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_16/moving_mean
�
AGenerator/batch_normalization_16/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_16/moving_variance
�
0Generator/batch_normalization_16/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_16/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
7Generator/batch_normalization_16/moving_variance/AssignAssign0Generator/batch_normalization_16/moving_varianceAGenerator/batch_normalization_16/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_16/moving_variance
�
5Generator/batch_normalization_16/moving_variance/readIdentity0Generator/batch_normalization_16/moving_variance*
T0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_16/moving_variance
�
/Generator/batch_normalization_16/FusedBatchNormFusedBatchNormGenerator/BiasAdd_16+Generator/batch_normalization_16/gamma/read*Generator/batch_normalization_16/beta/read1Generator/batch_normalization_16/moving_mean/read5Generator/batch_normalization_16/moving_variance/read*
is_training( *
T0*
data_formatNHWC*E
_output_shapes3
1:���:�:�:�:�*
epsilon%o�:
k
&Generator/batch_normalization_16/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
~
Generator/Relu_32Relu/Generator/batch_normalization_16/FusedBatchNorm*
T0*)
_output_shapes
:���
|
Generator/Neg_16Neg/Generator/batch_normalization_16/FusedBatchNorm*
T0*)
_output_shapes
:���
_
Generator/Relu_33ReluGenerator/Neg_16*
T0*)
_output_shapes
:���
W
Generator/mul_17/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
r
Generator/mul_17MulGenerator/mul_17/xGenerator/Relu_33*
T0*)
_output_shapes
:���
p
Generator/sub_17SubGenerator/Relu_32Generator/mul_17*
T0*)
_output_shapes
:���
�
BGenerator/Gen_up2/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      @  @  *
dtype0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_up2/conv2/filters
�
AGenerator/Gen_up2/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up2/conv2/filters
�
CGenerator/Gen_up2/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *���<*
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up2/conv2/filters
�
LGenerator/Gen_up2/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBGenerator/Gen_up2/conv2/filters/Initializer/truncated_normal/shape*
seed2 *2
_class(
&$loc:@Generator/Gen_up2/conv2/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
@Generator/Gen_up2/conv2/filters/Initializer/truncated_normal/mulMulLGenerator/Gen_up2/conv2/filters/Initializer/truncated_normal/TruncatedNormalCGenerator/Gen_up2/conv2/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up2/conv2/filters
�
<Generator/Gen_up2/conv2/filters/Initializer/truncated_normalAdd@Generator/Gen_up2/conv2/filters/Initializer/truncated_normal/mulAGenerator/Gen_up2/conv2/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up2/conv2/filters
�
Generator/Gen_up2/conv2/filters
VariableV2*
shared_name *2
_class(
&$loc:@Generator/Gen_up2/conv2/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
&Generator/Gen_up2/conv2/filters/AssignAssignGenerator/Gen_up2/conv2/filters<Generator/Gen_up2/conv2/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up2/conv2/filters
�
$Generator/Gen_up2/conv2/filters/readIdentityGenerator/Gen_up2/conv2/filters*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up2/conv2/filters
�
0Generator/Gen_up2/conv2/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up2/conv2/biases
�
Generator/Gen_up2/conv2/biases
VariableV2*
shared_name *1
_class'
%#loc:@Generator/Gen_up2/conv2/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
%Generator/Gen_up2/conv2/biases/AssignAssignGenerator/Gen_up2/conv2/biases0Generator/Gen_up2/conv2/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up2/conv2/biases
�
#Generator/Gen_up2/conv2/biases/readIdentityGenerator/Gen_up2/conv2/biases*
T0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up2/conv2/biases
�
Generator/Conv2D_17Conv2DGenerator/sub_17$Generator/Gen_up2/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:���*
use_cudnn_on_gpu(
�
Generator/BiasAdd_17BiasAddGenerator/Conv2D_17#Generator/Gen_up2/conv2/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:���
�
7Generator/batch_normalization_17/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_17/gamma
�
&Generator/batch_normalization_17/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_17/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
-Generator/batch_normalization_17/gamma/AssignAssign&Generator/batch_normalization_17/gamma7Generator/batch_normalization_17/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_17/gamma
�
+Generator/batch_normalization_17/gamma/readIdentity&Generator/batch_normalization_17/gamma*
T0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_17/gamma
�
7Generator/batch_normalization_17/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_17/beta
�
%Generator/batch_normalization_17/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_17/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_17/beta/AssignAssign%Generator/batch_normalization_17/beta7Generator/batch_normalization_17/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_17/beta
�
*Generator/batch_normalization_17/beta/readIdentity%Generator/batch_normalization_17/beta*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_17/beta
�
>Generator/batch_normalization_17/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_17/moving_mean
�
,Generator/batch_normalization_17/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_17/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
3Generator/batch_normalization_17/moving_mean/AssignAssign,Generator/batch_normalization_17/moving_mean>Generator/batch_normalization_17/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_17/moving_mean
�
1Generator/batch_normalization_17/moving_mean/readIdentity,Generator/batch_normalization_17/moving_mean*
T0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_17/moving_mean
�
AGenerator/batch_normalization_17/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_17/moving_variance
�
0Generator/batch_normalization_17/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_17/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
7Generator/batch_normalization_17/moving_variance/AssignAssign0Generator/batch_normalization_17/moving_varianceAGenerator/batch_normalization_17/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_17/moving_variance
�
5Generator/batch_normalization_17/moving_variance/readIdentity0Generator/batch_normalization_17/moving_variance*
T0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_17/moving_variance
�
/Generator/batch_normalization_17/FusedBatchNormFusedBatchNormGenerator/BiasAdd_17+Generator/batch_normalization_17/gamma/read*Generator/batch_normalization_17/beta/read1Generator/batch_normalization_17/moving_mean/read5Generator/batch_normalization_17/moving_variance/read*
is_training( *
T0*
data_formatNHWC*E
_output_shapes3
1:���:�:�:�:�*
epsilon%o�:
k
&Generator/batch_normalization_17/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
~
Generator/Relu_34Relu/Generator/batch_normalization_17/FusedBatchNorm*
T0*)
_output_shapes
:���
|
Generator/Neg_17Neg/Generator/batch_normalization_17/FusedBatchNorm*
T0*)
_output_shapes
:���
_
Generator/Relu_35ReluGenerator/Neg_17*
T0*)
_output_shapes
:���
W
Generator/mul_18/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
r
Generator/mul_18MulGenerator/mul_18/xGenerator/Relu_35*
T0*)
_output_shapes
:���
p
Generator/sub_18SubGenerator/Relu_34Generator/mul_18*
T0*)
_output_shapes
:���
�
BGenerator/Gen_up2/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      @  �   *
dtype0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_up2/conv3/filters
�
AGenerator/Gen_up2/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up2/conv3/filters
�
CGenerator/Gen_up2/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *��*=*
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up2/conv3/filters
�
LGenerator/Gen_up2/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBGenerator/Gen_up2/conv3/filters/Initializer/truncated_normal/shape*
seed2 *2
_class(
&$loc:@Generator/Gen_up2/conv3/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
@Generator/Gen_up2/conv3/filters/Initializer/truncated_normal/mulMulLGenerator/Gen_up2/conv3/filters/Initializer/truncated_normal/TruncatedNormalCGenerator/Gen_up2/conv3/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up2/conv3/filters
�
<Generator/Gen_up2/conv3/filters/Initializer/truncated_normalAdd@Generator/Gen_up2/conv3/filters/Initializer/truncated_normal/mulAGenerator/Gen_up2/conv3/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up2/conv3/filters
�
Generator/Gen_up2/conv3/filters
VariableV2*
shared_name *2
_class(
&$loc:@Generator/Gen_up2/conv3/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
&Generator/Gen_up2/conv3/filters/AssignAssignGenerator/Gen_up2/conv3/filters<Generator/Gen_up2/conv3/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up2/conv3/filters
�
$Generator/Gen_up2/conv3/filters/readIdentityGenerator/Gen_up2/conv3/filters*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up2/conv3/filters
�
0Generator/Gen_up2/conv3/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up2/conv3/biases
�
Generator/Gen_up2/conv3/biases
VariableV2*
shared_name *1
_class'
%#loc:@Generator/Gen_up2/conv3/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
%Generator/Gen_up2/conv3/biases/AssignAssignGenerator/Gen_up2/conv3/biases0Generator/Gen_up2/conv3/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up2/conv3/biases
�
#Generator/Gen_up2/conv3/biases/readIdentityGenerator/Gen_up2/conv3/biases*
T0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up2/conv3/biases
�
Generator/Conv2D_18Conv2DGenerator/sub_18$Generator/Gen_up2/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:���*
use_cudnn_on_gpu(
�
Generator/BiasAdd_18BiasAddGenerator/Conv2D_18#Generator/Gen_up2/conv3/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:���
�
7Generator/batch_normalization_18/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_18/gamma
�
&Generator/batch_normalization_18/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_18/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
-Generator/batch_normalization_18/gamma/AssignAssign&Generator/batch_normalization_18/gamma7Generator/batch_normalization_18/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_18/gamma
�
+Generator/batch_normalization_18/gamma/readIdentity&Generator/batch_normalization_18/gamma*
T0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_18/gamma
�
7Generator/batch_normalization_18/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_18/beta
�
%Generator/batch_normalization_18/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_18/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_18/beta/AssignAssign%Generator/batch_normalization_18/beta7Generator/batch_normalization_18/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_18/beta
�
*Generator/batch_normalization_18/beta/readIdentity%Generator/batch_normalization_18/beta*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_18/beta
�
>Generator/batch_normalization_18/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_18/moving_mean
�
,Generator/batch_normalization_18/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_18/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
3Generator/batch_normalization_18/moving_mean/AssignAssign,Generator/batch_normalization_18/moving_mean>Generator/batch_normalization_18/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_18/moving_mean
�
1Generator/batch_normalization_18/moving_mean/readIdentity,Generator/batch_normalization_18/moving_mean*
T0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_18/moving_mean
�
AGenerator/batch_normalization_18/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_18/moving_variance
�
0Generator/batch_normalization_18/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_18/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
7Generator/batch_normalization_18/moving_variance/AssignAssign0Generator/batch_normalization_18/moving_varianceAGenerator/batch_normalization_18/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_18/moving_variance
�
5Generator/batch_normalization_18/moving_variance/readIdentity0Generator/batch_normalization_18/moving_variance*
T0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_18/moving_variance
�
/Generator/batch_normalization_18/FusedBatchNormFusedBatchNormGenerator/BiasAdd_18+Generator/batch_normalization_18/gamma/read*Generator/batch_normalization_18/beta/read1Generator/batch_normalization_18/moving_mean/read5Generator/batch_normalization_18/moving_variance/read*
is_training( *
T0*
data_formatNHWC*E
_output_shapes3
1:���:�:�:�:�*
epsilon%o�:
k
&Generator/batch_normalization_18/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
~
Generator/Relu_36Relu/Generator/batch_normalization_18/FusedBatchNorm*
T0*)
_output_shapes
:���
|
Generator/Neg_18Neg/Generator/batch_normalization_18/FusedBatchNorm*
T0*)
_output_shapes
:���
_
Generator/Relu_37ReluGenerator/Neg_18*
T0*)
_output_shapes
:���
W
Generator/mul_19/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
r
Generator/mul_19MulGenerator/mul_19/xGenerator/Relu_37*
T0*)
_output_shapes
:���
p
Generator/sub_19SubGenerator/Relu_36Generator/mul_19*
T0*)
_output_shapes
:���
p
Generator/ResizeBilinear_2/sizeConst*
valueB"d  d  *
dtype0*
_output_shapes
:
�
Generator/ResizeBilinear_2ResizeBilinearGenerator/sub_19Generator/ResizeBilinear_2/size*
T0*
align_corners( *)
_output_shapes
:���
Y
Generator/concat_2/axisConst*
value	B :*
dtype0*
_output_shapes
: 
�
Generator/concat_2ConcatV2Generator/ResizeBilinear_2Generator/add_1Generator/concat_2/axis*
T0*
N*)
_output_shapes
:���*

Tidx0
�
BGenerator/Gen_up1/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"         �   *
dtype0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_up1/conv1/filters
�
AGenerator/Gen_up1/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up1/conv1/filters
�
CGenerator/Gen_up1/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *�=*
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up1/conv1/filters
�
LGenerator/Gen_up1/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBGenerator/Gen_up1/conv1/filters/Initializer/truncated_normal/shape*
seed2 *2
_class(
&$loc:@Generator/Gen_up1/conv1/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
@Generator/Gen_up1/conv1/filters/Initializer/truncated_normal/mulMulLGenerator/Gen_up1/conv1/filters/Initializer/truncated_normal/TruncatedNormalCGenerator/Gen_up1/conv1/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up1/conv1/filters
�
<Generator/Gen_up1/conv1/filters/Initializer/truncated_normalAdd@Generator/Gen_up1/conv1/filters/Initializer/truncated_normal/mulAGenerator/Gen_up1/conv1/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up1/conv1/filters
�
Generator/Gen_up1/conv1/filters
VariableV2*
shared_name *2
_class(
&$loc:@Generator/Gen_up1/conv1/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
&Generator/Gen_up1/conv1/filters/AssignAssignGenerator/Gen_up1/conv1/filters<Generator/Gen_up1/conv1/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up1/conv1/filters
�
$Generator/Gen_up1/conv1/filters/readIdentityGenerator/Gen_up1/conv1/filters*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up1/conv1/filters
�
0Generator/Gen_up1/conv1/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up1/conv1/biases
�
Generator/Gen_up1/conv1/biases
VariableV2*
shared_name *1
_class'
%#loc:@Generator/Gen_up1/conv1/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
%Generator/Gen_up1/conv1/biases/AssignAssignGenerator/Gen_up1/conv1/biases0Generator/Gen_up1/conv1/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up1/conv1/biases
�
#Generator/Gen_up1/conv1/biases/readIdentityGenerator/Gen_up1/conv1/biases*
T0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up1/conv1/biases
�
Generator/Conv2D_19Conv2DGenerator/concat_2$Generator/Gen_up1/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:���*
use_cudnn_on_gpu(
�
Generator/BiasAdd_19BiasAddGenerator/Conv2D_19#Generator/Gen_up1/conv1/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:���
�
7Generator/batch_normalization_19/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_19/gamma
�
&Generator/batch_normalization_19/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_19/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
-Generator/batch_normalization_19/gamma/AssignAssign&Generator/batch_normalization_19/gamma7Generator/batch_normalization_19/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_19/gamma
�
+Generator/batch_normalization_19/gamma/readIdentity&Generator/batch_normalization_19/gamma*
T0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_19/gamma
�
7Generator/batch_normalization_19/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_19/beta
�
%Generator/batch_normalization_19/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_19/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_19/beta/AssignAssign%Generator/batch_normalization_19/beta7Generator/batch_normalization_19/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_19/beta
�
*Generator/batch_normalization_19/beta/readIdentity%Generator/batch_normalization_19/beta*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_19/beta
�
>Generator/batch_normalization_19/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_19/moving_mean
�
,Generator/batch_normalization_19/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_19/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
3Generator/batch_normalization_19/moving_mean/AssignAssign,Generator/batch_normalization_19/moving_mean>Generator/batch_normalization_19/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_19/moving_mean
�
1Generator/batch_normalization_19/moving_mean/readIdentity,Generator/batch_normalization_19/moving_mean*
T0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_19/moving_mean
�
AGenerator/batch_normalization_19/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_19/moving_variance
�
0Generator/batch_normalization_19/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_19/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
7Generator/batch_normalization_19/moving_variance/AssignAssign0Generator/batch_normalization_19/moving_varianceAGenerator/batch_normalization_19/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_19/moving_variance
�
5Generator/batch_normalization_19/moving_variance/readIdentity0Generator/batch_normalization_19/moving_variance*
T0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_19/moving_variance
�
/Generator/batch_normalization_19/FusedBatchNormFusedBatchNormGenerator/BiasAdd_19+Generator/batch_normalization_19/gamma/read*Generator/batch_normalization_19/beta/read1Generator/batch_normalization_19/moving_mean/read5Generator/batch_normalization_19/moving_variance/read*
is_training( *
T0*
data_formatNHWC*E
_output_shapes3
1:���:�:�:�:�*
epsilon%o�:
k
&Generator/batch_normalization_19/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
~
Generator/Relu_38Relu/Generator/batch_normalization_19/FusedBatchNorm*
T0*)
_output_shapes
:���
|
Generator/Neg_19Neg/Generator/batch_normalization_19/FusedBatchNorm*
T0*)
_output_shapes
:���
_
Generator/Relu_39ReluGenerator/Neg_19*
T0*)
_output_shapes
:���
W
Generator/mul_20/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
r
Generator/mul_20MulGenerator/mul_20/xGenerator/Relu_39*
T0*)
_output_shapes
:���
p
Generator/sub_20SubGenerator/Relu_38Generator/mul_20*
T0*)
_output_shapes
:���
�
BGenerator/Gen_up1/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      �   �   *
dtype0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_up1/conv2/filters
�
AGenerator/Gen_up1/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up1/conv2/filters
�
CGenerator/Gen_up1/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *�=*
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up1/conv2/filters
�
LGenerator/Gen_up1/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBGenerator/Gen_up1/conv2/filters/Initializer/truncated_normal/shape*
seed2 *2
_class(
&$loc:@Generator/Gen_up1/conv2/filters*
T0*(
_output_shapes
:��*
dtype0*

seed 
�
@Generator/Gen_up1/conv2/filters/Initializer/truncated_normal/mulMulLGenerator/Gen_up1/conv2/filters/Initializer/truncated_normal/TruncatedNormalCGenerator/Gen_up1/conv2/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up1/conv2/filters
�
<Generator/Gen_up1/conv2/filters/Initializer/truncated_normalAdd@Generator/Gen_up1/conv2/filters/Initializer/truncated_normal/mulAGenerator/Gen_up1/conv2/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up1/conv2/filters
�
Generator/Gen_up1/conv2/filters
VariableV2*
shared_name *2
_class(
&$loc:@Generator/Gen_up1/conv2/filters*(
_output_shapes
:��*
dtype0*
shape:��*
	container 
�
&Generator/Gen_up1/conv2/filters/AssignAssignGenerator/Gen_up1/conv2/filters<Generator/Gen_up1/conv2/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up1/conv2/filters
�
$Generator/Gen_up1/conv2/filters/readIdentityGenerator/Gen_up1/conv2/filters*
T0*(
_output_shapes
:��*2
_class(
&$loc:@Generator/Gen_up1/conv2/filters
�
0Generator/Gen_up1/conv2/biases/Initializer/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up1/conv2/biases
�
Generator/Gen_up1/conv2/biases
VariableV2*
shared_name *1
_class'
%#loc:@Generator/Gen_up1/conv2/biases*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
%Generator/Gen_up1/conv2/biases/AssignAssignGenerator/Gen_up1/conv2/biases0Generator/Gen_up1/conv2/biases/Initializer/Const*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up1/conv2/biases
�
#Generator/Gen_up1/conv2/biases/readIdentityGenerator/Gen_up1/conv2/biases*
T0*
_output_shapes	
:�*1
_class'
%#loc:@Generator/Gen_up1/conv2/biases
�
Generator/Conv2D_20Conv2DGenerator/sub_20$Generator/Gen_up1/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:���*
use_cudnn_on_gpu(
�
Generator/BiasAdd_20BiasAddGenerator/Conv2D_20#Generator/Gen_up1/conv2/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:���
�
7Generator/batch_normalization_20/gamma/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_20/gamma
�
&Generator/batch_normalization_20/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_20/gamma*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
-Generator/batch_normalization_20/gamma/AssignAssign&Generator/batch_normalization_20/gamma7Generator/batch_normalization_20/gamma/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_20/gamma
�
+Generator/batch_normalization_20/gamma/readIdentity&Generator/batch_normalization_20/gamma*
T0*
_output_shapes	
:�*9
_class/
-+loc:@Generator/batch_normalization_20/gamma
�
7Generator/batch_normalization_20/beta/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_20/beta
�
%Generator/batch_normalization_20/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_20/beta*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
,Generator/batch_normalization_20/beta/AssignAssign%Generator/batch_normalization_20/beta7Generator/batch_normalization_20/beta/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_20/beta
�
*Generator/batch_normalization_20/beta/readIdentity%Generator/batch_normalization_20/beta*
T0*
_output_shapes	
:�*8
_class.
,*loc:@Generator/batch_normalization_20/beta
�
>Generator/batch_normalization_20/moving_mean/Initializer/zerosConst*
valueB�*    *
dtype0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_20/moving_mean
�
,Generator/batch_normalization_20/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_20/moving_mean*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
3Generator/batch_normalization_20/moving_mean/AssignAssign,Generator/batch_normalization_20/moving_mean>Generator/batch_normalization_20/moving_mean/Initializer/zeros*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_20/moving_mean
�
1Generator/batch_normalization_20/moving_mean/readIdentity,Generator/batch_normalization_20/moving_mean*
T0*
_output_shapes	
:�*?
_class5
31loc:@Generator/batch_normalization_20/moving_mean
�
AGenerator/batch_normalization_20/moving_variance/Initializer/onesConst*
valueB�*  �?*
dtype0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_20/moving_variance
�
0Generator/batch_normalization_20/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_20/moving_variance*
_output_shapes	
:�*
dtype0*
shape:�*
	container 
�
7Generator/batch_normalization_20/moving_variance/AssignAssign0Generator/batch_normalization_20/moving_varianceAGenerator/batch_normalization_20/moving_variance/Initializer/ones*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_20/moving_variance
�
5Generator/batch_normalization_20/moving_variance/readIdentity0Generator/batch_normalization_20/moving_variance*
T0*
_output_shapes	
:�*C
_class9
75loc:@Generator/batch_normalization_20/moving_variance
�
/Generator/batch_normalization_20/FusedBatchNormFusedBatchNormGenerator/BiasAdd_20+Generator/batch_normalization_20/gamma/read*Generator/batch_normalization_20/beta/read1Generator/batch_normalization_20/moving_mean/read5Generator/batch_normalization_20/moving_variance/read*
is_training( *
T0*
data_formatNHWC*E
_output_shapes3
1:���:�:�:�:�*
epsilon%o�:
k
&Generator/batch_normalization_20/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
~
Generator/Relu_40Relu/Generator/batch_normalization_20/FusedBatchNorm*
T0*)
_output_shapes
:���
|
Generator/Neg_20Neg/Generator/batch_normalization_20/FusedBatchNorm*
T0*)
_output_shapes
:���
_
Generator/Relu_41ReluGenerator/Neg_20*
T0*)
_output_shapes
:���
W
Generator/mul_21/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
r
Generator/mul_21MulGenerator/mul_21/xGenerator/Relu_41*
T0*)
_output_shapes
:���
p
Generator/sub_21SubGenerator/Relu_40Generator/mul_21*
T0*)
_output_shapes
:���
�
BGenerator/Gen_up1/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      �   @   *
dtype0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_up1/conv3/filters
�
AGenerator/Gen_up1/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up1/conv3/filters
�
CGenerator/Gen_up1/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *�[q=*
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up1/conv3/filters
�
LGenerator/Gen_up1/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBGenerator/Gen_up1/conv3/filters/Initializer/truncated_normal/shape*
seed2 *2
_class(
&$loc:@Generator/Gen_up1/conv3/filters*
T0*'
_output_shapes
:�@*
dtype0*

seed 
�
@Generator/Gen_up1/conv3/filters/Initializer/truncated_normal/mulMulLGenerator/Gen_up1/conv3/filters/Initializer/truncated_normal/TruncatedNormalCGenerator/Gen_up1/conv3/filters/Initializer/truncated_normal/stddev*
T0*'
_output_shapes
:�@*2
_class(
&$loc:@Generator/Gen_up1/conv3/filters
�
<Generator/Gen_up1/conv3/filters/Initializer/truncated_normalAdd@Generator/Gen_up1/conv3/filters/Initializer/truncated_normal/mulAGenerator/Gen_up1/conv3/filters/Initializer/truncated_normal/mean*
T0*'
_output_shapes
:�@*2
_class(
&$loc:@Generator/Gen_up1/conv3/filters
�
Generator/Gen_up1/conv3/filters
VariableV2*
shared_name *2
_class(
&$loc:@Generator/Gen_up1/conv3/filters*'
_output_shapes
:�@*
dtype0*
shape:�@*
	container 
�
&Generator/Gen_up1/conv3/filters/AssignAssignGenerator/Gen_up1/conv3/filters<Generator/Gen_up1/conv3/filters/Initializer/truncated_normal*
T0*'
_output_shapes
:�@*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up1/conv3/filters
�
$Generator/Gen_up1/conv3/filters/readIdentityGenerator/Gen_up1/conv3/filters*
T0*'
_output_shapes
:�@*2
_class(
&$loc:@Generator/Gen_up1/conv3/filters
�
0Generator/Gen_up1/conv3/biases/Initializer/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@*1
_class'
%#loc:@Generator/Gen_up1/conv3/biases
�
Generator/Gen_up1/conv3/biases
VariableV2*
shared_name *1
_class'
%#loc:@Generator/Gen_up1/conv3/biases*
_output_shapes
:@*
dtype0*
shape:@*
	container 
�
%Generator/Gen_up1/conv3/biases/AssignAssignGenerator/Gen_up1/conv3/biases0Generator/Gen_up1/conv3/biases/Initializer/Const*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up1/conv3/biases
�
#Generator/Gen_up1/conv3/biases/readIdentityGenerator/Gen_up1/conv3/biases*
T0*
_output_shapes
:@*1
_class'
%#loc:@Generator/Gen_up1/conv3/biases
�
Generator/Conv2D_21Conv2DGenerator/sub_21$Generator/Gen_up1/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*(
_output_shapes
:��@*
use_cudnn_on_gpu(
�
Generator/BiasAdd_21BiasAddGenerator/Conv2D_21#Generator/Gen_up1/conv3/biases/read*
T0*
data_formatNHWC*(
_output_shapes
:��@
�
7Generator/batch_normalization_21/gamma/Initializer/onesConst*
valueB@*  �?*
dtype0*
_output_shapes
:@*9
_class/
-+loc:@Generator/batch_normalization_21/gamma
�
&Generator/batch_normalization_21/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_21/gamma*
_output_shapes
:@*
dtype0*
shape:@*
	container 
�
-Generator/batch_normalization_21/gamma/AssignAssign&Generator/batch_normalization_21/gamma7Generator/batch_normalization_21/gamma/Initializer/ones*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_21/gamma
�
+Generator/batch_normalization_21/gamma/readIdentity&Generator/batch_normalization_21/gamma*
T0*
_output_shapes
:@*9
_class/
-+loc:@Generator/batch_normalization_21/gamma
�
7Generator/batch_normalization_21/beta/Initializer/zerosConst*
valueB@*    *
dtype0*
_output_shapes
:@*8
_class.
,*loc:@Generator/batch_normalization_21/beta
�
%Generator/batch_normalization_21/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_21/beta*
_output_shapes
:@*
dtype0*
shape:@*
	container 
�
,Generator/batch_normalization_21/beta/AssignAssign%Generator/batch_normalization_21/beta7Generator/batch_normalization_21/beta/Initializer/zeros*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_21/beta
�
*Generator/batch_normalization_21/beta/readIdentity%Generator/batch_normalization_21/beta*
T0*
_output_shapes
:@*8
_class.
,*loc:@Generator/batch_normalization_21/beta
�
>Generator/batch_normalization_21/moving_mean/Initializer/zerosConst*
valueB@*    *
dtype0*
_output_shapes
:@*?
_class5
31loc:@Generator/batch_normalization_21/moving_mean
�
,Generator/batch_normalization_21/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_21/moving_mean*
_output_shapes
:@*
dtype0*
shape:@*
	container 
�
3Generator/batch_normalization_21/moving_mean/AssignAssign,Generator/batch_normalization_21/moving_mean>Generator/batch_normalization_21/moving_mean/Initializer/zeros*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_21/moving_mean
�
1Generator/batch_normalization_21/moving_mean/readIdentity,Generator/batch_normalization_21/moving_mean*
T0*
_output_shapes
:@*?
_class5
31loc:@Generator/batch_normalization_21/moving_mean
�
AGenerator/batch_normalization_21/moving_variance/Initializer/onesConst*
valueB@*  �?*
dtype0*
_output_shapes
:@*C
_class9
75loc:@Generator/batch_normalization_21/moving_variance
�
0Generator/batch_normalization_21/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_21/moving_variance*
_output_shapes
:@*
dtype0*
shape:@*
	container 
�
7Generator/batch_normalization_21/moving_variance/AssignAssign0Generator/batch_normalization_21/moving_varianceAGenerator/batch_normalization_21/moving_variance/Initializer/ones*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_21/moving_variance
�
5Generator/batch_normalization_21/moving_variance/readIdentity0Generator/batch_normalization_21/moving_variance*
T0*
_output_shapes
:@*C
_class9
75loc:@Generator/batch_normalization_21/moving_variance
�
/Generator/batch_normalization_21/FusedBatchNormFusedBatchNormGenerator/BiasAdd_21+Generator/batch_normalization_21/gamma/read*Generator/batch_normalization_21/beta/read1Generator/batch_normalization_21/moving_mean/read5Generator/batch_normalization_21/moving_variance/read*
is_training( *
T0*
data_formatNHWC*@
_output_shapes.
,:��@:@:@:@:@*
epsilon%o�:
k
&Generator/batch_normalization_21/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
}
Generator/Relu_42Relu/Generator/batch_normalization_21/FusedBatchNorm*
T0*(
_output_shapes
:��@
{
Generator/Neg_21Neg/Generator/batch_normalization_21/FusedBatchNorm*
T0*(
_output_shapes
:��@
^
Generator/Relu_43ReluGenerator/Neg_21*
T0*(
_output_shapes
:��@
W
Generator/mul_22/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
q
Generator/mul_22MulGenerator/mul_22/xGenerator/Relu_43*
T0*(
_output_shapes
:��@
o
Generator/sub_22SubGenerator/Relu_42Generator/mul_22*
T0*(
_output_shapes
:��@
p
Generator/ResizeBilinear_3/sizeConst*
valueB"�  �  *
dtype0*
_output_shapes
:
�
Generator/ResizeBilinear_3ResizeBilinearGenerator/sub_22Generator/ResizeBilinear_3/size*
T0*
align_corners( *(
_output_shapes
:�	�	@
Y
Generator/concat_3/axisConst*
value	B :*
dtype0*
_output_shapes
: 
�
Generator/concat_3ConcatV2Generator/ResizeBilinear_3Generator/addGenerator/concat_3/axis*
T0*
N*)
_output_shapes
:�	�	�*

Tidx0
�
BGenerator/Gen_up0/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"      �   P   *
dtype0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_up0/conv1/filters
�
AGenerator/Gen_up0/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up0/conv1/filters
�
CGenerator/Gen_up0/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *��W=*
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up0/conv1/filters
�
LGenerator/Gen_up0/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBGenerator/Gen_up0/conv1/filters/Initializer/truncated_normal/shape*
seed2 *2
_class(
&$loc:@Generator/Gen_up0/conv1/filters*
T0*'
_output_shapes
:�P*
dtype0*

seed 
�
@Generator/Gen_up0/conv1/filters/Initializer/truncated_normal/mulMulLGenerator/Gen_up0/conv1/filters/Initializer/truncated_normal/TruncatedNormalCGenerator/Gen_up0/conv1/filters/Initializer/truncated_normal/stddev*
T0*'
_output_shapes
:�P*2
_class(
&$loc:@Generator/Gen_up0/conv1/filters
�
<Generator/Gen_up0/conv1/filters/Initializer/truncated_normalAdd@Generator/Gen_up0/conv1/filters/Initializer/truncated_normal/mulAGenerator/Gen_up0/conv1/filters/Initializer/truncated_normal/mean*
T0*'
_output_shapes
:�P*2
_class(
&$loc:@Generator/Gen_up0/conv1/filters
�
Generator/Gen_up0/conv1/filters
VariableV2*
shared_name *2
_class(
&$loc:@Generator/Gen_up0/conv1/filters*'
_output_shapes
:�P*
dtype0*
shape:�P*
	container 
�
&Generator/Gen_up0/conv1/filters/AssignAssignGenerator/Gen_up0/conv1/filters<Generator/Gen_up0/conv1/filters/Initializer/truncated_normal*
T0*'
_output_shapes
:�P*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up0/conv1/filters
�
$Generator/Gen_up0/conv1/filters/readIdentityGenerator/Gen_up0/conv1/filters*
T0*'
_output_shapes
:�P*2
_class(
&$loc:@Generator/Gen_up0/conv1/filters
�
0Generator/Gen_up0/conv1/biases/Initializer/ConstConst*
valueBP*    *
dtype0*
_output_shapes
:P*1
_class'
%#loc:@Generator/Gen_up0/conv1/biases
�
Generator/Gen_up0/conv1/biases
VariableV2*
shared_name *1
_class'
%#loc:@Generator/Gen_up0/conv1/biases*
_output_shapes
:P*
dtype0*
shape:P*
	container 
�
%Generator/Gen_up0/conv1/biases/AssignAssignGenerator/Gen_up0/conv1/biases0Generator/Gen_up0/conv1/biases/Initializer/Const*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up0/conv1/biases
�
#Generator/Gen_up0/conv1/biases/readIdentityGenerator/Gen_up0/conv1/biases*
T0*
_output_shapes
:P*1
_class'
%#loc:@Generator/Gen_up0/conv1/biases
�
Generator/Conv2D_22Conv2DGenerator/concat_3$Generator/Gen_up0/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*(
_output_shapes
:�	�	P*
use_cudnn_on_gpu(
�
Generator/BiasAdd_22BiasAddGenerator/Conv2D_22#Generator/Gen_up0/conv1/biases/read*
T0*
data_formatNHWC*(
_output_shapes
:�	�	P
�
7Generator/batch_normalization_22/gamma/Initializer/onesConst*
valueBP*  �?*
dtype0*
_output_shapes
:P*9
_class/
-+loc:@Generator/batch_normalization_22/gamma
�
&Generator/batch_normalization_22/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_22/gamma*
_output_shapes
:P*
dtype0*
shape:P*
	container 
�
-Generator/batch_normalization_22/gamma/AssignAssign&Generator/batch_normalization_22/gamma7Generator/batch_normalization_22/gamma/Initializer/ones*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_22/gamma
�
+Generator/batch_normalization_22/gamma/readIdentity&Generator/batch_normalization_22/gamma*
T0*
_output_shapes
:P*9
_class/
-+loc:@Generator/batch_normalization_22/gamma
�
7Generator/batch_normalization_22/beta/Initializer/zerosConst*
valueBP*    *
dtype0*
_output_shapes
:P*8
_class.
,*loc:@Generator/batch_normalization_22/beta
�
%Generator/batch_normalization_22/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_22/beta*
_output_shapes
:P*
dtype0*
shape:P*
	container 
�
,Generator/batch_normalization_22/beta/AssignAssign%Generator/batch_normalization_22/beta7Generator/batch_normalization_22/beta/Initializer/zeros*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_22/beta
�
*Generator/batch_normalization_22/beta/readIdentity%Generator/batch_normalization_22/beta*
T0*
_output_shapes
:P*8
_class.
,*loc:@Generator/batch_normalization_22/beta
�
>Generator/batch_normalization_22/moving_mean/Initializer/zerosConst*
valueBP*    *
dtype0*
_output_shapes
:P*?
_class5
31loc:@Generator/batch_normalization_22/moving_mean
�
,Generator/batch_normalization_22/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_22/moving_mean*
_output_shapes
:P*
dtype0*
shape:P*
	container 
�
3Generator/batch_normalization_22/moving_mean/AssignAssign,Generator/batch_normalization_22/moving_mean>Generator/batch_normalization_22/moving_mean/Initializer/zeros*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_22/moving_mean
�
1Generator/batch_normalization_22/moving_mean/readIdentity,Generator/batch_normalization_22/moving_mean*
T0*
_output_shapes
:P*?
_class5
31loc:@Generator/batch_normalization_22/moving_mean
�
AGenerator/batch_normalization_22/moving_variance/Initializer/onesConst*
valueBP*  �?*
dtype0*
_output_shapes
:P*C
_class9
75loc:@Generator/batch_normalization_22/moving_variance
�
0Generator/batch_normalization_22/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_22/moving_variance*
_output_shapes
:P*
dtype0*
shape:P*
	container 
�
7Generator/batch_normalization_22/moving_variance/AssignAssign0Generator/batch_normalization_22/moving_varianceAGenerator/batch_normalization_22/moving_variance/Initializer/ones*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_22/moving_variance
�
5Generator/batch_normalization_22/moving_variance/readIdentity0Generator/batch_normalization_22/moving_variance*
T0*
_output_shapes
:P*C
_class9
75loc:@Generator/batch_normalization_22/moving_variance
�
/Generator/batch_normalization_22/FusedBatchNormFusedBatchNormGenerator/BiasAdd_22+Generator/batch_normalization_22/gamma/read*Generator/batch_normalization_22/beta/read1Generator/batch_normalization_22/moving_mean/read5Generator/batch_normalization_22/moving_variance/read*
is_training( *
T0*
data_formatNHWC*@
_output_shapes.
,:�	�	P:P:P:P:P*
epsilon%o�:
k
&Generator/batch_normalization_22/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
}
Generator/Relu_44Relu/Generator/batch_normalization_22/FusedBatchNorm*
T0*(
_output_shapes
:�	�	P
{
Generator/Neg_22Neg/Generator/batch_normalization_22/FusedBatchNorm*
T0*(
_output_shapes
:�	�	P
^
Generator/Relu_45ReluGenerator/Neg_22*
T0*(
_output_shapes
:�	�	P
W
Generator/mul_23/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
q
Generator/mul_23MulGenerator/mul_23/xGenerator/Relu_45*
T0*(
_output_shapes
:�	�	P
o
Generator/sub_23SubGenerator/Relu_44Generator/mul_23*
T0*(
_output_shapes
:�	�	P
�
BGenerator/Gen_up0/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      P   P   *
dtype0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_up0/conv2/filters
�
AGenerator/Gen_up0/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up0/conv2/filters
�
CGenerator/Gen_up0/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *��W=*
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up0/conv2/filters
�
LGenerator/Gen_up0/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBGenerator/Gen_up0/conv2/filters/Initializer/truncated_normal/shape*
seed2 *2
_class(
&$loc:@Generator/Gen_up0/conv2/filters*
T0*&
_output_shapes
:PP*
dtype0*

seed 
�
@Generator/Gen_up0/conv2/filters/Initializer/truncated_normal/mulMulLGenerator/Gen_up0/conv2/filters/Initializer/truncated_normal/TruncatedNormalCGenerator/Gen_up0/conv2/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
:PP*2
_class(
&$loc:@Generator/Gen_up0/conv2/filters
�
<Generator/Gen_up0/conv2/filters/Initializer/truncated_normalAdd@Generator/Gen_up0/conv2/filters/Initializer/truncated_normal/mulAGenerator/Gen_up0/conv2/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
:PP*2
_class(
&$loc:@Generator/Gen_up0/conv2/filters
�
Generator/Gen_up0/conv2/filters
VariableV2*
shared_name *2
_class(
&$loc:@Generator/Gen_up0/conv2/filters*&
_output_shapes
:PP*
dtype0*
shape:PP*
	container 
�
&Generator/Gen_up0/conv2/filters/AssignAssignGenerator/Gen_up0/conv2/filters<Generator/Gen_up0/conv2/filters/Initializer/truncated_normal*
T0*&
_output_shapes
:PP*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up0/conv2/filters
�
$Generator/Gen_up0/conv2/filters/readIdentityGenerator/Gen_up0/conv2/filters*
T0*&
_output_shapes
:PP*2
_class(
&$loc:@Generator/Gen_up0/conv2/filters
�
0Generator/Gen_up0/conv2/biases/Initializer/ConstConst*
valueBP*    *
dtype0*
_output_shapes
:P*1
_class'
%#loc:@Generator/Gen_up0/conv2/biases
�
Generator/Gen_up0/conv2/biases
VariableV2*
shared_name *1
_class'
%#loc:@Generator/Gen_up0/conv2/biases*
_output_shapes
:P*
dtype0*
shape:P*
	container 
�
%Generator/Gen_up0/conv2/biases/AssignAssignGenerator/Gen_up0/conv2/biases0Generator/Gen_up0/conv2/biases/Initializer/Const*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up0/conv2/biases
�
#Generator/Gen_up0/conv2/biases/readIdentityGenerator/Gen_up0/conv2/biases*
T0*
_output_shapes
:P*1
_class'
%#loc:@Generator/Gen_up0/conv2/biases
�
Generator/Conv2D_23Conv2DGenerator/sub_23$Generator/Gen_up0/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*(
_output_shapes
:�	�	P*
use_cudnn_on_gpu(
�
Generator/BiasAdd_23BiasAddGenerator/Conv2D_23#Generator/Gen_up0/conv2/biases/read*
T0*
data_formatNHWC*(
_output_shapes
:�	�	P
�
7Generator/batch_normalization_23/gamma/Initializer/onesConst*
valueBP*  �?*
dtype0*
_output_shapes
:P*9
_class/
-+loc:@Generator/batch_normalization_23/gamma
�
&Generator/batch_normalization_23/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_23/gamma*
_output_shapes
:P*
dtype0*
shape:P*
	container 
�
-Generator/batch_normalization_23/gamma/AssignAssign&Generator/batch_normalization_23/gamma7Generator/batch_normalization_23/gamma/Initializer/ones*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_23/gamma
�
+Generator/batch_normalization_23/gamma/readIdentity&Generator/batch_normalization_23/gamma*
T0*
_output_shapes
:P*9
_class/
-+loc:@Generator/batch_normalization_23/gamma
�
7Generator/batch_normalization_23/beta/Initializer/zerosConst*
valueBP*    *
dtype0*
_output_shapes
:P*8
_class.
,*loc:@Generator/batch_normalization_23/beta
�
%Generator/batch_normalization_23/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_23/beta*
_output_shapes
:P*
dtype0*
shape:P*
	container 
�
,Generator/batch_normalization_23/beta/AssignAssign%Generator/batch_normalization_23/beta7Generator/batch_normalization_23/beta/Initializer/zeros*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_23/beta
�
*Generator/batch_normalization_23/beta/readIdentity%Generator/batch_normalization_23/beta*
T0*
_output_shapes
:P*8
_class.
,*loc:@Generator/batch_normalization_23/beta
�
>Generator/batch_normalization_23/moving_mean/Initializer/zerosConst*
valueBP*    *
dtype0*
_output_shapes
:P*?
_class5
31loc:@Generator/batch_normalization_23/moving_mean
�
,Generator/batch_normalization_23/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_23/moving_mean*
_output_shapes
:P*
dtype0*
shape:P*
	container 
�
3Generator/batch_normalization_23/moving_mean/AssignAssign,Generator/batch_normalization_23/moving_mean>Generator/batch_normalization_23/moving_mean/Initializer/zeros*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_23/moving_mean
�
1Generator/batch_normalization_23/moving_mean/readIdentity,Generator/batch_normalization_23/moving_mean*
T0*
_output_shapes
:P*?
_class5
31loc:@Generator/batch_normalization_23/moving_mean
�
AGenerator/batch_normalization_23/moving_variance/Initializer/onesConst*
valueBP*  �?*
dtype0*
_output_shapes
:P*C
_class9
75loc:@Generator/batch_normalization_23/moving_variance
�
0Generator/batch_normalization_23/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_23/moving_variance*
_output_shapes
:P*
dtype0*
shape:P*
	container 
�
7Generator/batch_normalization_23/moving_variance/AssignAssign0Generator/batch_normalization_23/moving_varianceAGenerator/batch_normalization_23/moving_variance/Initializer/ones*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_23/moving_variance
�
5Generator/batch_normalization_23/moving_variance/readIdentity0Generator/batch_normalization_23/moving_variance*
T0*
_output_shapes
:P*C
_class9
75loc:@Generator/batch_normalization_23/moving_variance
�
/Generator/batch_normalization_23/FusedBatchNormFusedBatchNormGenerator/BiasAdd_23+Generator/batch_normalization_23/gamma/read*Generator/batch_normalization_23/beta/read1Generator/batch_normalization_23/moving_mean/read5Generator/batch_normalization_23/moving_variance/read*
is_training( *
T0*
data_formatNHWC*@
_output_shapes.
,:�	�	P:P:P:P:P*
epsilon%o�:
k
&Generator/batch_normalization_23/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
}
Generator/Relu_46Relu/Generator/batch_normalization_23/FusedBatchNorm*
T0*(
_output_shapes
:�	�	P
{
Generator/Neg_23Neg/Generator/batch_normalization_23/FusedBatchNorm*
T0*(
_output_shapes
:�	�	P
^
Generator/Relu_47ReluGenerator/Neg_23*
T0*(
_output_shapes
:�	�	P
W
Generator/mul_24/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
q
Generator/mul_24MulGenerator/mul_24/xGenerator/Relu_47*
T0*(
_output_shapes
:�	�	P
o
Generator/sub_24SubGenerator/Relu_46Generator/mul_24*
T0*(
_output_shapes
:�	�	P
�
BGenerator/Gen_up0/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      P       *
dtype0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_up0/conv3/filters
�
AGenerator/Gen_up0/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up0/conv3/filters
�
CGenerator/Gen_up0/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *���=*
dtype0*
_output_shapes
: *2
_class(
&$loc:@Generator/Gen_up0/conv3/filters
�
LGenerator/Gen_up0/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBGenerator/Gen_up0/conv3/filters/Initializer/truncated_normal/shape*
seed2 *2
_class(
&$loc:@Generator/Gen_up0/conv3/filters*
T0*&
_output_shapes
:P *
dtype0*

seed 
�
@Generator/Gen_up0/conv3/filters/Initializer/truncated_normal/mulMulLGenerator/Gen_up0/conv3/filters/Initializer/truncated_normal/TruncatedNormalCGenerator/Gen_up0/conv3/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
:P *2
_class(
&$loc:@Generator/Gen_up0/conv3/filters
�
<Generator/Gen_up0/conv3/filters/Initializer/truncated_normalAdd@Generator/Gen_up0/conv3/filters/Initializer/truncated_normal/mulAGenerator/Gen_up0/conv3/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
:P *2
_class(
&$loc:@Generator/Gen_up0/conv3/filters
�
Generator/Gen_up0/conv3/filters
VariableV2*
shared_name *2
_class(
&$loc:@Generator/Gen_up0/conv3/filters*&
_output_shapes
:P *
dtype0*
shape:P *
	container 
�
&Generator/Gen_up0/conv3/filters/AssignAssignGenerator/Gen_up0/conv3/filters<Generator/Gen_up0/conv3/filters/Initializer/truncated_normal*
T0*&
_output_shapes
:P *
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up0/conv3/filters
�
$Generator/Gen_up0/conv3/filters/readIdentityGenerator/Gen_up0/conv3/filters*
T0*&
_output_shapes
:P *2
_class(
&$loc:@Generator/Gen_up0/conv3/filters
�
0Generator/Gen_up0/conv3/biases/Initializer/ConstConst*
valueB *    *
dtype0*
_output_shapes
: *1
_class'
%#loc:@Generator/Gen_up0/conv3/biases
�
Generator/Gen_up0/conv3/biases
VariableV2*
shared_name *1
_class'
%#loc:@Generator/Gen_up0/conv3/biases*
_output_shapes
: *
dtype0*
shape: *
	container 
�
%Generator/Gen_up0/conv3/biases/AssignAssignGenerator/Gen_up0/conv3/biases0Generator/Gen_up0/conv3/biases/Initializer/Const*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up0/conv3/biases
�
#Generator/Gen_up0/conv3/biases/readIdentityGenerator/Gen_up0/conv3/biases*
T0*
_output_shapes
: *1
_class'
%#loc:@Generator/Gen_up0/conv3/biases
�
Generator/Conv2D_24Conv2DGenerator/sub_24$Generator/Gen_up0/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*(
_output_shapes
:�	�	 *
use_cudnn_on_gpu(
�
Generator/BiasAdd_24BiasAddGenerator/Conv2D_24#Generator/Gen_up0/conv3/biases/read*
T0*
data_formatNHWC*(
_output_shapes
:�	�	 
�
7Generator/batch_normalization_24/gamma/Initializer/onesConst*
valueB *  �?*
dtype0*
_output_shapes
: *9
_class/
-+loc:@Generator/batch_normalization_24/gamma
�
&Generator/batch_normalization_24/gamma
VariableV2*
shared_name *9
_class/
-+loc:@Generator/batch_normalization_24/gamma*
_output_shapes
: *
dtype0*
shape: *
	container 
�
-Generator/batch_normalization_24/gamma/AssignAssign&Generator/batch_normalization_24/gamma7Generator/batch_normalization_24/gamma/Initializer/ones*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_24/gamma
�
+Generator/batch_normalization_24/gamma/readIdentity&Generator/batch_normalization_24/gamma*
T0*
_output_shapes
: *9
_class/
-+loc:@Generator/batch_normalization_24/gamma
�
7Generator/batch_normalization_24/beta/Initializer/zerosConst*
valueB *    *
dtype0*
_output_shapes
: *8
_class.
,*loc:@Generator/batch_normalization_24/beta
�
%Generator/batch_normalization_24/beta
VariableV2*
shared_name *8
_class.
,*loc:@Generator/batch_normalization_24/beta*
_output_shapes
: *
dtype0*
shape: *
	container 
�
,Generator/batch_normalization_24/beta/AssignAssign%Generator/batch_normalization_24/beta7Generator/batch_normalization_24/beta/Initializer/zeros*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_24/beta
�
*Generator/batch_normalization_24/beta/readIdentity%Generator/batch_normalization_24/beta*
T0*
_output_shapes
: *8
_class.
,*loc:@Generator/batch_normalization_24/beta
�
>Generator/batch_normalization_24/moving_mean/Initializer/zerosConst*
valueB *    *
dtype0*
_output_shapes
: *?
_class5
31loc:@Generator/batch_normalization_24/moving_mean
�
,Generator/batch_normalization_24/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@Generator/batch_normalization_24/moving_mean*
_output_shapes
: *
dtype0*
shape: *
	container 
�
3Generator/batch_normalization_24/moving_mean/AssignAssign,Generator/batch_normalization_24/moving_mean>Generator/batch_normalization_24/moving_mean/Initializer/zeros*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_24/moving_mean
�
1Generator/batch_normalization_24/moving_mean/readIdentity,Generator/batch_normalization_24/moving_mean*
T0*
_output_shapes
: *?
_class5
31loc:@Generator/batch_normalization_24/moving_mean
�
AGenerator/batch_normalization_24/moving_variance/Initializer/onesConst*
valueB *  �?*
dtype0*
_output_shapes
: *C
_class9
75loc:@Generator/batch_normalization_24/moving_variance
�
0Generator/batch_normalization_24/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@Generator/batch_normalization_24/moving_variance*
_output_shapes
: *
dtype0*
shape: *
	container 
�
7Generator/batch_normalization_24/moving_variance/AssignAssign0Generator/batch_normalization_24/moving_varianceAGenerator/batch_normalization_24/moving_variance/Initializer/ones*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_24/moving_variance
�
5Generator/batch_normalization_24/moving_variance/readIdentity0Generator/batch_normalization_24/moving_variance*
T0*
_output_shapes
: *C
_class9
75loc:@Generator/batch_normalization_24/moving_variance
�
/Generator/batch_normalization_24/FusedBatchNormFusedBatchNormGenerator/BiasAdd_24+Generator/batch_normalization_24/gamma/read*Generator/batch_normalization_24/beta/read1Generator/batch_normalization_24/moving_mean/read5Generator/batch_normalization_24/moving_variance/read*
is_training( *
T0*
data_formatNHWC*@
_output_shapes.
,:�	�	 : : : : *
epsilon%o�:
k
&Generator/batch_normalization_24/ConstConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
}
Generator/Relu_48Relu/Generator/batch_normalization_24/FusedBatchNorm*
T0*(
_output_shapes
:�	�	 
{
Generator/Neg_24Neg/Generator/batch_normalization_24/FusedBatchNorm*
T0*(
_output_shapes
:�	�	 
^
Generator/Relu_49ReluGenerator/Neg_24*
T0*(
_output_shapes
:�	�	 
W
Generator/mul_25/xConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
q
Generator/mul_25MulGenerator/mul_25/xGenerator/Relu_49*
T0*(
_output_shapes
:�	�	 
o
Generator/sub_25SubGenerator/Relu_48Generator/mul_25*
T0*(
_output_shapes
:�	�	 
�
CGenerator/Gen_last_layer/filters/Initializer/truncated_normal/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:*3
_class)
'%loc:@Generator/Gen_last_layer/filters
�
BGenerator/Gen_last_layer/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *3
_class)
'%loc:@Generator/Gen_last_layer/filters
�
DGenerator/Gen_last_layer/filters/Initializer/truncated_normal/stddevConst*
valueB
 *HY�>*
dtype0*
_output_shapes
: *3
_class)
'%loc:@Generator/Gen_last_layer/filters
�
MGenerator/Gen_last_layer/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCGenerator/Gen_last_layer/filters/Initializer/truncated_normal/shape*
seed2 *3
_class)
'%loc:@Generator/Gen_last_layer/filters*
T0*&
_output_shapes
: *
dtype0*

seed 
�
AGenerator/Gen_last_layer/filters/Initializer/truncated_normal/mulMulMGenerator/Gen_last_layer/filters/Initializer/truncated_normal/TruncatedNormalDGenerator/Gen_last_layer/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
: *3
_class)
'%loc:@Generator/Gen_last_layer/filters
�
=Generator/Gen_last_layer/filters/Initializer/truncated_normalAddAGenerator/Gen_last_layer/filters/Initializer/truncated_normal/mulBGenerator/Gen_last_layer/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
: *3
_class)
'%loc:@Generator/Gen_last_layer/filters
�
 Generator/Gen_last_layer/filters
VariableV2*
shared_name *3
_class)
'%loc:@Generator/Gen_last_layer/filters*&
_output_shapes
: *
dtype0*
shape: *
	container 
�
'Generator/Gen_last_layer/filters/AssignAssign Generator/Gen_last_layer/filters=Generator/Gen_last_layer/filters/Initializer/truncated_normal*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_last_layer/filters
�
%Generator/Gen_last_layer/filters/readIdentity Generator/Gen_last_layer/filters*
T0*&
_output_shapes
: *3
_class)
'%loc:@Generator/Gen_last_layer/filters
�
1Generator/Gen_last_layer/biases/Initializer/ConstConst*
valueB*    *
dtype0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_last_layer/biases
�
Generator/Gen_last_layer/biases
VariableV2*
shared_name *2
_class(
&$loc:@Generator/Gen_last_layer/biases*
_output_shapes
:*
dtype0*
shape:*
	container 
�
&Generator/Gen_last_layer/biases/AssignAssignGenerator/Gen_last_layer/biases1Generator/Gen_last_layer/biases/Initializer/Const*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_last_layer/biases
�
$Generator/Gen_last_layer/biases/readIdentityGenerator/Gen_last_layer/biases*
T0*
_output_shapes
:*2
_class(
&$loc:@Generator/Gen_last_layer/biases
�
Generator/Conv2D_25Conv2DGenerator/sub_25%Generator/Gen_last_layer/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*(
_output_shapes
:�	�	*
use_cudnn_on_gpu(
�
Generator/BiasAdd_25BiasAddGenerator/Conv2D_25$Generator/Gen_last_layer/biases/read*
T0*
data_formatNHWC*(
_output_shapes
:�	�	
u
Generator/SqueezeSqueezeGenerator/BiasAdd_25*
T0*
squeeze_dims
 *$
_output_shapes
:�	�	
Q
Generator/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
[
Generator/split/split_dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
Generator/splitSplitGenerator/split/split_dimGenerator/Squeeze*
T0*D
_output_shapes2
0:�	�	:�	�	:�	�	*
	num_split
W
Generator/sub_26/yConst*
valueB
 *   C*
dtype0*
_output_shapes
: 
m
Generator/sub_26SubGenerator/split:1Generator/sub_26/y*
T0*$
_output_shapes
:�	�	
W
Generator/mul_26/xConst*
valueB
 *���?*
dtype0*
_output_shapes
: 
l
Generator/mul_26MulGenerator/mul_26/xGenerator/sub_26*
T0*$
_output_shapes
:�	�	
h
Generator/add_4AddGenerator/splitGenerator/mul_26*
T0*$
_output_shapes
:�	�	
W
Generator/sub_27/yConst*
valueB
 *   C*
dtype0*
_output_shapes
: 
m
Generator/sub_27SubGenerator/split:1Generator/sub_27/y*
T0*$
_output_shapes
:�	�	
W
Generator/mul_27/xConst*
valueB
 *��6?*
dtype0*
_output_shapes
: 
l
Generator/mul_27MulGenerator/mul_27/xGenerator/sub_27*
T0*$
_output_shapes
:�	�	
i
Generator/sub_28SubGenerator/splitGenerator/mul_27*
T0*$
_output_shapes
:�	�	
W
Generator/sub_29/yConst*
valueB
 *   C*
dtype0*
_output_shapes
: 
m
Generator/sub_29SubGenerator/split:2Generator/sub_29/y*
T0*$
_output_shapes
:�	�	
W
Generator/mul_28/xConst*
valueB
 *� �>*
dtype0*
_output_shapes
: 
l
Generator/mul_28MulGenerator/mul_28/xGenerator/sub_29*
T0*$
_output_shapes
:�	�	
j
Generator/sub_30SubGenerator/sub_28Generator/mul_28*
T0*$
_output_shapes
:�	�	
W
Generator/sub_31/yConst*
valueB
 *   C*
dtype0*
_output_shapes
: 
m
Generator/sub_31SubGenerator/split:2Generator/sub_31/y*
T0*$
_output_shapes
:�	�	
W
Generator/mul_29/xConst*
valueB
 *���?*
dtype0*
_output_shapes
: 
l
Generator/mul_29MulGenerator/mul_29/xGenerator/sub_31*
T0*$
_output_shapes
:�	�	
h
Generator/add_5AddGenerator/splitGenerator/mul_29*
T0*$
_output_shapes
:�	�	
b
Generator/concat_4/axisConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Generator/concat_4ConcatV2Generator/add_4Generator/sub_30Generator/add_5Generator/concat_4/axis*
T0*
N*$
_output_shapes
:�	�	*

Tidx0
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�0
save/SaveV2/tensor_namesConst*�/
value�/B�/�BGenerator/Gen_center/biasesBGenerator/Gen_center/filtersB Generator/Gen_down0/conv1/biasesB!Generator/Gen_down0/conv1/filtersB Generator/Gen_down0/conv2/biasesB!Generator/Gen_down0/conv2/filtersB Generator/Gen_down0/conv3/biasesB!Generator/Gen_down0/conv3/filtersB Generator/Gen_down1/conv1/biasesB!Generator/Gen_down1/conv1/filtersB Generator/Gen_down1/conv2/biasesB!Generator/Gen_down1/conv2/filtersB Generator/Gen_down1/conv3/biasesB!Generator/Gen_down1/conv3/filtersB Generator/Gen_down2/conv1/biasesB!Generator/Gen_down2/conv1/filtersB Generator/Gen_down2/conv2/biasesB!Generator/Gen_down2/conv2/filtersB Generator/Gen_down2/conv3/biasesB!Generator/Gen_down2/conv3/filtersB Generator/Gen_down3/conv1/biasesB!Generator/Gen_down3/conv1/filtersB Generator/Gen_down3/conv2/biasesB!Generator/Gen_down3/conv2/filtersB Generator/Gen_down3/conv3/biasesB!Generator/Gen_down3/conv3/filtersBGenerator/Gen_last_layer/biasesB Generator/Gen_last_layer/filtersBGenerator/Gen_up0/conv1/biasesBGenerator/Gen_up0/conv1/filtersBGenerator/Gen_up0/conv2/biasesBGenerator/Gen_up0/conv2/filtersBGenerator/Gen_up0/conv3/biasesBGenerator/Gen_up0/conv3/filtersBGenerator/Gen_up1/conv1/biasesBGenerator/Gen_up1/conv1/filtersBGenerator/Gen_up1/conv2/biasesBGenerator/Gen_up1/conv2/filtersBGenerator/Gen_up1/conv3/biasesBGenerator/Gen_up1/conv3/filtersBGenerator/Gen_up2/conv1/biasesBGenerator/Gen_up2/conv1/filtersBGenerator/Gen_up2/conv2/biasesBGenerator/Gen_up2/conv2/filtersBGenerator/Gen_up2/conv3/biasesBGenerator/Gen_up2/conv3/filtersBGenerator/Gen_up3/conv1/biasesBGenerator/Gen_up3/conv1/filtersBGenerator/Gen_up3/conv2/biasesBGenerator/Gen_up3/conv2/filtersBGenerator/Gen_up3/conv3/biasesBGenerator/Gen_up3/conv3/filtersB"Generator/batch_normalization/betaB#Generator/batch_normalization/gammaB)Generator/batch_normalization/moving_meanB-Generator/batch_normalization/moving_varianceB$Generator/batch_normalization_1/betaB%Generator/batch_normalization_1/gammaB+Generator/batch_normalization_1/moving_meanB/Generator/batch_normalization_1/moving_varianceB%Generator/batch_normalization_10/betaB&Generator/batch_normalization_10/gammaB,Generator/batch_normalization_10/moving_meanB0Generator/batch_normalization_10/moving_varianceB%Generator/batch_normalization_11/betaB&Generator/batch_normalization_11/gammaB,Generator/batch_normalization_11/moving_meanB0Generator/batch_normalization_11/moving_varianceB%Generator/batch_normalization_12/betaB&Generator/batch_normalization_12/gammaB,Generator/batch_normalization_12/moving_meanB0Generator/batch_normalization_12/moving_varianceB%Generator/batch_normalization_13/betaB&Generator/batch_normalization_13/gammaB,Generator/batch_normalization_13/moving_meanB0Generator/batch_normalization_13/moving_varianceB%Generator/batch_normalization_14/betaB&Generator/batch_normalization_14/gammaB,Generator/batch_normalization_14/moving_meanB0Generator/batch_normalization_14/moving_varianceB%Generator/batch_normalization_15/betaB&Generator/batch_normalization_15/gammaB,Generator/batch_normalization_15/moving_meanB0Generator/batch_normalization_15/moving_varianceB%Generator/batch_normalization_16/betaB&Generator/batch_normalization_16/gammaB,Generator/batch_normalization_16/moving_meanB0Generator/batch_normalization_16/moving_varianceB%Generator/batch_normalization_17/betaB&Generator/batch_normalization_17/gammaB,Generator/batch_normalization_17/moving_meanB0Generator/batch_normalization_17/moving_varianceB%Generator/batch_normalization_18/betaB&Generator/batch_normalization_18/gammaB,Generator/batch_normalization_18/moving_meanB0Generator/batch_normalization_18/moving_varianceB%Generator/batch_normalization_19/betaB&Generator/batch_normalization_19/gammaB,Generator/batch_normalization_19/moving_meanB0Generator/batch_normalization_19/moving_varianceB$Generator/batch_normalization_2/betaB%Generator/batch_normalization_2/gammaB+Generator/batch_normalization_2/moving_meanB/Generator/batch_normalization_2/moving_varianceB%Generator/batch_normalization_20/betaB&Generator/batch_normalization_20/gammaB,Generator/batch_normalization_20/moving_meanB0Generator/batch_normalization_20/moving_varianceB%Generator/batch_normalization_21/betaB&Generator/batch_normalization_21/gammaB,Generator/batch_normalization_21/moving_meanB0Generator/batch_normalization_21/moving_varianceB%Generator/batch_normalization_22/betaB&Generator/batch_normalization_22/gammaB,Generator/batch_normalization_22/moving_meanB0Generator/batch_normalization_22/moving_varianceB%Generator/batch_normalization_23/betaB&Generator/batch_normalization_23/gammaB,Generator/batch_normalization_23/moving_meanB0Generator/batch_normalization_23/moving_varianceB%Generator/batch_normalization_24/betaB&Generator/batch_normalization_24/gammaB,Generator/batch_normalization_24/moving_meanB0Generator/batch_normalization_24/moving_varianceB$Generator/batch_normalization_3/betaB%Generator/batch_normalization_3/gammaB+Generator/batch_normalization_3/moving_meanB/Generator/batch_normalization_3/moving_varianceB$Generator/batch_normalization_4/betaB%Generator/batch_normalization_4/gammaB+Generator/batch_normalization_4/moving_meanB/Generator/batch_normalization_4/moving_varianceB$Generator/batch_normalization_5/betaB%Generator/batch_normalization_5/gammaB+Generator/batch_normalization_5/moving_meanB/Generator/batch_normalization_5/moving_varianceB$Generator/batch_normalization_6/betaB%Generator/batch_normalization_6/gammaB+Generator/batch_normalization_6/moving_meanB/Generator/batch_normalization_6/moving_varianceB$Generator/batch_normalization_7/betaB%Generator/batch_normalization_7/gammaB+Generator/batch_normalization_7/moving_meanB/Generator/batch_normalization_7/moving_varianceB$Generator/batch_normalization_8/betaB%Generator/batch_normalization_8/gammaB+Generator/batch_normalization_8/moving_meanB/Generator/batch_normalization_8/moving_varianceB$Generator/batch_normalization_9/betaB%Generator/batch_normalization_9/gammaB+Generator/batch_normalization_9/moving_meanB/Generator/batch_normalization_9/moving_variance*
dtype0*
_output_shapes	
:�
�
save/SaveV2/shape_and_slicesConst*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:�
�1
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesGenerator/Gen_center/biasesGenerator/Gen_center/filters Generator/Gen_down0/conv1/biases!Generator/Gen_down0/conv1/filters Generator/Gen_down0/conv2/biases!Generator/Gen_down0/conv2/filters Generator/Gen_down0/conv3/biases!Generator/Gen_down0/conv3/filters Generator/Gen_down1/conv1/biases!Generator/Gen_down1/conv1/filters Generator/Gen_down1/conv2/biases!Generator/Gen_down1/conv2/filters Generator/Gen_down1/conv3/biases!Generator/Gen_down1/conv3/filters Generator/Gen_down2/conv1/biases!Generator/Gen_down2/conv1/filters Generator/Gen_down2/conv2/biases!Generator/Gen_down2/conv2/filters Generator/Gen_down2/conv3/biases!Generator/Gen_down2/conv3/filters Generator/Gen_down3/conv1/biases!Generator/Gen_down3/conv1/filters Generator/Gen_down3/conv2/biases!Generator/Gen_down3/conv2/filters Generator/Gen_down3/conv3/biases!Generator/Gen_down3/conv3/filtersGenerator/Gen_last_layer/biases Generator/Gen_last_layer/filtersGenerator/Gen_up0/conv1/biasesGenerator/Gen_up0/conv1/filtersGenerator/Gen_up0/conv2/biasesGenerator/Gen_up0/conv2/filtersGenerator/Gen_up0/conv3/biasesGenerator/Gen_up0/conv3/filtersGenerator/Gen_up1/conv1/biasesGenerator/Gen_up1/conv1/filtersGenerator/Gen_up1/conv2/biasesGenerator/Gen_up1/conv2/filtersGenerator/Gen_up1/conv3/biasesGenerator/Gen_up1/conv3/filtersGenerator/Gen_up2/conv1/biasesGenerator/Gen_up2/conv1/filtersGenerator/Gen_up2/conv2/biasesGenerator/Gen_up2/conv2/filtersGenerator/Gen_up2/conv3/biasesGenerator/Gen_up2/conv3/filtersGenerator/Gen_up3/conv1/biasesGenerator/Gen_up3/conv1/filtersGenerator/Gen_up3/conv2/biasesGenerator/Gen_up3/conv2/filtersGenerator/Gen_up3/conv3/biasesGenerator/Gen_up3/conv3/filters"Generator/batch_normalization/beta#Generator/batch_normalization/gamma)Generator/batch_normalization/moving_mean-Generator/batch_normalization/moving_variance$Generator/batch_normalization_1/beta%Generator/batch_normalization_1/gamma+Generator/batch_normalization_1/moving_mean/Generator/batch_normalization_1/moving_variance%Generator/batch_normalization_10/beta&Generator/batch_normalization_10/gamma,Generator/batch_normalization_10/moving_mean0Generator/batch_normalization_10/moving_variance%Generator/batch_normalization_11/beta&Generator/batch_normalization_11/gamma,Generator/batch_normalization_11/moving_mean0Generator/batch_normalization_11/moving_variance%Generator/batch_normalization_12/beta&Generator/batch_normalization_12/gamma,Generator/batch_normalization_12/moving_mean0Generator/batch_normalization_12/moving_variance%Generator/batch_normalization_13/beta&Generator/batch_normalization_13/gamma,Generator/batch_normalization_13/moving_mean0Generator/batch_normalization_13/moving_variance%Generator/batch_normalization_14/beta&Generator/batch_normalization_14/gamma,Generator/batch_normalization_14/moving_mean0Generator/batch_normalization_14/moving_variance%Generator/batch_normalization_15/beta&Generator/batch_normalization_15/gamma,Generator/batch_normalization_15/moving_mean0Generator/batch_normalization_15/moving_variance%Generator/batch_normalization_16/beta&Generator/batch_normalization_16/gamma,Generator/batch_normalization_16/moving_mean0Generator/batch_normalization_16/moving_variance%Generator/batch_normalization_17/beta&Generator/batch_normalization_17/gamma,Generator/batch_normalization_17/moving_mean0Generator/batch_normalization_17/moving_variance%Generator/batch_normalization_18/beta&Generator/batch_normalization_18/gamma,Generator/batch_normalization_18/moving_mean0Generator/batch_normalization_18/moving_variance%Generator/batch_normalization_19/beta&Generator/batch_normalization_19/gamma,Generator/batch_normalization_19/moving_mean0Generator/batch_normalization_19/moving_variance$Generator/batch_normalization_2/beta%Generator/batch_normalization_2/gamma+Generator/batch_normalization_2/moving_mean/Generator/batch_normalization_2/moving_variance%Generator/batch_normalization_20/beta&Generator/batch_normalization_20/gamma,Generator/batch_normalization_20/moving_mean0Generator/batch_normalization_20/moving_variance%Generator/batch_normalization_21/beta&Generator/batch_normalization_21/gamma,Generator/batch_normalization_21/moving_mean0Generator/batch_normalization_21/moving_variance%Generator/batch_normalization_22/beta&Generator/batch_normalization_22/gamma,Generator/batch_normalization_22/moving_mean0Generator/batch_normalization_22/moving_variance%Generator/batch_normalization_23/beta&Generator/batch_normalization_23/gamma,Generator/batch_normalization_23/moving_mean0Generator/batch_normalization_23/moving_variance%Generator/batch_normalization_24/beta&Generator/batch_normalization_24/gamma,Generator/batch_normalization_24/moving_mean0Generator/batch_normalization_24/moving_variance$Generator/batch_normalization_3/beta%Generator/batch_normalization_3/gamma+Generator/batch_normalization_3/moving_mean/Generator/batch_normalization_3/moving_variance$Generator/batch_normalization_4/beta%Generator/batch_normalization_4/gamma+Generator/batch_normalization_4/moving_mean/Generator/batch_normalization_4/moving_variance$Generator/batch_normalization_5/beta%Generator/batch_normalization_5/gamma+Generator/batch_normalization_5/moving_mean/Generator/batch_normalization_5/moving_variance$Generator/batch_normalization_6/beta%Generator/batch_normalization_6/gamma+Generator/batch_normalization_6/moving_mean/Generator/batch_normalization_6/moving_variance$Generator/batch_normalization_7/beta%Generator/batch_normalization_7/gamma+Generator/batch_normalization_7/moving_mean/Generator/batch_normalization_7/moving_variance$Generator/batch_normalization_8/beta%Generator/batch_normalization_8/gamma+Generator/batch_normalization_8/moving_mean/Generator/batch_normalization_8/moving_variance$Generator/batch_normalization_9/beta%Generator/batch_normalization_9/gamma+Generator/batch_normalization_9/moving_mean/Generator/batch_normalization_9/moving_variance*�
dtypes�
�2�
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_output_shapes
: *
_class
loc:@save/Const
�0
save/RestoreV2/tensor_namesConst*�/
value�/B�/�BGenerator/Gen_center/biasesBGenerator/Gen_center/filtersB Generator/Gen_down0/conv1/biasesB!Generator/Gen_down0/conv1/filtersB Generator/Gen_down0/conv2/biasesB!Generator/Gen_down0/conv2/filtersB Generator/Gen_down0/conv3/biasesB!Generator/Gen_down0/conv3/filtersB Generator/Gen_down1/conv1/biasesB!Generator/Gen_down1/conv1/filtersB Generator/Gen_down1/conv2/biasesB!Generator/Gen_down1/conv2/filtersB Generator/Gen_down1/conv3/biasesB!Generator/Gen_down1/conv3/filtersB Generator/Gen_down2/conv1/biasesB!Generator/Gen_down2/conv1/filtersB Generator/Gen_down2/conv2/biasesB!Generator/Gen_down2/conv2/filtersB Generator/Gen_down2/conv3/biasesB!Generator/Gen_down2/conv3/filtersB Generator/Gen_down3/conv1/biasesB!Generator/Gen_down3/conv1/filtersB Generator/Gen_down3/conv2/biasesB!Generator/Gen_down3/conv2/filtersB Generator/Gen_down3/conv3/biasesB!Generator/Gen_down3/conv3/filtersBGenerator/Gen_last_layer/biasesB Generator/Gen_last_layer/filtersBGenerator/Gen_up0/conv1/biasesBGenerator/Gen_up0/conv1/filtersBGenerator/Gen_up0/conv2/biasesBGenerator/Gen_up0/conv2/filtersBGenerator/Gen_up0/conv3/biasesBGenerator/Gen_up0/conv3/filtersBGenerator/Gen_up1/conv1/biasesBGenerator/Gen_up1/conv1/filtersBGenerator/Gen_up1/conv2/biasesBGenerator/Gen_up1/conv2/filtersBGenerator/Gen_up1/conv3/biasesBGenerator/Gen_up1/conv3/filtersBGenerator/Gen_up2/conv1/biasesBGenerator/Gen_up2/conv1/filtersBGenerator/Gen_up2/conv2/biasesBGenerator/Gen_up2/conv2/filtersBGenerator/Gen_up2/conv3/biasesBGenerator/Gen_up2/conv3/filtersBGenerator/Gen_up3/conv1/biasesBGenerator/Gen_up3/conv1/filtersBGenerator/Gen_up3/conv2/biasesBGenerator/Gen_up3/conv2/filtersBGenerator/Gen_up3/conv3/biasesBGenerator/Gen_up3/conv3/filtersB"Generator/batch_normalization/betaB#Generator/batch_normalization/gammaB)Generator/batch_normalization/moving_meanB-Generator/batch_normalization/moving_varianceB$Generator/batch_normalization_1/betaB%Generator/batch_normalization_1/gammaB+Generator/batch_normalization_1/moving_meanB/Generator/batch_normalization_1/moving_varianceB%Generator/batch_normalization_10/betaB&Generator/batch_normalization_10/gammaB,Generator/batch_normalization_10/moving_meanB0Generator/batch_normalization_10/moving_varianceB%Generator/batch_normalization_11/betaB&Generator/batch_normalization_11/gammaB,Generator/batch_normalization_11/moving_meanB0Generator/batch_normalization_11/moving_varianceB%Generator/batch_normalization_12/betaB&Generator/batch_normalization_12/gammaB,Generator/batch_normalization_12/moving_meanB0Generator/batch_normalization_12/moving_varianceB%Generator/batch_normalization_13/betaB&Generator/batch_normalization_13/gammaB,Generator/batch_normalization_13/moving_meanB0Generator/batch_normalization_13/moving_varianceB%Generator/batch_normalization_14/betaB&Generator/batch_normalization_14/gammaB,Generator/batch_normalization_14/moving_meanB0Generator/batch_normalization_14/moving_varianceB%Generator/batch_normalization_15/betaB&Generator/batch_normalization_15/gammaB,Generator/batch_normalization_15/moving_meanB0Generator/batch_normalization_15/moving_varianceB%Generator/batch_normalization_16/betaB&Generator/batch_normalization_16/gammaB,Generator/batch_normalization_16/moving_meanB0Generator/batch_normalization_16/moving_varianceB%Generator/batch_normalization_17/betaB&Generator/batch_normalization_17/gammaB,Generator/batch_normalization_17/moving_meanB0Generator/batch_normalization_17/moving_varianceB%Generator/batch_normalization_18/betaB&Generator/batch_normalization_18/gammaB,Generator/batch_normalization_18/moving_meanB0Generator/batch_normalization_18/moving_varianceB%Generator/batch_normalization_19/betaB&Generator/batch_normalization_19/gammaB,Generator/batch_normalization_19/moving_meanB0Generator/batch_normalization_19/moving_varianceB$Generator/batch_normalization_2/betaB%Generator/batch_normalization_2/gammaB+Generator/batch_normalization_2/moving_meanB/Generator/batch_normalization_2/moving_varianceB%Generator/batch_normalization_20/betaB&Generator/batch_normalization_20/gammaB,Generator/batch_normalization_20/moving_meanB0Generator/batch_normalization_20/moving_varianceB%Generator/batch_normalization_21/betaB&Generator/batch_normalization_21/gammaB,Generator/batch_normalization_21/moving_meanB0Generator/batch_normalization_21/moving_varianceB%Generator/batch_normalization_22/betaB&Generator/batch_normalization_22/gammaB,Generator/batch_normalization_22/moving_meanB0Generator/batch_normalization_22/moving_varianceB%Generator/batch_normalization_23/betaB&Generator/batch_normalization_23/gammaB,Generator/batch_normalization_23/moving_meanB0Generator/batch_normalization_23/moving_varianceB%Generator/batch_normalization_24/betaB&Generator/batch_normalization_24/gammaB,Generator/batch_normalization_24/moving_meanB0Generator/batch_normalization_24/moving_varianceB$Generator/batch_normalization_3/betaB%Generator/batch_normalization_3/gammaB+Generator/batch_normalization_3/moving_meanB/Generator/batch_normalization_3/moving_varianceB$Generator/batch_normalization_4/betaB%Generator/batch_normalization_4/gammaB+Generator/batch_normalization_4/moving_meanB/Generator/batch_normalization_4/moving_varianceB$Generator/batch_normalization_5/betaB%Generator/batch_normalization_5/gammaB+Generator/batch_normalization_5/moving_meanB/Generator/batch_normalization_5/moving_varianceB$Generator/batch_normalization_6/betaB%Generator/batch_normalization_6/gammaB+Generator/batch_normalization_6/moving_meanB/Generator/batch_normalization_6/moving_varianceB$Generator/batch_normalization_7/betaB%Generator/batch_normalization_7/gammaB+Generator/batch_normalization_7/moving_meanB/Generator/batch_normalization_7/moving_varianceB$Generator/batch_normalization_8/betaB%Generator/batch_normalization_8/gammaB+Generator/batch_normalization_8/moving_meanB/Generator/batch_normalization_8/moving_varianceB$Generator/batch_normalization_9/betaB%Generator/batch_normalization_9/gammaB+Generator/batch_normalization_9/moving_meanB/Generator/batch_normalization_9/moving_variance*
dtype0*
_output_shapes	
:�
�
save/RestoreV2/shape_and_slicesConst*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:�
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*�
dtypes�
�2�*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
�
save/AssignAssignGenerator/Gen_center/biasessave/RestoreV2*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/Gen_center/biases
�
save/Assign_1AssignGenerator/Gen_center/filterssave/RestoreV2:1*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/Gen_center/filters
�
save/Assign_2Assign Generator/Gen_down0/conv1/biasessave/RestoreV2:2*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down0/conv1/biases
�
save/Assign_3Assign!Generator/Gen_down0/conv1/filterssave/RestoreV2:3*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down0/conv1/filters
�
save/Assign_4Assign Generator/Gen_down0/conv2/biasessave/RestoreV2:4*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down0/conv2/biases
�
save/Assign_5Assign!Generator/Gen_down0/conv2/filterssave/RestoreV2:5*
T0*&
_output_shapes
:  *
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down0/conv2/filters
�
save/Assign_6Assign Generator/Gen_down0/conv3/biasessave/RestoreV2:6*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down0/conv3/biases
�
save/Assign_7Assign!Generator/Gen_down0/conv3/filterssave/RestoreV2:7*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down0/conv3/filters
�
save/Assign_8Assign Generator/Gen_down1/conv1/biasessave/RestoreV2:8*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down1/conv1/biases
�
save/Assign_9Assign!Generator/Gen_down1/conv1/filterssave/RestoreV2:9*
T0*&
_output_shapes
:@`*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down1/conv1/filters
�
save/Assign_10Assign Generator/Gen_down1/conv2/biasessave/RestoreV2:10*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down1/conv2/biases
�
save/Assign_11Assign!Generator/Gen_down1/conv2/filterssave/RestoreV2:11*
T0*&
_output_shapes
:``*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down1/conv2/filters
�
save/Assign_12Assign Generator/Gen_down1/conv3/biasessave/RestoreV2:12*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down1/conv3/biases
�
save/Assign_13Assign!Generator/Gen_down1/conv3/filterssave/RestoreV2:13*
T0*'
_output_shapes
:`�*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down1/conv3/filters
�
save/Assign_14Assign Generator/Gen_down2/conv1/biasessave/RestoreV2:14*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down2/conv1/biases
�
save/Assign_15Assign!Generator/Gen_down2/conv1/filterssave/RestoreV2:15*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down2/conv1/filters
�
save/Assign_16Assign Generator/Gen_down2/conv2/biasessave/RestoreV2:16*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down2/conv2/biases
�
save/Assign_17Assign!Generator/Gen_down2/conv2/filterssave/RestoreV2:17*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down2/conv2/filters
�
save/Assign_18Assign Generator/Gen_down2/conv3/biasessave/RestoreV2:18*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down2/conv3/biases
�
save/Assign_19Assign!Generator/Gen_down2/conv3/filterssave/RestoreV2:19*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down2/conv3/filters
�
save/Assign_20Assign Generator/Gen_down3/conv1/biasessave/RestoreV2:20*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down3/conv1/biases
�
save/Assign_21Assign!Generator/Gen_down3/conv1/filterssave/RestoreV2:21*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down3/conv1/filters
�
save/Assign_22Assign Generator/Gen_down3/conv2/biasessave/RestoreV2:22*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down3/conv2/biases
�
save/Assign_23Assign!Generator/Gen_down3/conv2/filterssave/RestoreV2:23*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down3/conv2/filters
�
save/Assign_24Assign Generator/Gen_down3/conv3/biasessave/RestoreV2:24*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down3/conv3/biases
�
save/Assign_25Assign!Generator/Gen_down3/conv3/filterssave/RestoreV2:25*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down3/conv3/filters
�
save/Assign_26AssignGenerator/Gen_last_layer/biasessave/RestoreV2:26*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_last_layer/biases
�
save/Assign_27Assign Generator/Gen_last_layer/filterssave/RestoreV2:27*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_last_layer/filters
�
save/Assign_28AssignGenerator/Gen_up0/conv1/biasessave/RestoreV2:28*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up0/conv1/biases
�
save/Assign_29AssignGenerator/Gen_up0/conv1/filterssave/RestoreV2:29*
T0*'
_output_shapes
:�P*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up0/conv1/filters
�
save/Assign_30AssignGenerator/Gen_up0/conv2/biasessave/RestoreV2:30*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up0/conv2/biases
�
save/Assign_31AssignGenerator/Gen_up0/conv2/filterssave/RestoreV2:31*
T0*&
_output_shapes
:PP*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up0/conv2/filters
�
save/Assign_32AssignGenerator/Gen_up0/conv3/biasessave/RestoreV2:32*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up0/conv3/biases
�
save/Assign_33AssignGenerator/Gen_up0/conv3/filterssave/RestoreV2:33*
T0*&
_output_shapes
:P *
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up0/conv3/filters
�
save/Assign_34AssignGenerator/Gen_up1/conv1/biasessave/RestoreV2:34*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up1/conv1/biases
�
save/Assign_35AssignGenerator/Gen_up1/conv1/filterssave/RestoreV2:35*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up1/conv1/filters
�
save/Assign_36AssignGenerator/Gen_up1/conv2/biasessave/RestoreV2:36*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up1/conv2/biases
�
save/Assign_37AssignGenerator/Gen_up1/conv2/filterssave/RestoreV2:37*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up1/conv2/filters
�
save/Assign_38AssignGenerator/Gen_up1/conv3/biasessave/RestoreV2:38*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up1/conv3/biases
�
save/Assign_39AssignGenerator/Gen_up1/conv3/filterssave/RestoreV2:39*
T0*'
_output_shapes
:�@*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up1/conv3/filters
�
save/Assign_40AssignGenerator/Gen_up2/conv1/biasessave/RestoreV2:40*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up2/conv1/biases
�
save/Assign_41AssignGenerator/Gen_up2/conv1/filterssave/RestoreV2:41*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up2/conv1/filters
�
save/Assign_42AssignGenerator/Gen_up2/conv2/biasessave/RestoreV2:42*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up2/conv2/biases
�
save/Assign_43AssignGenerator/Gen_up2/conv2/filterssave/RestoreV2:43*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up2/conv2/filters
�
save/Assign_44AssignGenerator/Gen_up2/conv3/biasessave/RestoreV2:44*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up2/conv3/biases
�
save/Assign_45AssignGenerator/Gen_up2/conv3/filterssave/RestoreV2:45*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up2/conv3/filters
�
save/Assign_46AssignGenerator/Gen_up3/conv1/biasessave/RestoreV2:46*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up3/conv1/biases
�
save/Assign_47AssignGenerator/Gen_up3/conv1/filterssave/RestoreV2:47*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up3/conv1/filters
�
save/Assign_48AssignGenerator/Gen_up3/conv2/biasessave/RestoreV2:48*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up3/conv2/biases
�
save/Assign_49AssignGenerator/Gen_up3/conv2/filterssave/RestoreV2:49*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up3/conv2/filters
�
save/Assign_50AssignGenerator/Gen_up3/conv3/biasessave/RestoreV2:50*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up3/conv3/biases
�
save/Assign_51AssignGenerator/Gen_up3/conv3/filterssave/RestoreV2:51*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up3/conv3/filters
�
save/Assign_52Assign"Generator/batch_normalization/betasave/RestoreV2:52*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*5
_class+
)'loc:@Generator/batch_normalization/beta
�
save/Assign_53Assign#Generator/batch_normalization/gammasave/RestoreV2:53*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*6
_class,
*(loc:@Generator/batch_normalization/gamma
�
save/Assign_54Assign)Generator/batch_normalization/moving_meansave/RestoreV2:54*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*<
_class2
0.loc:@Generator/batch_normalization/moving_mean
�
save/Assign_55Assign-Generator/batch_normalization/moving_variancesave/RestoreV2:55*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*@
_class6
42loc:@Generator/batch_normalization/moving_variance
�
save/Assign_56Assign$Generator/batch_normalization_1/betasave/RestoreV2:56*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_1/beta
�
save/Assign_57Assign%Generator/batch_normalization_1/gammasave/RestoreV2:57*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_1/gamma
�
save/Assign_58Assign+Generator/batch_normalization_1/moving_meansave/RestoreV2:58*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_1/moving_mean
�
save/Assign_59Assign/Generator/batch_normalization_1/moving_variancesave/RestoreV2:59*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_1/moving_variance
�
save/Assign_60Assign%Generator/batch_normalization_10/betasave/RestoreV2:60*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_10/beta
�
save/Assign_61Assign&Generator/batch_normalization_10/gammasave/RestoreV2:61*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_10/gamma
�
save/Assign_62Assign,Generator/batch_normalization_10/moving_meansave/RestoreV2:62*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_10/moving_mean
�
save/Assign_63Assign0Generator/batch_normalization_10/moving_variancesave/RestoreV2:63*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_10/moving_variance
�
save/Assign_64Assign%Generator/batch_normalization_11/betasave/RestoreV2:64*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_11/beta
�
save/Assign_65Assign&Generator/batch_normalization_11/gammasave/RestoreV2:65*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_11/gamma
�
save/Assign_66Assign,Generator/batch_normalization_11/moving_meansave/RestoreV2:66*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_11/moving_mean
�
save/Assign_67Assign0Generator/batch_normalization_11/moving_variancesave/RestoreV2:67*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_11/moving_variance
�
save/Assign_68Assign%Generator/batch_normalization_12/betasave/RestoreV2:68*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_12/beta
�
save/Assign_69Assign&Generator/batch_normalization_12/gammasave/RestoreV2:69*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_12/gamma
�
save/Assign_70Assign,Generator/batch_normalization_12/moving_meansave/RestoreV2:70*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_12/moving_mean
�
save/Assign_71Assign0Generator/batch_normalization_12/moving_variancesave/RestoreV2:71*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_12/moving_variance
�
save/Assign_72Assign%Generator/batch_normalization_13/betasave/RestoreV2:72*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_13/beta
�
save/Assign_73Assign&Generator/batch_normalization_13/gammasave/RestoreV2:73*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_13/gamma
�
save/Assign_74Assign,Generator/batch_normalization_13/moving_meansave/RestoreV2:74*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_13/moving_mean
�
save/Assign_75Assign0Generator/batch_normalization_13/moving_variancesave/RestoreV2:75*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_13/moving_variance
�
save/Assign_76Assign%Generator/batch_normalization_14/betasave/RestoreV2:76*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_14/beta
�
save/Assign_77Assign&Generator/batch_normalization_14/gammasave/RestoreV2:77*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_14/gamma
�
save/Assign_78Assign,Generator/batch_normalization_14/moving_meansave/RestoreV2:78*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_14/moving_mean
�
save/Assign_79Assign0Generator/batch_normalization_14/moving_variancesave/RestoreV2:79*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_14/moving_variance
�
save/Assign_80Assign%Generator/batch_normalization_15/betasave/RestoreV2:80*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_15/beta
�
save/Assign_81Assign&Generator/batch_normalization_15/gammasave/RestoreV2:81*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_15/gamma
�
save/Assign_82Assign,Generator/batch_normalization_15/moving_meansave/RestoreV2:82*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_15/moving_mean
�
save/Assign_83Assign0Generator/batch_normalization_15/moving_variancesave/RestoreV2:83*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_15/moving_variance
�
save/Assign_84Assign%Generator/batch_normalization_16/betasave/RestoreV2:84*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_16/beta
�
save/Assign_85Assign&Generator/batch_normalization_16/gammasave/RestoreV2:85*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_16/gamma
�
save/Assign_86Assign,Generator/batch_normalization_16/moving_meansave/RestoreV2:86*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_16/moving_mean
�
save/Assign_87Assign0Generator/batch_normalization_16/moving_variancesave/RestoreV2:87*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_16/moving_variance
�
save/Assign_88Assign%Generator/batch_normalization_17/betasave/RestoreV2:88*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_17/beta
�
save/Assign_89Assign&Generator/batch_normalization_17/gammasave/RestoreV2:89*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_17/gamma
�
save/Assign_90Assign,Generator/batch_normalization_17/moving_meansave/RestoreV2:90*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_17/moving_mean
�
save/Assign_91Assign0Generator/batch_normalization_17/moving_variancesave/RestoreV2:91*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_17/moving_variance
�
save/Assign_92Assign%Generator/batch_normalization_18/betasave/RestoreV2:92*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_18/beta
�
save/Assign_93Assign&Generator/batch_normalization_18/gammasave/RestoreV2:93*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_18/gamma
�
save/Assign_94Assign,Generator/batch_normalization_18/moving_meansave/RestoreV2:94*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_18/moving_mean
�
save/Assign_95Assign0Generator/batch_normalization_18/moving_variancesave/RestoreV2:95*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_18/moving_variance
�
save/Assign_96Assign%Generator/batch_normalization_19/betasave/RestoreV2:96*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_19/beta
�
save/Assign_97Assign&Generator/batch_normalization_19/gammasave/RestoreV2:97*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_19/gamma
�
save/Assign_98Assign,Generator/batch_normalization_19/moving_meansave/RestoreV2:98*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_19/moving_mean
�
save/Assign_99Assign0Generator/batch_normalization_19/moving_variancesave/RestoreV2:99*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_19/moving_variance
�
save/Assign_100Assign$Generator/batch_normalization_2/betasave/RestoreV2:100*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_2/beta
�
save/Assign_101Assign%Generator/batch_normalization_2/gammasave/RestoreV2:101*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_2/gamma
�
save/Assign_102Assign+Generator/batch_normalization_2/moving_meansave/RestoreV2:102*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_2/moving_mean
�
save/Assign_103Assign/Generator/batch_normalization_2/moving_variancesave/RestoreV2:103*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_2/moving_variance
�
save/Assign_104Assign%Generator/batch_normalization_20/betasave/RestoreV2:104*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_20/beta
�
save/Assign_105Assign&Generator/batch_normalization_20/gammasave/RestoreV2:105*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_20/gamma
�
save/Assign_106Assign,Generator/batch_normalization_20/moving_meansave/RestoreV2:106*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_20/moving_mean
�
save/Assign_107Assign0Generator/batch_normalization_20/moving_variancesave/RestoreV2:107*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_20/moving_variance
�
save/Assign_108Assign%Generator/batch_normalization_21/betasave/RestoreV2:108*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_21/beta
�
save/Assign_109Assign&Generator/batch_normalization_21/gammasave/RestoreV2:109*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_21/gamma
�
save/Assign_110Assign,Generator/batch_normalization_21/moving_meansave/RestoreV2:110*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_21/moving_mean
�
save/Assign_111Assign0Generator/batch_normalization_21/moving_variancesave/RestoreV2:111*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_21/moving_variance
�
save/Assign_112Assign%Generator/batch_normalization_22/betasave/RestoreV2:112*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_22/beta
�
save/Assign_113Assign&Generator/batch_normalization_22/gammasave/RestoreV2:113*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_22/gamma
�
save/Assign_114Assign,Generator/batch_normalization_22/moving_meansave/RestoreV2:114*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_22/moving_mean
�
save/Assign_115Assign0Generator/batch_normalization_22/moving_variancesave/RestoreV2:115*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_22/moving_variance
�
save/Assign_116Assign%Generator/batch_normalization_23/betasave/RestoreV2:116*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_23/beta
�
save/Assign_117Assign&Generator/batch_normalization_23/gammasave/RestoreV2:117*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_23/gamma
�
save/Assign_118Assign,Generator/batch_normalization_23/moving_meansave/RestoreV2:118*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_23/moving_mean
�
save/Assign_119Assign0Generator/batch_normalization_23/moving_variancesave/RestoreV2:119*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_23/moving_variance
�
save/Assign_120Assign%Generator/batch_normalization_24/betasave/RestoreV2:120*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_24/beta
�
save/Assign_121Assign&Generator/batch_normalization_24/gammasave/RestoreV2:121*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_24/gamma
�
save/Assign_122Assign,Generator/batch_normalization_24/moving_meansave/RestoreV2:122*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_24/moving_mean
�
save/Assign_123Assign0Generator/batch_normalization_24/moving_variancesave/RestoreV2:123*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_24/moving_variance
�
save/Assign_124Assign$Generator/batch_normalization_3/betasave/RestoreV2:124*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_3/beta
�
save/Assign_125Assign%Generator/batch_normalization_3/gammasave/RestoreV2:125*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_3/gamma
�
save/Assign_126Assign+Generator/batch_normalization_3/moving_meansave/RestoreV2:126*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_3/moving_mean
�
save/Assign_127Assign/Generator/batch_normalization_3/moving_variancesave/RestoreV2:127*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_3/moving_variance
�
save/Assign_128Assign$Generator/batch_normalization_4/betasave/RestoreV2:128*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_4/beta
�
save/Assign_129Assign%Generator/batch_normalization_4/gammasave/RestoreV2:129*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_4/gamma
�
save/Assign_130Assign+Generator/batch_normalization_4/moving_meansave/RestoreV2:130*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_4/moving_mean
�
save/Assign_131Assign/Generator/batch_normalization_4/moving_variancesave/RestoreV2:131*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_4/moving_variance
�
save/Assign_132Assign$Generator/batch_normalization_5/betasave/RestoreV2:132*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_5/beta
�
save/Assign_133Assign%Generator/batch_normalization_5/gammasave/RestoreV2:133*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_5/gamma
�
save/Assign_134Assign+Generator/batch_normalization_5/moving_meansave/RestoreV2:134*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_5/moving_mean
�
save/Assign_135Assign/Generator/batch_normalization_5/moving_variancesave/RestoreV2:135*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_5/moving_variance
�
save/Assign_136Assign$Generator/batch_normalization_6/betasave/RestoreV2:136*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_6/beta
�
save/Assign_137Assign%Generator/batch_normalization_6/gammasave/RestoreV2:137*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_6/gamma
�
save/Assign_138Assign+Generator/batch_normalization_6/moving_meansave/RestoreV2:138*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_6/moving_mean
�
save/Assign_139Assign/Generator/batch_normalization_6/moving_variancesave/RestoreV2:139*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_6/moving_variance
�
save/Assign_140Assign$Generator/batch_normalization_7/betasave/RestoreV2:140*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_7/beta
�
save/Assign_141Assign%Generator/batch_normalization_7/gammasave/RestoreV2:141*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_7/gamma
�
save/Assign_142Assign+Generator/batch_normalization_7/moving_meansave/RestoreV2:142*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_7/moving_mean
�
save/Assign_143Assign/Generator/batch_normalization_7/moving_variancesave/RestoreV2:143*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_7/moving_variance
�
save/Assign_144Assign$Generator/batch_normalization_8/betasave/RestoreV2:144*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_8/beta
�
save/Assign_145Assign%Generator/batch_normalization_8/gammasave/RestoreV2:145*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_8/gamma
�
save/Assign_146Assign+Generator/batch_normalization_8/moving_meansave/RestoreV2:146*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_8/moving_mean
�
save/Assign_147Assign/Generator/batch_normalization_8/moving_variancesave/RestoreV2:147*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_8/moving_variance
�
save/Assign_148Assign$Generator/batch_normalization_9/betasave/RestoreV2:148*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_9/beta
�
save/Assign_149Assign%Generator/batch_normalization_9/gammasave/RestoreV2:149*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_9/gamma
�
save/Assign_150Assign+Generator/batch_normalization_9/moving_meansave/RestoreV2:150*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_9/moving_mean
�
save/Assign_151Assign/Generator/batch_normalization_9/moving_variancesave/RestoreV2:151*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_9/moving_variance
�
save/restore_all/NoOpNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
�
save/restore_all/NoOp_1NoOp^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_130^save/Assign_131^save/Assign_132^save/Assign_133^save/Assign_134^save/Assign_135^save/Assign_136^save/Assign_137^save/Assign_138^save/Assign_139^save/Assign_140^save/Assign_141^save/Assign_142^save/Assign_143^save/Assign_144^save/Assign_145^save/Assign_146^save/Assign_147^save/Assign_148^save/Assign_149^save/Assign_150^save/Assign_151^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_dae472f021434b0faab259b749fc4e0f/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
�
save_1/SaveV2/tensor_namesConst*�
value�B�4BGenerator/Gen_center/biasesBGenerator/Gen_center/filtersB Generator/Gen_down0/conv1/biasesB!Generator/Gen_down0/conv1/filtersB Generator/Gen_down0/conv2/biasesB!Generator/Gen_down0/conv2/filtersB Generator/Gen_down0/conv3/biasesB!Generator/Gen_down0/conv3/filtersB Generator/Gen_down1/conv1/biasesB!Generator/Gen_down1/conv1/filtersB Generator/Gen_down1/conv2/biasesB!Generator/Gen_down1/conv2/filtersB Generator/Gen_down1/conv3/biasesB!Generator/Gen_down1/conv3/filtersB Generator/Gen_down2/conv1/biasesB!Generator/Gen_down2/conv1/filtersB Generator/Gen_down2/conv2/biasesB!Generator/Gen_down2/conv2/filtersB Generator/Gen_down2/conv3/biasesB!Generator/Gen_down2/conv3/filtersB Generator/Gen_down3/conv1/biasesB!Generator/Gen_down3/conv1/filtersB Generator/Gen_down3/conv2/biasesB!Generator/Gen_down3/conv2/filtersB Generator/Gen_down3/conv3/biasesB!Generator/Gen_down3/conv3/filtersBGenerator/Gen_last_layer/biasesB Generator/Gen_last_layer/filtersBGenerator/Gen_up0/conv1/biasesBGenerator/Gen_up0/conv1/filtersBGenerator/Gen_up0/conv2/biasesBGenerator/Gen_up0/conv2/filtersBGenerator/Gen_up0/conv3/biasesBGenerator/Gen_up0/conv3/filtersBGenerator/Gen_up1/conv1/biasesBGenerator/Gen_up1/conv1/filtersBGenerator/Gen_up1/conv2/biasesBGenerator/Gen_up1/conv2/filtersBGenerator/Gen_up1/conv3/biasesBGenerator/Gen_up1/conv3/filtersBGenerator/Gen_up2/conv1/biasesBGenerator/Gen_up2/conv1/filtersBGenerator/Gen_up2/conv2/biasesBGenerator/Gen_up2/conv2/filtersBGenerator/Gen_up2/conv3/biasesBGenerator/Gen_up2/conv3/filtersBGenerator/Gen_up3/conv1/biasesBGenerator/Gen_up3/conv1/filtersBGenerator/Gen_up3/conv2/biasesBGenerator/Gen_up3/conv2/filtersBGenerator/Gen_up3/conv3/biasesBGenerator/Gen_up3/conv3/filters*
dtype0*
_output_shapes
:4
�
save_1/SaveV2/shape_and_slicesConst*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:4
�
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesGenerator/Gen_center/biasesGenerator/Gen_center/filters Generator/Gen_down0/conv1/biases!Generator/Gen_down0/conv1/filters Generator/Gen_down0/conv2/biases!Generator/Gen_down0/conv2/filters Generator/Gen_down0/conv3/biases!Generator/Gen_down0/conv3/filters Generator/Gen_down1/conv1/biases!Generator/Gen_down1/conv1/filters Generator/Gen_down1/conv2/biases!Generator/Gen_down1/conv2/filters Generator/Gen_down1/conv3/biases!Generator/Gen_down1/conv3/filters Generator/Gen_down2/conv1/biases!Generator/Gen_down2/conv1/filters Generator/Gen_down2/conv2/biases!Generator/Gen_down2/conv2/filters Generator/Gen_down2/conv3/biases!Generator/Gen_down2/conv3/filters Generator/Gen_down3/conv1/biases!Generator/Gen_down3/conv1/filters Generator/Gen_down3/conv2/biases!Generator/Gen_down3/conv2/filters Generator/Gen_down3/conv3/biases!Generator/Gen_down3/conv3/filtersGenerator/Gen_last_layer/biases Generator/Gen_last_layer/filtersGenerator/Gen_up0/conv1/biasesGenerator/Gen_up0/conv1/filtersGenerator/Gen_up0/conv2/biasesGenerator/Gen_up0/conv2/filtersGenerator/Gen_up0/conv3/biasesGenerator/Gen_up0/conv3/filtersGenerator/Gen_up1/conv1/biasesGenerator/Gen_up1/conv1/filtersGenerator/Gen_up1/conv2/biasesGenerator/Gen_up1/conv2/filtersGenerator/Gen_up1/conv3/biasesGenerator/Gen_up1/conv3/filtersGenerator/Gen_up2/conv1/biasesGenerator/Gen_up2/conv1/filtersGenerator/Gen_up2/conv2/biasesGenerator/Gen_up2/conv2/filtersGenerator/Gen_up2/conv3/biasesGenerator/Gen_up2/conv3/filtersGenerator/Gen_up3/conv1/biasesGenerator/Gen_up3/conv1/filtersGenerator/Gen_up3/conv2/biasesGenerator/Gen_up3/conv2/filtersGenerator/Gen_up3/conv3/biasesGenerator/Gen_up3/conv3/filters*B
dtypes8
624
�
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*
_output_shapes
: *)
_class
loc:@save_1/ShardedFilename
`
save_1/ShardedFilename_1/shardConst*
value	B :*
dtype0*
_output_shapes
: 
�
save_1/ShardedFilename_1ShardedFilenamesave_1/StringJoinsave_1/ShardedFilename_1/shardsave_1/num_shards*
_output_shapes
: 
�"
save_1/SaveV2_1/tensor_namesConst*�!
value�!B�!dB"Generator/batch_normalization/betaB#Generator/batch_normalization/gammaB)Generator/batch_normalization/moving_meanB-Generator/batch_normalization/moving_varianceB$Generator/batch_normalization_1/betaB%Generator/batch_normalization_1/gammaB+Generator/batch_normalization_1/moving_meanB/Generator/batch_normalization_1/moving_varianceB%Generator/batch_normalization_10/betaB&Generator/batch_normalization_10/gammaB,Generator/batch_normalization_10/moving_meanB0Generator/batch_normalization_10/moving_varianceB%Generator/batch_normalization_11/betaB&Generator/batch_normalization_11/gammaB,Generator/batch_normalization_11/moving_meanB0Generator/batch_normalization_11/moving_varianceB%Generator/batch_normalization_12/betaB&Generator/batch_normalization_12/gammaB,Generator/batch_normalization_12/moving_meanB0Generator/batch_normalization_12/moving_varianceB%Generator/batch_normalization_13/betaB&Generator/batch_normalization_13/gammaB,Generator/batch_normalization_13/moving_meanB0Generator/batch_normalization_13/moving_varianceB%Generator/batch_normalization_14/betaB&Generator/batch_normalization_14/gammaB,Generator/batch_normalization_14/moving_meanB0Generator/batch_normalization_14/moving_varianceB%Generator/batch_normalization_15/betaB&Generator/batch_normalization_15/gammaB,Generator/batch_normalization_15/moving_meanB0Generator/batch_normalization_15/moving_varianceB%Generator/batch_normalization_16/betaB&Generator/batch_normalization_16/gammaB,Generator/batch_normalization_16/moving_meanB0Generator/batch_normalization_16/moving_varianceB%Generator/batch_normalization_17/betaB&Generator/batch_normalization_17/gammaB,Generator/batch_normalization_17/moving_meanB0Generator/batch_normalization_17/moving_varianceB%Generator/batch_normalization_18/betaB&Generator/batch_normalization_18/gammaB,Generator/batch_normalization_18/moving_meanB0Generator/batch_normalization_18/moving_varianceB%Generator/batch_normalization_19/betaB&Generator/batch_normalization_19/gammaB,Generator/batch_normalization_19/moving_meanB0Generator/batch_normalization_19/moving_varianceB$Generator/batch_normalization_2/betaB%Generator/batch_normalization_2/gammaB+Generator/batch_normalization_2/moving_meanB/Generator/batch_normalization_2/moving_varianceB%Generator/batch_normalization_20/betaB&Generator/batch_normalization_20/gammaB,Generator/batch_normalization_20/moving_meanB0Generator/batch_normalization_20/moving_varianceB%Generator/batch_normalization_21/betaB&Generator/batch_normalization_21/gammaB,Generator/batch_normalization_21/moving_meanB0Generator/batch_normalization_21/moving_varianceB%Generator/batch_normalization_22/betaB&Generator/batch_normalization_22/gammaB,Generator/batch_normalization_22/moving_meanB0Generator/batch_normalization_22/moving_varianceB%Generator/batch_normalization_23/betaB&Generator/batch_normalization_23/gammaB,Generator/batch_normalization_23/moving_meanB0Generator/batch_normalization_23/moving_varianceB%Generator/batch_normalization_24/betaB&Generator/batch_normalization_24/gammaB,Generator/batch_normalization_24/moving_meanB0Generator/batch_normalization_24/moving_varianceB$Generator/batch_normalization_3/betaB%Generator/batch_normalization_3/gammaB+Generator/batch_normalization_3/moving_meanB/Generator/batch_normalization_3/moving_varianceB$Generator/batch_normalization_4/betaB%Generator/batch_normalization_4/gammaB+Generator/batch_normalization_4/moving_meanB/Generator/batch_normalization_4/moving_varianceB$Generator/batch_normalization_5/betaB%Generator/batch_normalization_5/gammaB+Generator/batch_normalization_5/moving_meanB/Generator/batch_normalization_5/moving_varianceB$Generator/batch_normalization_6/betaB%Generator/batch_normalization_6/gammaB+Generator/batch_normalization_6/moving_meanB/Generator/batch_normalization_6/moving_varianceB$Generator/batch_normalization_7/betaB%Generator/batch_normalization_7/gammaB+Generator/batch_normalization_7/moving_meanB/Generator/batch_normalization_7/moving_varianceB$Generator/batch_normalization_8/betaB%Generator/batch_normalization_8/gammaB+Generator/batch_normalization_8/moving_meanB/Generator/batch_normalization_8/moving_varianceB$Generator/batch_normalization_9/betaB%Generator/batch_normalization_9/gammaB+Generator/batch_normalization_9/moving_meanB/Generator/batch_normalization_9/moving_variance*
dtype0*
_output_shapes
:d
�
 save_1/SaveV2_1/shape_and_slicesConst*�
value�B�dB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:d
�#
save_1/SaveV2_1SaveV2save_1/ShardedFilename_1save_1/SaveV2_1/tensor_names save_1/SaveV2_1/shape_and_slices"Generator/batch_normalization/beta#Generator/batch_normalization/gamma)Generator/batch_normalization/moving_mean-Generator/batch_normalization/moving_variance$Generator/batch_normalization_1/beta%Generator/batch_normalization_1/gamma+Generator/batch_normalization_1/moving_mean/Generator/batch_normalization_1/moving_variance%Generator/batch_normalization_10/beta&Generator/batch_normalization_10/gamma,Generator/batch_normalization_10/moving_mean0Generator/batch_normalization_10/moving_variance%Generator/batch_normalization_11/beta&Generator/batch_normalization_11/gamma,Generator/batch_normalization_11/moving_mean0Generator/batch_normalization_11/moving_variance%Generator/batch_normalization_12/beta&Generator/batch_normalization_12/gamma,Generator/batch_normalization_12/moving_mean0Generator/batch_normalization_12/moving_variance%Generator/batch_normalization_13/beta&Generator/batch_normalization_13/gamma,Generator/batch_normalization_13/moving_mean0Generator/batch_normalization_13/moving_variance%Generator/batch_normalization_14/beta&Generator/batch_normalization_14/gamma,Generator/batch_normalization_14/moving_mean0Generator/batch_normalization_14/moving_variance%Generator/batch_normalization_15/beta&Generator/batch_normalization_15/gamma,Generator/batch_normalization_15/moving_mean0Generator/batch_normalization_15/moving_variance%Generator/batch_normalization_16/beta&Generator/batch_normalization_16/gamma,Generator/batch_normalization_16/moving_mean0Generator/batch_normalization_16/moving_variance%Generator/batch_normalization_17/beta&Generator/batch_normalization_17/gamma,Generator/batch_normalization_17/moving_mean0Generator/batch_normalization_17/moving_variance%Generator/batch_normalization_18/beta&Generator/batch_normalization_18/gamma,Generator/batch_normalization_18/moving_mean0Generator/batch_normalization_18/moving_variance%Generator/batch_normalization_19/beta&Generator/batch_normalization_19/gamma,Generator/batch_normalization_19/moving_mean0Generator/batch_normalization_19/moving_variance$Generator/batch_normalization_2/beta%Generator/batch_normalization_2/gamma+Generator/batch_normalization_2/moving_mean/Generator/batch_normalization_2/moving_variance%Generator/batch_normalization_20/beta&Generator/batch_normalization_20/gamma,Generator/batch_normalization_20/moving_mean0Generator/batch_normalization_20/moving_variance%Generator/batch_normalization_21/beta&Generator/batch_normalization_21/gamma,Generator/batch_normalization_21/moving_mean0Generator/batch_normalization_21/moving_variance%Generator/batch_normalization_22/beta&Generator/batch_normalization_22/gamma,Generator/batch_normalization_22/moving_mean0Generator/batch_normalization_22/moving_variance%Generator/batch_normalization_23/beta&Generator/batch_normalization_23/gamma,Generator/batch_normalization_23/moving_mean0Generator/batch_normalization_23/moving_variance%Generator/batch_normalization_24/beta&Generator/batch_normalization_24/gamma,Generator/batch_normalization_24/moving_mean0Generator/batch_normalization_24/moving_variance$Generator/batch_normalization_3/beta%Generator/batch_normalization_3/gamma+Generator/batch_normalization_3/moving_mean/Generator/batch_normalization_3/moving_variance$Generator/batch_normalization_4/beta%Generator/batch_normalization_4/gamma+Generator/batch_normalization_4/moving_mean/Generator/batch_normalization_4/moving_variance$Generator/batch_normalization_5/beta%Generator/batch_normalization_5/gamma+Generator/batch_normalization_5/moving_mean/Generator/batch_normalization_5/moving_variance$Generator/batch_normalization_6/beta%Generator/batch_normalization_6/gamma+Generator/batch_normalization_6/moving_mean/Generator/batch_normalization_6/moving_variance$Generator/batch_normalization_7/beta%Generator/batch_normalization_7/gamma+Generator/batch_normalization_7/moving_mean/Generator/batch_normalization_7/moving_variance$Generator/batch_normalization_8/beta%Generator/batch_normalization_8/gamma+Generator/batch_normalization_8/moving_mean/Generator/batch_normalization_8/moving_variance$Generator/batch_normalization_9/beta%Generator/batch_normalization_9/gamma+Generator/batch_normalization_9/moving_mean/Generator/batch_normalization_9/moving_variance*r
dtypesh
f2d
�
save_1/control_dependency_1Identitysave_1/ShardedFilename_1^save_1/SaveV2_1*
T0*
_output_shapes
: *+
_class!
loc:@save_1/ShardedFilename_1
�
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilenamesave_1/ShardedFilename_1^save_1/control_dependency^save_1/control_dependency_1*

axis *
T0*
N*
_output_shapes
:
�
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
�
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency^save_1/control_dependency_1*
T0*
_output_shapes
: 
�
save_1/RestoreV2/tensor_namesConst*�
value�B�4BGenerator/Gen_center/biasesBGenerator/Gen_center/filtersB Generator/Gen_down0/conv1/biasesB!Generator/Gen_down0/conv1/filtersB Generator/Gen_down0/conv2/biasesB!Generator/Gen_down0/conv2/filtersB Generator/Gen_down0/conv3/biasesB!Generator/Gen_down0/conv3/filtersB Generator/Gen_down1/conv1/biasesB!Generator/Gen_down1/conv1/filtersB Generator/Gen_down1/conv2/biasesB!Generator/Gen_down1/conv2/filtersB Generator/Gen_down1/conv3/biasesB!Generator/Gen_down1/conv3/filtersB Generator/Gen_down2/conv1/biasesB!Generator/Gen_down2/conv1/filtersB Generator/Gen_down2/conv2/biasesB!Generator/Gen_down2/conv2/filtersB Generator/Gen_down2/conv3/biasesB!Generator/Gen_down2/conv3/filtersB Generator/Gen_down3/conv1/biasesB!Generator/Gen_down3/conv1/filtersB Generator/Gen_down3/conv2/biasesB!Generator/Gen_down3/conv2/filtersB Generator/Gen_down3/conv3/biasesB!Generator/Gen_down3/conv3/filtersBGenerator/Gen_last_layer/biasesB Generator/Gen_last_layer/filtersBGenerator/Gen_up0/conv1/biasesBGenerator/Gen_up0/conv1/filtersBGenerator/Gen_up0/conv2/biasesBGenerator/Gen_up0/conv2/filtersBGenerator/Gen_up0/conv3/biasesBGenerator/Gen_up0/conv3/filtersBGenerator/Gen_up1/conv1/biasesBGenerator/Gen_up1/conv1/filtersBGenerator/Gen_up1/conv2/biasesBGenerator/Gen_up1/conv2/filtersBGenerator/Gen_up1/conv3/biasesBGenerator/Gen_up1/conv3/filtersBGenerator/Gen_up2/conv1/biasesBGenerator/Gen_up2/conv1/filtersBGenerator/Gen_up2/conv2/biasesBGenerator/Gen_up2/conv2/filtersBGenerator/Gen_up2/conv3/biasesBGenerator/Gen_up2/conv3/filtersBGenerator/Gen_up3/conv1/biasesBGenerator/Gen_up3/conv1/filtersBGenerator/Gen_up3/conv2/biasesBGenerator/Gen_up3/conv2/filtersBGenerator/Gen_up3/conv3/biasesBGenerator/Gen_up3/conv3/filters*
dtype0*
_output_shapes
:4
�
!save_1/RestoreV2/shape_and_slicesConst*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:4
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*B
dtypes8
624*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::
�
save_1/AssignAssignGenerator/Gen_center/biasessave_1/RestoreV2*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/Gen_center/biases
�
save_1/Assign_1AssignGenerator/Gen_center/filterssave_1/RestoreV2:1*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/Gen_center/filters
�
save_1/Assign_2Assign Generator/Gen_down0/conv1/biasessave_1/RestoreV2:2*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down0/conv1/biases
�
save_1/Assign_3Assign!Generator/Gen_down0/conv1/filterssave_1/RestoreV2:3*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down0/conv1/filters
�
save_1/Assign_4Assign Generator/Gen_down0/conv2/biasessave_1/RestoreV2:4*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down0/conv2/biases
�
save_1/Assign_5Assign!Generator/Gen_down0/conv2/filterssave_1/RestoreV2:5*
T0*&
_output_shapes
:  *
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down0/conv2/filters
�
save_1/Assign_6Assign Generator/Gen_down0/conv3/biasessave_1/RestoreV2:6*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down0/conv3/biases
�
save_1/Assign_7Assign!Generator/Gen_down0/conv3/filterssave_1/RestoreV2:7*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down0/conv3/filters
�
save_1/Assign_8Assign Generator/Gen_down1/conv1/biasessave_1/RestoreV2:8*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down1/conv1/biases
�
save_1/Assign_9Assign!Generator/Gen_down1/conv1/filterssave_1/RestoreV2:9*
T0*&
_output_shapes
:@`*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down1/conv1/filters
�
save_1/Assign_10Assign Generator/Gen_down1/conv2/biasessave_1/RestoreV2:10*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down1/conv2/biases
�
save_1/Assign_11Assign!Generator/Gen_down1/conv2/filterssave_1/RestoreV2:11*
T0*&
_output_shapes
:``*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down1/conv2/filters
�
save_1/Assign_12Assign Generator/Gen_down1/conv3/biasessave_1/RestoreV2:12*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down1/conv3/biases
�
save_1/Assign_13Assign!Generator/Gen_down1/conv3/filterssave_1/RestoreV2:13*
T0*'
_output_shapes
:`�*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down1/conv3/filters
�
save_1/Assign_14Assign Generator/Gen_down2/conv1/biasessave_1/RestoreV2:14*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down2/conv1/biases
�
save_1/Assign_15Assign!Generator/Gen_down2/conv1/filterssave_1/RestoreV2:15*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down2/conv1/filters
�
save_1/Assign_16Assign Generator/Gen_down2/conv2/biasessave_1/RestoreV2:16*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down2/conv2/biases
�
save_1/Assign_17Assign!Generator/Gen_down2/conv2/filterssave_1/RestoreV2:17*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down2/conv2/filters
�
save_1/Assign_18Assign Generator/Gen_down2/conv3/biasessave_1/RestoreV2:18*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down2/conv3/biases
�
save_1/Assign_19Assign!Generator/Gen_down2/conv3/filterssave_1/RestoreV2:19*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down2/conv3/filters
�
save_1/Assign_20Assign Generator/Gen_down3/conv1/biasessave_1/RestoreV2:20*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down3/conv1/biases
�
save_1/Assign_21Assign!Generator/Gen_down3/conv1/filterssave_1/RestoreV2:21*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down3/conv1/filters
�
save_1/Assign_22Assign Generator/Gen_down3/conv2/biasessave_1/RestoreV2:22*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down3/conv2/biases
�
save_1/Assign_23Assign!Generator/Gen_down3/conv2/filterssave_1/RestoreV2:23*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down3/conv2/filters
�
save_1/Assign_24Assign Generator/Gen_down3/conv3/biasessave_1/RestoreV2:24*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_down3/conv3/biases
�
save_1/Assign_25Assign!Generator/Gen_down3/conv3/filterssave_1/RestoreV2:25*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*4
_class*
(&loc:@Generator/Gen_down3/conv3/filters
�
save_1/Assign_26AssignGenerator/Gen_last_layer/biasessave_1/RestoreV2:26*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_last_layer/biases
�
save_1/Assign_27Assign Generator/Gen_last_layer/filterssave_1/RestoreV2:27*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*3
_class)
'%loc:@Generator/Gen_last_layer/filters
�
save_1/Assign_28AssignGenerator/Gen_up0/conv1/biasessave_1/RestoreV2:28*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up0/conv1/biases
�
save_1/Assign_29AssignGenerator/Gen_up0/conv1/filterssave_1/RestoreV2:29*
T0*'
_output_shapes
:�P*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up0/conv1/filters
�
save_1/Assign_30AssignGenerator/Gen_up0/conv2/biasessave_1/RestoreV2:30*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up0/conv2/biases
�
save_1/Assign_31AssignGenerator/Gen_up0/conv2/filterssave_1/RestoreV2:31*
T0*&
_output_shapes
:PP*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up0/conv2/filters
�
save_1/Assign_32AssignGenerator/Gen_up0/conv3/biasessave_1/RestoreV2:32*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up0/conv3/biases
�
save_1/Assign_33AssignGenerator/Gen_up0/conv3/filterssave_1/RestoreV2:33*
T0*&
_output_shapes
:P *
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up0/conv3/filters
�
save_1/Assign_34AssignGenerator/Gen_up1/conv1/biasessave_1/RestoreV2:34*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up1/conv1/biases
�
save_1/Assign_35AssignGenerator/Gen_up1/conv1/filterssave_1/RestoreV2:35*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up1/conv1/filters
�
save_1/Assign_36AssignGenerator/Gen_up1/conv2/biasessave_1/RestoreV2:36*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up1/conv2/biases
�
save_1/Assign_37AssignGenerator/Gen_up1/conv2/filterssave_1/RestoreV2:37*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up1/conv2/filters
�
save_1/Assign_38AssignGenerator/Gen_up1/conv3/biasessave_1/RestoreV2:38*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up1/conv3/biases
�
save_1/Assign_39AssignGenerator/Gen_up1/conv3/filterssave_1/RestoreV2:39*
T0*'
_output_shapes
:�@*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up1/conv3/filters
�
save_1/Assign_40AssignGenerator/Gen_up2/conv1/biasessave_1/RestoreV2:40*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up2/conv1/biases
�
save_1/Assign_41AssignGenerator/Gen_up2/conv1/filterssave_1/RestoreV2:41*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up2/conv1/filters
�
save_1/Assign_42AssignGenerator/Gen_up2/conv2/biasessave_1/RestoreV2:42*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up2/conv2/biases
�
save_1/Assign_43AssignGenerator/Gen_up2/conv2/filterssave_1/RestoreV2:43*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up2/conv2/filters
�
save_1/Assign_44AssignGenerator/Gen_up2/conv3/biasessave_1/RestoreV2:44*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up2/conv3/biases
�
save_1/Assign_45AssignGenerator/Gen_up2/conv3/filterssave_1/RestoreV2:45*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up2/conv3/filters
�
save_1/Assign_46AssignGenerator/Gen_up3/conv1/biasessave_1/RestoreV2:46*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up3/conv1/biases
�
save_1/Assign_47AssignGenerator/Gen_up3/conv1/filterssave_1/RestoreV2:47*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up3/conv1/filters
�
save_1/Assign_48AssignGenerator/Gen_up3/conv2/biasessave_1/RestoreV2:48*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up3/conv2/biases
�
save_1/Assign_49AssignGenerator/Gen_up3/conv2/filterssave_1/RestoreV2:49*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up3/conv2/filters
�
save_1/Assign_50AssignGenerator/Gen_up3/conv3/biasessave_1/RestoreV2:50*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*1
_class'
%#loc:@Generator/Gen_up3/conv3/biases
�
save_1/Assign_51AssignGenerator/Gen_up3/conv3/filterssave_1/RestoreV2:51*
T0*(
_output_shapes
:��*
use_locking(*
validate_shape(*2
_class(
&$loc:@Generator/Gen_up3/conv3/filters
�
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
�"
save_1/RestoreV2_1/tensor_namesConst*�!
value�!B�!dB"Generator/batch_normalization/betaB#Generator/batch_normalization/gammaB)Generator/batch_normalization/moving_meanB-Generator/batch_normalization/moving_varianceB$Generator/batch_normalization_1/betaB%Generator/batch_normalization_1/gammaB+Generator/batch_normalization_1/moving_meanB/Generator/batch_normalization_1/moving_varianceB%Generator/batch_normalization_10/betaB&Generator/batch_normalization_10/gammaB,Generator/batch_normalization_10/moving_meanB0Generator/batch_normalization_10/moving_varianceB%Generator/batch_normalization_11/betaB&Generator/batch_normalization_11/gammaB,Generator/batch_normalization_11/moving_meanB0Generator/batch_normalization_11/moving_varianceB%Generator/batch_normalization_12/betaB&Generator/batch_normalization_12/gammaB,Generator/batch_normalization_12/moving_meanB0Generator/batch_normalization_12/moving_varianceB%Generator/batch_normalization_13/betaB&Generator/batch_normalization_13/gammaB,Generator/batch_normalization_13/moving_meanB0Generator/batch_normalization_13/moving_varianceB%Generator/batch_normalization_14/betaB&Generator/batch_normalization_14/gammaB,Generator/batch_normalization_14/moving_meanB0Generator/batch_normalization_14/moving_varianceB%Generator/batch_normalization_15/betaB&Generator/batch_normalization_15/gammaB,Generator/batch_normalization_15/moving_meanB0Generator/batch_normalization_15/moving_varianceB%Generator/batch_normalization_16/betaB&Generator/batch_normalization_16/gammaB,Generator/batch_normalization_16/moving_meanB0Generator/batch_normalization_16/moving_varianceB%Generator/batch_normalization_17/betaB&Generator/batch_normalization_17/gammaB,Generator/batch_normalization_17/moving_meanB0Generator/batch_normalization_17/moving_varianceB%Generator/batch_normalization_18/betaB&Generator/batch_normalization_18/gammaB,Generator/batch_normalization_18/moving_meanB0Generator/batch_normalization_18/moving_varianceB%Generator/batch_normalization_19/betaB&Generator/batch_normalization_19/gammaB,Generator/batch_normalization_19/moving_meanB0Generator/batch_normalization_19/moving_varianceB$Generator/batch_normalization_2/betaB%Generator/batch_normalization_2/gammaB+Generator/batch_normalization_2/moving_meanB/Generator/batch_normalization_2/moving_varianceB%Generator/batch_normalization_20/betaB&Generator/batch_normalization_20/gammaB,Generator/batch_normalization_20/moving_meanB0Generator/batch_normalization_20/moving_varianceB%Generator/batch_normalization_21/betaB&Generator/batch_normalization_21/gammaB,Generator/batch_normalization_21/moving_meanB0Generator/batch_normalization_21/moving_varianceB%Generator/batch_normalization_22/betaB&Generator/batch_normalization_22/gammaB,Generator/batch_normalization_22/moving_meanB0Generator/batch_normalization_22/moving_varianceB%Generator/batch_normalization_23/betaB&Generator/batch_normalization_23/gammaB,Generator/batch_normalization_23/moving_meanB0Generator/batch_normalization_23/moving_varianceB%Generator/batch_normalization_24/betaB&Generator/batch_normalization_24/gammaB,Generator/batch_normalization_24/moving_meanB0Generator/batch_normalization_24/moving_varianceB$Generator/batch_normalization_3/betaB%Generator/batch_normalization_3/gammaB+Generator/batch_normalization_3/moving_meanB/Generator/batch_normalization_3/moving_varianceB$Generator/batch_normalization_4/betaB%Generator/batch_normalization_4/gammaB+Generator/batch_normalization_4/moving_meanB/Generator/batch_normalization_4/moving_varianceB$Generator/batch_normalization_5/betaB%Generator/batch_normalization_5/gammaB+Generator/batch_normalization_5/moving_meanB/Generator/batch_normalization_5/moving_varianceB$Generator/batch_normalization_6/betaB%Generator/batch_normalization_6/gammaB+Generator/batch_normalization_6/moving_meanB/Generator/batch_normalization_6/moving_varianceB$Generator/batch_normalization_7/betaB%Generator/batch_normalization_7/gammaB+Generator/batch_normalization_7/moving_meanB/Generator/batch_normalization_7/moving_varianceB$Generator/batch_normalization_8/betaB%Generator/batch_normalization_8/gammaB+Generator/batch_normalization_8/moving_meanB/Generator/batch_normalization_8/moving_varianceB$Generator/batch_normalization_9/betaB%Generator/batch_normalization_9/gammaB+Generator/batch_normalization_9/moving_meanB/Generator/batch_normalization_9/moving_variance*
dtype0*
_output_shapes
:d
�
#save_1/RestoreV2_1/shape_and_slicesConst*�
value�B�dB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:d
�
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*r
dtypesh
f2d*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
�
save_1/Assign_52Assign"Generator/batch_normalization/betasave_1/RestoreV2_1*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*5
_class+
)'loc:@Generator/batch_normalization/beta
�
save_1/Assign_53Assign#Generator/batch_normalization/gammasave_1/RestoreV2_1:1*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*6
_class,
*(loc:@Generator/batch_normalization/gamma
�
save_1/Assign_54Assign)Generator/batch_normalization/moving_meansave_1/RestoreV2_1:2*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*<
_class2
0.loc:@Generator/batch_normalization/moving_mean
�
save_1/Assign_55Assign-Generator/batch_normalization/moving_variancesave_1/RestoreV2_1:3*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*@
_class6
42loc:@Generator/batch_normalization/moving_variance
�
save_1/Assign_56Assign$Generator/batch_normalization_1/betasave_1/RestoreV2_1:4*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_1/beta
�
save_1/Assign_57Assign%Generator/batch_normalization_1/gammasave_1/RestoreV2_1:5*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_1/gamma
�
save_1/Assign_58Assign+Generator/batch_normalization_1/moving_meansave_1/RestoreV2_1:6*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_1/moving_mean
�
save_1/Assign_59Assign/Generator/batch_normalization_1/moving_variancesave_1/RestoreV2_1:7*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_1/moving_variance
�
save_1/Assign_60Assign%Generator/batch_normalization_10/betasave_1/RestoreV2_1:8*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_10/beta
�
save_1/Assign_61Assign&Generator/batch_normalization_10/gammasave_1/RestoreV2_1:9*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_10/gamma
�
save_1/Assign_62Assign,Generator/batch_normalization_10/moving_meansave_1/RestoreV2_1:10*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_10/moving_mean
�
save_1/Assign_63Assign0Generator/batch_normalization_10/moving_variancesave_1/RestoreV2_1:11*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_10/moving_variance
�
save_1/Assign_64Assign%Generator/batch_normalization_11/betasave_1/RestoreV2_1:12*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_11/beta
�
save_1/Assign_65Assign&Generator/batch_normalization_11/gammasave_1/RestoreV2_1:13*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_11/gamma
�
save_1/Assign_66Assign,Generator/batch_normalization_11/moving_meansave_1/RestoreV2_1:14*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_11/moving_mean
�
save_1/Assign_67Assign0Generator/batch_normalization_11/moving_variancesave_1/RestoreV2_1:15*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_11/moving_variance
�
save_1/Assign_68Assign%Generator/batch_normalization_12/betasave_1/RestoreV2_1:16*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_12/beta
�
save_1/Assign_69Assign&Generator/batch_normalization_12/gammasave_1/RestoreV2_1:17*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_12/gamma
�
save_1/Assign_70Assign,Generator/batch_normalization_12/moving_meansave_1/RestoreV2_1:18*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_12/moving_mean
�
save_1/Assign_71Assign0Generator/batch_normalization_12/moving_variancesave_1/RestoreV2_1:19*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_12/moving_variance
�
save_1/Assign_72Assign%Generator/batch_normalization_13/betasave_1/RestoreV2_1:20*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_13/beta
�
save_1/Assign_73Assign&Generator/batch_normalization_13/gammasave_1/RestoreV2_1:21*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_13/gamma
�
save_1/Assign_74Assign,Generator/batch_normalization_13/moving_meansave_1/RestoreV2_1:22*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_13/moving_mean
�
save_1/Assign_75Assign0Generator/batch_normalization_13/moving_variancesave_1/RestoreV2_1:23*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_13/moving_variance
�
save_1/Assign_76Assign%Generator/batch_normalization_14/betasave_1/RestoreV2_1:24*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_14/beta
�
save_1/Assign_77Assign&Generator/batch_normalization_14/gammasave_1/RestoreV2_1:25*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_14/gamma
�
save_1/Assign_78Assign,Generator/batch_normalization_14/moving_meansave_1/RestoreV2_1:26*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_14/moving_mean
�
save_1/Assign_79Assign0Generator/batch_normalization_14/moving_variancesave_1/RestoreV2_1:27*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_14/moving_variance
�
save_1/Assign_80Assign%Generator/batch_normalization_15/betasave_1/RestoreV2_1:28*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_15/beta
�
save_1/Assign_81Assign&Generator/batch_normalization_15/gammasave_1/RestoreV2_1:29*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_15/gamma
�
save_1/Assign_82Assign,Generator/batch_normalization_15/moving_meansave_1/RestoreV2_1:30*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_15/moving_mean
�
save_1/Assign_83Assign0Generator/batch_normalization_15/moving_variancesave_1/RestoreV2_1:31*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_15/moving_variance
�
save_1/Assign_84Assign%Generator/batch_normalization_16/betasave_1/RestoreV2_1:32*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_16/beta
�
save_1/Assign_85Assign&Generator/batch_normalization_16/gammasave_1/RestoreV2_1:33*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_16/gamma
�
save_1/Assign_86Assign,Generator/batch_normalization_16/moving_meansave_1/RestoreV2_1:34*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_16/moving_mean
�
save_1/Assign_87Assign0Generator/batch_normalization_16/moving_variancesave_1/RestoreV2_1:35*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_16/moving_variance
�
save_1/Assign_88Assign%Generator/batch_normalization_17/betasave_1/RestoreV2_1:36*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_17/beta
�
save_1/Assign_89Assign&Generator/batch_normalization_17/gammasave_1/RestoreV2_1:37*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_17/gamma
�
save_1/Assign_90Assign,Generator/batch_normalization_17/moving_meansave_1/RestoreV2_1:38*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_17/moving_mean
�
save_1/Assign_91Assign0Generator/batch_normalization_17/moving_variancesave_1/RestoreV2_1:39*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_17/moving_variance
�
save_1/Assign_92Assign%Generator/batch_normalization_18/betasave_1/RestoreV2_1:40*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_18/beta
�
save_1/Assign_93Assign&Generator/batch_normalization_18/gammasave_1/RestoreV2_1:41*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_18/gamma
�
save_1/Assign_94Assign,Generator/batch_normalization_18/moving_meansave_1/RestoreV2_1:42*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_18/moving_mean
�
save_1/Assign_95Assign0Generator/batch_normalization_18/moving_variancesave_1/RestoreV2_1:43*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_18/moving_variance
�
save_1/Assign_96Assign%Generator/batch_normalization_19/betasave_1/RestoreV2_1:44*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_19/beta
�
save_1/Assign_97Assign&Generator/batch_normalization_19/gammasave_1/RestoreV2_1:45*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_19/gamma
�
save_1/Assign_98Assign,Generator/batch_normalization_19/moving_meansave_1/RestoreV2_1:46*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_19/moving_mean
�
save_1/Assign_99Assign0Generator/batch_normalization_19/moving_variancesave_1/RestoreV2_1:47*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_19/moving_variance
�
save_1/Assign_100Assign$Generator/batch_normalization_2/betasave_1/RestoreV2_1:48*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_2/beta
�
save_1/Assign_101Assign%Generator/batch_normalization_2/gammasave_1/RestoreV2_1:49*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_2/gamma
�
save_1/Assign_102Assign+Generator/batch_normalization_2/moving_meansave_1/RestoreV2_1:50*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_2/moving_mean
�
save_1/Assign_103Assign/Generator/batch_normalization_2/moving_variancesave_1/RestoreV2_1:51*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_2/moving_variance
�
save_1/Assign_104Assign%Generator/batch_normalization_20/betasave_1/RestoreV2_1:52*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_20/beta
�
save_1/Assign_105Assign&Generator/batch_normalization_20/gammasave_1/RestoreV2_1:53*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_20/gamma
�
save_1/Assign_106Assign,Generator/batch_normalization_20/moving_meansave_1/RestoreV2_1:54*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_20/moving_mean
�
save_1/Assign_107Assign0Generator/batch_normalization_20/moving_variancesave_1/RestoreV2_1:55*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_20/moving_variance
�
save_1/Assign_108Assign%Generator/batch_normalization_21/betasave_1/RestoreV2_1:56*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_21/beta
�
save_1/Assign_109Assign&Generator/batch_normalization_21/gammasave_1/RestoreV2_1:57*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_21/gamma
�
save_1/Assign_110Assign,Generator/batch_normalization_21/moving_meansave_1/RestoreV2_1:58*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_21/moving_mean
�
save_1/Assign_111Assign0Generator/batch_normalization_21/moving_variancesave_1/RestoreV2_1:59*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_21/moving_variance
�
save_1/Assign_112Assign%Generator/batch_normalization_22/betasave_1/RestoreV2_1:60*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_22/beta
�
save_1/Assign_113Assign&Generator/batch_normalization_22/gammasave_1/RestoreV2_1:61*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_22/gamma
�
save_1/Assign_114Assign,Generator/batch_normalization_22/moving_meansave_1/RestoreV2_1:62*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_22/moving_mean
�
save_1/Assign_115Assign0Generator/batch_normalization_22/moving_variancesave_1/RestoreV2_1:63*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_22/moving_variance
�
save_1/Assign_116Assign%Generator/batch_normalization_23/betasave_1/RestoreV2_1:64*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_23/beta
�
save_1/Assign_117Assign&Generator/batch_normalization_23/gammasave_1/RestoreV2_1:65*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_23/gamma
�
save_1/Assign_118Assign,Generator/batch_normalization_23/moving_meansave_1/RestoreV2_1:66*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_23/moving_mean
�
save_1/Assign_119Assign0Generator/batch_normalization_23/moving_variancesave_1/RestoreV2_1:67*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_23/moving_variance
�
save_1/Assign_120Assign%Generator/batch_normalization_24/betasave_1/RestoreV2_1:68*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_24/beta
�
save_1/Assign_121Assign&Generator/batch_normalization_24/gammasave_1/RestoreV2_1:69*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*9
_class/
-+loc:@Generator/batch_normalization_24/gamma
�
save_1/Assign_122Assign,Generator/batch_normalization_24/moving_meansave_1/RestoreV2_1:70*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*?
_class5
31loc:@Generator/batch_normalization_24/moving_mean
�
save_1/Assign_123Assign0Generator/batch_normalization_24/moving_variancesave_1/RestoreV2_1:71*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*C
_class9
75loc:@Generator/batch_normalization_24/moving_variance
�
save_1/Assign_124Assign$Generator/batch_normalization_3/betasave_1/RestoreV2_1:72*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_3/beta
�
save_1/Assign_125Assign%Generator/batch_normalization_3/gammasave_1/RestoreV2_1:73*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_3/gamma
�
save_1/Assign_126Assign+Generator/batch_normalization_3/moving_meansave_1/RestoreV2_1:74*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_3/moving_mean
�
save_1/Assign_127Assign/Generator/batch_normalization_3/moving_variancesave_1/RestoreV2_1:75*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_3/moving_variance
�
save_1/Assign_128Assign$Generator/batch_normalization_4/betasave_1/RestoreV2_1:76*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_4/beta
�
save_1/Assign_129Assign%Generator/batch_normalization_4/gammasave_1/RestoreV2_1:77*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_4/gamma
�
save_1/Assign_130Assign+Generator/batch_normalization_4/moving_meansave_1/RestoreV2_1:78*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_4/moving_mean
�
save_1/Assign_131Assign/Generator/batch_normalization_4/moving_variancesave_1/RestoreV2_1:79*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_4/moving_variance
�
save_1/Assign_132Assign$Generator/batch_normalization_5/betasave_1/RestoreV2_1:80*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_5/beta
�
save_1/Assign_133Assign%Generator/batch_normalization_5/gammasave_1/RestoreV2_1:81*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_5/gamma
�
save_1/Assign_134Assign+Generator/batch_normalization_5/moving_meansave_1/RestoreV2_1:82*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_5/moving_mean
�
save_1/Assign_135Assign/Generator/batch_normalization_5/moving_variancesave_1/RestoreV2_1:83*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_5/moving_variance
�
save_1/Assign_136Assign$Generator/batch_normalization_6/betasave_1/RestoreV2_1:84*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_6/beta
�
save_1/Assign_137Assign%Generator/batch_normalization_6/gammasave_1/RestoreV2_1:85*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_6/gamma
�
save_1/Assign_138Assign+Generator/batch_normalization_6/moving_meansave_1/RestoreV2_1:86*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_6/moving_mean
�
save_1/Assign_139Assign/Generator/batch_normalization_6/moving_variancesave_1/RestoreV2_1:87*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_6/moving_variance
�
save_1/Assign_140Assign$Generator/batch_normalization_7/betasave_1/RestoreV2_1:88*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_7/beta
�
save_1/Assign_141Assign%Generator/batch_normalization_7/gammasave_1/RestoreV2_1:89*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_7/gamma
�
save_1/Assign_142Assign+Generator/batch_normalization_7/moving_meansave_1/RestoreV2_1:90*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_7/moving_mean
�
save_1/Assign_143Assign/Generator/batch_normalization_7/moving_variancesave_1/RestoreV2_1:91*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_7/moving_variance
�
save_1/Assign_144Assign$Generator/batch_normalization_8/betasave_1/RestoreV2_1:92*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_8/beta
�
save_1/Assign_145Assign%Generator/batch_normalization_8/gammasave_1/RestoreV2_1:93*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_8/gamma
�
save_1/Assign_146Assign+Generator/batch_normalization_8/moving_meansave_1/RestoreV2_1:94*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_8/moving_mean
�
save_1/Assign_147Assign/Generator/batch_normalization_8/moving_variancesave_1/RestoreV2_1:95*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_8/moving_variance
�
save_1/Assign_148Assign$Generator/batch_normalization_9/betasave_1/RestoreV2_1:96*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*7
_class-
+)loc:@Generator/batch_normalization_9/beta
�
save_1/Assign_149Assign%Generator/batch_normalization_9/gammasave_1/RestoreV2_1:97*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*8
_class.
,*loc:@Generator/batch_normalization_9/gamma
�
save_1/Assign_150Assign+Generator/batch_normalization_9/moving_meansave_1/RestoreV2_1:98*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*>
_class4
20loc:@Generator/batch_normalization_9/moving_mean
�
save_1/Assign_151Assign/Generator/batch_normalization_9/moving_variancesave_1/RestoreV2_1:99*
T0*
_output_shapes	
:�*
use_locking(*
validate_shape(*B
_class8
64loc:@Generator/batch_normalization_9/moving_variance
�
save_1/restore_shard_1NoOp^save_1/Assign_100^save_1/Assign_101^save_1/Assign_102^save_1/Assign_103^save_1/Assign_104^save_1/Assign_105^save_1/Assign_106^save_1/Assign_107^save_1/Assign_108^save_1/Assign_109^save_1/Assign_110^save_1/Assign_111^save_1/Assign_112^save_1/Assign_113^save_1/Assign_114^save_1/Assign_115^save_1/Assign_116^save_1/Assign_117^save_1/Assign_118^save_1/Assign_119^save_1/Assign_120^save_1/Assign_121^save_1/Assign_122^save_1/Assign_123^save_1/Assign_124^save_1/Assign_125^save_1/Assign_126^save_1/Assign_127^save_1/Assign_128^save_1/Assign_129^save_1/Assign_130^save_1/Assign_131^save_1/Assign_132^save_1/Assign_133^save_1/Assign_134^save_1/Assign_135^save_1/Assign_136^save_1/Assign_137^save_1/Assign_138^save_1/Assign_139^save_1/Assign_140^save_1/Assign_141^save_1/Assign_142^save_1/Assign_143^save_1/Assign_144^save_1/Assign_145^save_1/Assign_146^save_1/Assign_147^save_1/Assign_148^save_1/Assign_149^save_1/Assign_150^save_1/Assign_151^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_74^save_1/Assign_75^save_1/Assign_76^save_1/Assign_77^save_1/Assign_78^save_1/Assign_79^save_1/Assign_80^save_1/Assign_81^save_1/Assign_82^save_1/Assign_83^save_1/Assign_84^save_1/Assign_85^save_1/Assign_86^save_1/Assign_87^save_1/Assign_88^save_1/Assign_89^save_1/Assign_90^save_1/Assign_91^save_1/Assign_92^save_1/Assign_93^save_1/Assign_94^save_1/Assign_95^save_1/Assign_96^save_1/Assign_97^save_1/Assign_98^save_1/Assign_99
6
save_1/restore_all/NoOpNoOp^save_1/restore_shard
:
save_1/restore_all/NoOp_1NoOp^save_1/restore_shard_1
P
save_1/restore_allNoOp^save_1/restore_all/NoOp^save_1/restore_all/NoOp_1 "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"��
trainable_variables����
�
#Generator/Gen_down0/conv1/filters:0(Generator/Gen_down0/conv1/filters/Assign(Generator/Gen_down0/conv1/filters/read:02@Generator/Gen_down0/conv1/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down0/conv1/biases:0'Generator/Gen_down0/conv1/biases/Assign'Generator/Gen_down0/conv1/biases/read:024Generator/Gen_down0/conv1/biases/Initializer/Const:0
�
%Generator/batch_normalization/gamma:0*Generator/batch_normalization/gamma/Assign*Generator/batch_normalization/gamma/read:026Generator/batch_normalization/gamma/Initializer/ones:0
�
$Generator/batch_normalization/beta:0)Generator/batch_normalization/beta/Assign)Generator/batch_normalization/beta/read:026Generator/batch_normalization/beta/Initializer/zeros:0
�
#Generator/Gen_down0/conv2/filters:0(Generator/Gen_down0/conv2/filters/Assign(Generator/Gen_down0/conv2/filters/read:02@Generator/Gen_down0/conv2/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down0/conv2/biases:0'Generator/Gen_down0/conv2/biases/Assign'Generator/Gen_down0/conv2/biases/read:024Generator/Gen_down0/conv2/biases/Initializer/Const:0
�
'Generator/batch_normalization_1/gamma:0,Generator/batch_normalization_1/gamma/Assign,Generator/batch_normalization_1/gamma/read:028Generator/batch_normalization_1/gamma/Initializer/ones:0
�
&Generator/batch_normalization_1/beta:0+Generator/batch_normalization_1/beta/Assign+Generator/batch_normalization_1/beta/read:028Generator/batch_normalization_1/beta/Initializer/zeros:0
�
#Generator/Gen_down0/conv3/filters:0(Generator/Gen_down0/conv3/filters/Assign(Generator/Gen_down0/conv3/filters/read:02@Generator/Gen_down0/conv3/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down0/conv3/biases:0'Generator/Gen_down0/conv3/biases/Assign'Generator/Gen_down0/conv3/biases/read:024Generator/Gen_down0/conv3/biases/Initializer/Const:0
�
'Generator/batch_normalization_2/gamma:0,Generator/batch_normalization_2/gamma/Assign,Generator/batch_normalization_2/gamma/read:028Generator/batch_normalization_2/gamma/Initializer/ones:0
�
&Generator/batch_normalization_2/beta:0+Generator/batch_normalization_2/beta/Assign+Generator/batch_normalization_2/beta/read:028Generator/batch_normalization_2/beta/Initializer/zeros:0
�
#Generator/Gen_down1/conv1/filters:0(Generator/Gen_down1/conv1/filters/Assign(Generator/Gen_down1/conv1/filters/read:02@Generator/Gen_down1/conv1/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down1/conv1/biases:0'Generator/Gen_down1/conv1/biases/Assign'Generator/Gen_down1/conv1/biases/read:024Generator/Gen_down1/conv1/biases/Initializer/Const:0
�
'Generator/batch_normalization_3/gamma:0,Generator/batch_normalization_3/gamma/Assign,Generator/batch_normalization_3/gamma/read:028Generator/batch_normalization_3/gamma/Initializer/ones:0
�
&Generator/batch_normalization_3/beta:0+Generator/batch_normalization_3/beta/Assign+Generator/batch_normalization_3/beta/read:028Generator/batch_normalization_3/beta/Initializer/zeros:0
�
#Generator/Gen_down1/conv2/filters:0(Generator/Gen_down1/conv2/filters/Assign(Generator/Gen_down1/conv2/filters/read:02@Generator/Gen_down1/conv2/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down1/conv2/biases:0'Generator/Gen_down1/conv2/biases/Assign'Generator/Gen_down1/conv2/biases/read:024Generator/Gen_down1/conv2/biases/Initializer/Const:0
�
'Generator/batch_normalization_4/gamma:0,Generator/batch_normalization_4/gamma/Assign,Generator/batch_normalization_4/gamma/read:028Generator/batch_normalization_4/gamma/Initializer/ones:0
�
&Generator/batch_normalization_4/beta:0+Generator/batch_normalization_4/beta/Assign+Generator/batch_normalization_4/beta/read:028Generator/batch_normalization_4/beta/Initializer/zeros:0
�
#Generator/Gen_down1/conv3/filters:0(Generator/Gen_down1/conv3/filters/Assign(Generator/Gen_down1/conv3/filters/read:02@Generator/Gen_down1/conv3/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down1/conv3/biases:0'Generator/Gen_down1/conv3/biases/Assign'Generator/Gen_down1/conv3/biases/read:024Generator/Gen_down1/conv3/biases/Initializer/Const:0
�
'Generator/batch_normalization_5/gamma:0,Generator/batch_normalization_5/gamma/Assign,Generator/batch_normalization_5/gamma/read:028Generator/batch_normalization_5/gamma/Initializer/ones:0
�
&Generator/batch_normalization_5/beta:0+Generator/batch_normalization_5/beta/Assign+Generator/batch_normalization_5/beta/read:028Generator/batch_normalization_5/beta/Initializer/zeros:0
�
#Generator/Gen_down2/conv1/filters:0(Generator/Gen_down2/conv1/filters/Assign(Generator/Gen_down2/conv1/filters/read:02@Generator/Gen_down2/conv1/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down2/conv1/biases:0'Generator/Gen_down2/conv1/biases/Assign'Generator/Gen_down2/conv1/biases/read:024Generator/Gen_down2/conv1/biases/Initializer/Const:0
�
'Generator/batch_normalization_6/gamma:0,Generator/batch_normalization_6/gamma/Assign,Generator/batch_normalization_6/gamma/read:028Generator/batch_normalization_6/gamma/Initializer/ones:0
�
&Generator/batch_normalization_6/beta:0+Generator/batch_normalization_6/beta/Assign+Generator/batch_normalization_6/beta/read:028Generator/batch_normalization_6/beta/Initializer/zeros:0
�
#Generator/Gen_down2/conv2/filters:0(Generator/Gen_down2/conv2/filters/Assign(Generator/Gen_down2/conv2/filters/read:02@Generator/Gen_down2/conv2/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down2/conv2/biases:0'Generator/Gen_down2/conv2/biases/Assign'Generator/Gen_down2/conv2/biases/read:024Generator/Gen_down2/conv2/biases/Initializer/Const:0
�
'Generator/batch_normalization_7/gamma:0,Generator/batch_normalization_7/gamma/Assign,Generator/batch_normalization_7/gamma/read:028Generator/batch_normalization_7/gamma/Initializer/ones:0
�
&Generator/batch_normalization_7/beta:0+Generator/batch_normalization_7/beta/Assign+Generator/batch_normalization_7/beta/read:028Generator/batch_normalization_7/beta/Initializer/zeros:0
�
#Generator/Gen_down2/conv3/filters:0(Generator/Gen_down2/conv3/filters/Assign(Generator/Gen_down2/conv3/filters/read:02@Generator/Gen_down2/conv3/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down2/conv3/biases:0'Generator/Gen_down2/conv3/biases/Assign'Generator/Gen_down2/conv3/biases/read:024Generator/Gen_down2/conv3/biases/Initializer/Const:0
�
'Generator/batch_normalization_8/gamma:0,Generator/batch_normalization_8/gamma/Assign,Generator/batch_normalization_8/gamma/read:028Generator/batch_normalization_8/gamma/Initializer/ones:0
�
&Generator/batch_normalization_8/beta:0+Generator/batch_normalization_8/beta/Assign+Generator/batch_normalization_8/beta/read:028Generator/batch_normalization_8/beta/Initializer/zeros:0
�
#Generator/Gen_down3/conv1/filters:0(Generator/Gen_down3/conv1/filters/Assign(Generator/Gen_down3/conv1/filters/read:02@Generator/Gen_down3/conv1/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down3/conv1/biases:0'Generator/Gen_down3/conv1/biases/Assign'Generator/Gen_down3/conv1/biases/read:024Generator/Gen_down3/conv1/biases/Initializer/Const:0
�
'Generator/batch_normalization_9/gamma:0,Generator/batch_normalization_9/gamma/Assign,Generator/batch_normalization_9/gamma/read:028Generator/batch_normalization_9/gamma/Initializer/ones:0
�
&Generator/batch_normalization_9/beta:0+Generator/batch_normalization_9/beta/Assign+Generator/batch_normalization_9/beta/read:028Generator/batch_normalization_9/beta/Initializer/zeros:0
�
#Generator/Gen_down3/conv2/filters:0(Generator/Gen_down3/conv2/filters/Assign(Generator/Gen_down3/conv2/filters/read:02@Generator/Gen_down3/conv2/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down3/conv2/biases:0'Generator/Gen_down3/conv2/biases/Assign'Generator/Gen_down3/conv2/biases/read:024Generator/Gen_down3/conv2/biases/Initializer/Const:0
�
(Generator/batch_normalization_10/gamma:0-Generator/batch_normalization_10/gamma/Assign-Generator/batch_normalization_10/gamma/read:029Generator/batch_normalization_10/gamma/Initializer/ones:0
�
'Generator/batch_normalization_10/beta:0,Generator/batch_normalization_10/beta/Assign,Generator/batch_normalization_10/beta/read:029Generator/batch_normalization_10/beta/Initializer/zeros:0
�
#Generator/Gen_down3/conv3/filters:0(Generator/Gen_down3/conv3/filters/Assign(Generator/Gen_down3/conv3/filters/read:02@Generator/Gen_down3/conv3/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down3/conv3/biases:0'Generator/Gen_down3/conv3/biases/Assign'Generator/Gen_down3/conv3/biases/read:024Generator/Gen_down3/conv3/biases/Initializer/Const:0
�
(Generator/batch_normalization_11/gamma:0-Generator/batch_normalization_11/gamma/Assign-Generator/batch_normalization_11/gamma/read:029Generator/batch_normalization_11/gamma/Initializer/ones:0
�
'Generator/batch_normalization_11/beta:0,Generator/batch_normalization_11/beta/Assign,Generator/batch_normalization_11/beta/read:029Generator/batch_normalization_11/beta/Initializer/zeros:0
�
Generator/Gen_center/filters:0#Generator/Gen_center/filters/Assign#Generator/Gen_center/filters/read:02;Generator/Gen_center/filters/Initializer/truncated_normal:0
�
Generator/Gen_center/biases:0"Generator/Gen_center/biases/Assign"Generator/Gen_center/biases/read:02/Generator/Gen_center/biases/Initializer/Const:0
�
(Generator/batch_normalization_12/gamma:0-Generator/batch_normalization_12/gamma/Assign-Generator/batch_normalization_12/gamma/read:029Generator/batch_normalization_12/gamma/Initializer/ones:0
�
'Generator/batch_normalization_12/beta:0,Generator/batch_normalization_12/beta/Assign,Generator/batch_normalization_12/beta/read:029Generator/batch_normalization_12/beta/Initializer/zeros:0
�
!Generator/Gen_up3/conv1/filters:0&Generator/Gen_up3/conv1/filters/Assign&Generator/Gen_up3/conv1/filters/read:02>Generator/Gen_up3/conv1/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up3/conv1/biases:0%Generator/Gen_up3/conv1/biases/Assign%Generator/Gen_up3/conv1/biases/read:022Generator/Gen_up3/conv1/biases/Initializer/Const:0
�
(Generator/batch_normalization_13/gamma:0-Generator/batch_normalization_13/gamma/Assign-Generator/batch_normalization_13/gamma/read:029Generator/batch_normalization_13/gamma/Initializer/ones:0
�
'Generator/batch_normalization_13/beta:0,Generator/batch_normalization_13/beta/Assign,Generator/batch_normalization_13/beta/read:029Generator/batch_normalization_13/beta/Initializer/zeros:0
�
!Generator/Gen_up3/conv2/filters:0&Generator/Gen_up3/conv2/filters/Assign&Generator/Gen_up3/conv2/filters/read:02>Generator/Gen_up3/conv2/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up3/conv2/biases:0%Generator/Gen_up3/conv2/biases/Assign%Generator/Gen_up3/conv2/biases/read:022Generator/Gen_up3/conv2/biases/Initializer/Const:0
�
(Generator/batch_normalization_14/gamma:0-Generator/batch_normalization_14/gamma/Assign-Generator/batch_normalization_14/gamma/read:029Generator/batch_normalization_14/gamma/Initializer/ones:0
�
'Generator/batch_normalization_14/beta:0,Generator/batch_normalization_14/beta/Assign,Generator/batch_normalization_14/beta/read:029Generator/batch_normalization_14/beta/Initializer/zeros:0
�
!Generator/Gen_up3/conv3/filters:0&Generator/Gen_up3/conv3/filters/Assign&Generator/Gen_up3/conv3/filters/read:02>Generator/Gen_up3/conv3/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up3/conv3/biases:0%Generator/Gen_up3/conv3/biases/Assign%Generator/Gen_up3/conv3/biases/read:022Generator/Gen_up3/conv3/biases/Initializer/Const:0
�
(Generator/batch_normalization_15/gamma:0-Generator/batch_normalization_15/gamma/Assign-Generator/batch_normalization_15/gamma/read:029Generator/batch_normalization_15/gamma/Initializer/ones:0
�
'Generator/batch_normalization_15/beta:0,Generator/batch_normalization_15/beta/Assign,Generator/batch_normalization_15/beta/read:029Generator/batch_normalization_15/beta/Initializer/zeros:0
�
!Generator/Gen_up2/conv1/filters:0&Generator/Gen_up2/conv1/filters/Assign&Generator/Gen_up2/conv1/filters/read:02>Generator/Gen_up2/conv1/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up2/conv1/biases:0%Generator/Gen_up2/conv1/biases/Assign%Generator/Gen_up2/conv1/biases/read:022Generator/Gen_up2/conv1/biases/Initializer/Const:0
�
(Generator/batch_normalization_16/gamma:0-Generator/batch_normalization_16/gamma/Assign-Generator/batch_normalization_16/gamma/read:029Generator/batch_normalization_16/gamma/Initializer/ones:0
�
'Generator/batch_normalization_16/beta:0,Generator/batch_normalization_16/beta/Assign,Generator/batch_normalization_16/beta/read:029Generator/batch_normalization_16/beta/Initializer/zeros:0
�
!Generator/Gen_up2/conv2/filters:0&Generator/Gen_up2/conv2/filters/Assign&Generator/Gen_up2/conv2/filters/read:02>Generator/Gen_up2/conv2/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up2/conv2/biases:0%Generator/Gen_up2/conv2/biases/Assign%Generator/Gen_up2/conv2/biases/read:022Generator/Gen_up2/conv2/biases/Initializer/Const:0
�
(Generator/batch_normalization_17/gamma:0-Generator/batch_normalization_17/gamma/Assign-Generator/batch_normalization_17/gamma/read:029Generator/batch_normalization_17/gamma/Initializer/ones:0
�
'Generator/batch_normalization_17/beta:0,Generator/batch_normalization_17/beta/Assign,Generator/batch_normalization_17/beta/read:029Generator/batch_normalization_17/beta/Initializer/zeros:0
�
!Generator/Gen_up2/conv3/filters:0&Generator/Gen_up2/conv3/filters/Assign&Generator/Gen_up2/conv3/filters/read:02>Generator/Gen_up2/conv3/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up2/conv3/biases:0%Generator/Gen_up2/conv3/biases/Assign%Generator/Gen_up2/conv3/biases/read:022Generator/Gen_up2/conv3/biases/Initializer/Const:0
�
(Generator/batch_normalization_18/gamma:0-Generator/batch_normalization_18/gamma/Assign-Generator/batch_normalization_18/gamma/read:029Generator/batch_normalization_18/gamma/Initializer/ones:0
�
'Generator/batch_normalization_18/beta:0,Generator/batch_normalization_18/beta/Assign,Generator/batch_normalization_18/beta/read:029Generator/batch_normalization_18/beta/Initializer/zeros:0
�
!Generator/Gen_up1/conv1/filters:0&Generator/Gen_up1/conv1/filters/Assign&Generator/Gen_up1/conv1/filters/read:02>Generator/Gen_up1/conv1/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up1/conv1/biases:0%Generator/Gen_up1/conv1/biases/Assign%Generator/Gen_up1/conv1/biases/read:022Generator/Gen_up1/conv1/biases/Initializer/Const:0
�
(Generator/batch_normalization_19/gamma:0-Generator/batch_normalization_19/gamma/Assign-Generator/batch_normalization_19/gamma/read:029Generator/batch_normalization_19/gamma/Initializer/ones:0
�
'Generator/batch_normalization_19/beta:0,Generator/batch_normalization_19/beta/Assign,Generator/batch_normalization_19/beta/read:029Generator/batch_normalization_19/beta/Initializer/zeros:0
�
!Generator/Gen_up1/conv2/filters:0&Generator/Gen_up1/conv2/filters/Assign&Generator/Gen_up1/conv2/filters/read:02>Generator/Gen_up1/conv2/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up1/conv2/biases:0%Generator/Gen_up1/conv2/biases/Assign%Generator/Gen_up1/conv2/biases/read:022Generator/Gen_up1/conv2/biases/Initializer/Const:0
�
(Generator/batch_normalization_20/gamma:0-Generator/batch_normalization_20/gamma/Assign-Generator/batch_normalization_20/gamma/read:029Generator/batch_normalization_20/gamma/Initializer/ones:0
�
'Generator/batch_normalization_20/beta:0,Generator/batch_normalization_20/beta/Assign,Generator/batch_normalization_20/beta/read:029Generator/batch_normalization_20/beta/Initializer/zeros:0
�
!Generator/Gen_up1/conv3/filters:0&Generator/Gen_up1/conv3/filters/Assign&Generator/Gen_up1/conv3/filters/read:02>Generator/Gen_up1/conv3/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up1/conv3/biases:0%Generator/Gen_up1/conv3/biases/Assign%Generator/Gen_up1/conv3/biases/read:022Generator/Gen_up1/conv3/biases/Initializer/Const:0
�
(Generator/batch_normalization_21/gamma:0-Generator/batch_normalization_21/gamma/Assign-Generator/batch_normalization_21/gamma/read:029Generator/batch_normalization_21/gamma/Initializer/ones:0
�
'Generator/batch_normalization_21/beta:0,Generator/batch_normalization_21/beta/Assign,Generator/batch_normalization_21/beta/read:029Generator/batch_normalization_21/beta/Initializer/zeros:0
�
!Generator/Gen_up0/conv1/filters:0&Generator/Gen_up0/conv1/filters/Assign&Generator/Gen_up0/conv1/filters/read:02>Generator/Gen_up0/conv1/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up0/conv1/biases:0%Generator/Gen_up0/conv1/biases/Assign%Generator/Gen_up0/conv1/biases/read:022Generator/Gen_up0/conv1/biases/Initializer/Const:0
�
(Generator/batch_normalization_22/gamma:0-Generator/batch_normalization_22/gamma/Assign-Generator/batch_normalization_22/gamma/read:029Generator/batch_normalization_22/gamma/Initializer/ones:0
�
'Generator/batch_normalization_22/beta:0,Generator/batch_normalization_22/beta/Assign,Generator/batch_normalization_22/beta/read:029Generator/batch_normalization_22/beta/Initializer/zeros:0
�
!Generator/Gen_up0/conv2/filters:0&Generator/Gen_up0/conv2/filters/Assign&Generator/Gen_up0/conv2/filters/read:02>Generator/Gen_up0/conv2/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up0/conv2/biases:0%Generator/Gen_up0/conv2/biases/Assign%Generator/Gen_up0/conv2/biases/read:022Generator/Gen_up0/conv2/biases/Initializer/Const:0
�
(Generator/batch_normalization_23/gamma:0-Generator/batch_normalization_23/gamma/Assign-Generator/batch_normalization_23/gamma/read:029Generator/batch_normalization_23/gamma/Initializer/ones:0
�
'Generator/batch_normalization_23/beta:0,Generator/batch_normalization_23/beta/Assign,Generator/batch_normalization_23/beta/read:029Generator/batch_normalization_23/beta/Initializer/zeros:0
�
!Generator/Gen_up0/conv3/filters:0&Generator/Gen_up0/conv3/filters/Assign&Generator/Gen_up0/conv3/filters/read:02>Generator/Gen_up0/conv3/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up0/conv3/biases:0%Generator/Gen_up0/conv3/biases/Assign%Generator/Gen_up0/conv3/biases/read:022Generator/Gen_up0/conv3/biases/Initializer/Const:0
�
(Generator/batch_normalization_24/gamma:0-Generator/batch_normalization_24/gamma/Assign-Generator/batch_normalization_24/gamma/read:029Generator/batch_normalization_24/gamma/Initializer/ones:0
�
'Generator/batch_normalization_24/beta:0,Generator/batch_normalization_24/beta/Assign,Generator/batch_normalization_24/beta/read:029Generator/batch_normalization_24/beta/Initializer/zeros:0
�
"Generator/Gen_last_layer/filters:0'Generator/Gen_last_layer/filters/Assign'Generator/Gen_last_layer/filters/read:02?Generator/Gen_last_layer/filters/Initializer/truncated_normal:0
�
!Generator/Gen_last_layer/biases:0&Generator/Gen_last_layer/biases/Assign&Generator/Gen_last_layer/biases/read:023Generator/Gen_last_layer/biases/Initializer/Const:0"��
	variables����
�
#Generator/Gen_down0/conv1/filters:0(Generator/Gen_down0/conv1/filters/Assign(Generator/Gen_down0/conv1/filters/read:02@Generator/Gen_down0/conv1/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down0/conv1/biases:0'Generator/Gen_down0/conv1/biases/Assign'Generator/Gen_down0/conv1/biases/read:024Generator/Gen_down0/conv1/biases/Initializer/Const:0
�
%Generator/batch_normalization/gamma:0*Generator/batch_normalization/gamma/Assign*Generator/batch_normalization/gamma/read:026Generator/batch_normalization/gamma/Initializer/ones:0
�
$Generator/batch_normalization/beta:0)Generator/batch_normalization/beta/Assign)Generator/batch_normalization/beta/read:026Generator/batch_normalization/beta/Initializer/zeros:0
�
+Generator/batch_normalization/moving_mean:00Generator/batch_normalization/moving_mean/Assign0Generator/batch_normalization/moving_mean/read:02=Generator/batch_normalization/moving_mean/Initializer/zeros:0
�
/Generator/batch_normalization/moving_variance:04Generator/batch_normalization/moving_variance/Assign4Generator/batch_normalization/moving_variance/read:02@Generator/batch_normalization/moving_variance/Initializer/ones:0
�
#Generator/Gen_down0/conv2/filters:0(Generator/Gen_down0/conv2/filters/Assign(Generator/Gen_down0/conv2/filters/read:02@Generator/Gen_down0/conv2/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down0/conv2/biases:0'Generator/Gen_down0/conv2/biases/Assign'Generator/Gen_down0/conv2/biases/read:024Generator/Gen_down0/conv2/biases/Initializer/Const:0
�
'Generator/batch_normalization_1/gamma:0,Generator/batch_normalization_1/gamma/Assign,Generator/batch_normalization_1/gamma/read:028Generator/batch_normalization_1/gamma/Initializer/ones:0
�
&Generator/batch_normalization_1/beta:0+Generator/batch_normalization_1/beta/Assign+Generator/batch_normalization_1/beta/read:028Generator/batch_normalization_1/beta/Initializer/zeros:0
�
-Generator/batch_normalization_1/moving_mean:02Generator/batch_normalization_1/moving_mean/Assign2Generator/batch_normalization_1/moving_mean/read:02?Generator/batch_normalization_1/moving_mean/Initializer/zeros:0
�
1Generator/batch_normalization_1/moving_variance:06Generator/batch_normalization_1/moving_variance/Assign6Generator/batch_normalization_1/moving_variance/read:02BGenerator/batch_normalization_1/moving_variance/Initializer/ones:0
�
#Generator/Gen_down0/conv3/filters:0(Generator/Gen_down0/conv3/filters/Assign(Generator/Gen_down0/conv3/filters/read:02@Generator/Gen_down0/conv3/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down0/conv3/biases:0'Generator/Gen_down0/conv3/biases/Assign'Generator/Gen_down0/conv3/biases/read:024Generator/Gen_down0/conv3/biases/Initializer/Const:0
�
'Generator/batch_normalization_2/gamma:0,Generator/batch_normalization_2/gamma/Assign,Generator/batch_normalization_2/gamma/read:028Generator/batch_normalization_2/gamma/Initializer/ones:0
�
&Generator/batch_normalization_2/beta:0+Generator/batch_normalization_2/beta/Assign+Generator/batch_normalization_2/beta/read:028Generator/batch_normalization_2/beta/Initializer/zeros:0
�
-Generator/batch_normalization_2/moving_mean:02Generator/batch_normalization_2/moving_mean/Assign2Generator/batch_normalization_2/moving_mean/read:02?Generator/batch_normalization_2/moving_mean/Initializer/zeros:0
�
1Generator/batch_normalization_2/moving_variance:06Generator/batch_normalization_2/moving_variance/Assign6Generator/batch_normalization_2/moving_variance/read:02BGenerator/batch_normalization_2/moving_variance/Initializer/ones:0
�
#Generator/Gen_down1/conv1/filters:0(Generator/Gen_down1/conv1/filters/Assign(Generator/Gen_down1/conv1/filters/read:02@Generator/Gen_down1/conv1/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down1/conv1/biases:0'Generator/Gen_down1/conv1/biases/Assign'Generator/Gen_down1/conv1/biases/read:024Generator/Gen_down1/conv1/biases/Initializer/Const:0
�
'Generator/batch_normalization_3/gamma:0,Generator/batch_normalization_3/gamma/Assign,Generator/batch_normalization_3/gamma/read:028Generator/batch_normalization_3/gamma/Initializer/ones:0
�
&Generator/batch_normalization_3/beta:0+Generator/batch_normalization_3/beta/Assign+Generator/batch_normalization_3/beta/read:028Generator/batch_normalization_3/beta/Initializer/zeros:0
�
-Generator/batch_normalization_3/moving_mean:02Generator/batch_normalization_3/moving_mean/Assign2Generator/batch_normalization_3/moving_mean/read:02?Generator/batch_normalization_3/moving_mean/Initializer/zeros:0
�
1Generator/batch_normalization_3/moving_variance:06Generator/batch_normalization_3/moving_variance/Assign6Generator/batch_normalization_3/moving_variance/read:02BGenerator/batch_normalization_3/moving_variance/Initializer/ones:0
�
#Generator/Gen_down1/conv2/filters:0(Generator/Gen_down1/conv2/filters/Assign(Generator/Gen_down1/conv2/filters/read:02@Generator/Gen_down1/conv2/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down1/conv2/biases:0'Generator/Gen_down1/conv2/biases/Assign'Generator/Gen_down1/conv2/biases/read:024Generator/Gen_down1/conv2/biases/Initializer/Const:0
�
'Generator/batch_normalization_4/gamma:0,Generator/batch_normalization_4/gamma/Assign,Generator/batch_normalization_4/gamma/read:028Generator/batch_normalization_4/gamma/Initializer/ones:0
�
&Generator/batch_normalization_4/beta:0+Generator/batch_normalization_4/beta/Assign+Generator/batch_normalization_4/beta/read:028Generator/batch_normalization_4/beta/Initializer/zeros:0
�
-Generator/batch_normalization_4/moving_mean:02Generator/batch_normalization_4/moving_mean/Assign2Generator/batch_normalization_4/moving_mean/read:02?Generator/batch_normalization_4/moving_mean/Initializer/zeros:0
�
1Generator/batch_normalization_4/moving_variance:06Generator/batch_normalization_4/moving_variance/Assign6Generator/batch_normalization_4/moving_variance/read:02BGenerator/batch_normalization_4/moving_variance/Initializer/ones:0
�
#Generator/Gen_down1/conv3/filters:0(Generator/Gen_down1/conv3/filters/Assign(Generator/Gen_down1/conv3/filters/read:02@Generator/Gen_down1/conv3/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down1/conv3/biases:0'Generator/Gen_down1/conv3/biases/Assign'Generator/Gen_down1/conv3/biases/read:024Generator/Gen_down1/conv3/biases/Initializer/Const:0
�
'Generator/batch_normalization_5/gamma:0,Generator/batch_normalization_5/gamma/Assign,Generator/batch_normalization_5/gamma/read:028Generator/batch_normalization_5/gamma/Initializer/ones:0
�
&Generator/batch_normalization_5/beta:0+Generator/batch_normalization_5/beta/Assign+Generator/batch_normalization_5/beta/read:028Generator/batch_normalization_5/beta/Initializer/zeros:0
�
-Generator/batch_normalization_5/moving_mean:02Generator/batch_normalization_5/moving_mean/Assign2Generator/batch_normalization_5/moving_mean/read:02?Generator/batch_normalization_5/moving_mean/Initializer/zeros:0
�
1Generator/batch_normalization_5/moving_variance:06Generator/batch_normalization_5/moving_variance/Assign6Generator/batch_normalization_5/moving_variance/read:02BGenerator/batch_normalization_5/moving_variance/Initializer/ones:0
�
#Generator/Gen_down2/conv1/filters:0(Generator/Gen_down2/conv1/filters/Assign(Generator/Gen_down2/conv1/filters/read:02@Generator/Gen_down2/conv1/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down2/conv1/biases:0'Generator/Gen_down2/conv1/biases/Assign'Generator/Gen_down2/conv1/biases/read:024Generator/Gen_down2/conv1/biases/Initializer/Const:0
�
'Generator/batch_normalization_6/gamma:0,Generator/batch_normalization_6/gamma/Assign,Generator/batch_normalization_6/gamma/read:028Generator/batch_normalization_6/gamma/Initializer/ones:0
�
&Generator/batch_normalization_6/beta:0+Generator/batch_normalization_6/beta/Assign+Generator/batch_normalization_6/beta/read:028Generator/batch_normalization_6/beta/Initializer/zeros:0
�
-Generator/batch_normalization_6/moving_mean:02Generator/batch_normalization_6/moving_mean/Assign2Generator/batch_normalization_6/moving_mean/read:02?Generator/batch_normalization_6/moving_mean/Initializer/zeros:0
�
1Generator/batch_normalization_6/moving_variance:06Generator/batch_normalization_6/moving_variance/Assign6Generator/batch_normalization_6/moving_variance/read:02BGenerator/batch_normalization_6/moving_variance/Initializer/ones:0
�
#Generator/Gen_down2/conv2/filters:0(Generator/Gen_down2/conv2/filters/Assign(Generator/Gen_down2/conv2/filters/read:02@Generator/Gen_down2/conv2/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down2/conv2/biases:0'Generator/Gen_down2/conv2/biases/Assign'Generator/Gen_down2/conv2/biases/read:024Generator/Gen_down2/conv2/biases/Initializer/Const:0
�
'Generator/batch_normalization_7/gamma:0,Generator/batch_normalization_7/gamma/Assign,Generator/batch_normalization_7/gamma/read:028Generator/batch_normalization_7/gamma/Initializer/ones:0
�
&Generator/batch_normalization_7/beta:0+Generator/batch_normalization_7/beta/Assign+Generator/batch_normalization_7/beta/read:028Generator/batch_normalization_7/beta/Initializer/zeros:0
�
-Generator/batch_normalization_7/moving_mean:02Generator/batch_normalization_7/moving_mean/Assign2Generator/batch_normalization_7/moving_mean/read:02?Generator/batch_normalization_7/moving_mean/Initializer/zeros:0
�
1Generator/batch_normalization_7/moving_variance:06Generator/batch_normalization_7/moving_variance/Assign6Generator/batch_normalization_7/moving_variance/read:02BGenerator/batch_normalization_7/moving_variance/Initializer/ones:0
�
#Generator/Gen_down2/conv3/filters:0(Generator/Gen_down2/conv3/filters/Assign(Generator/Gen_down2/conv3/filters/read:02@Generator/Gen_down2/conv3/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down2/conv3/biases:0'Generator/Gen_down2/conv3/biases/Assign'Generator/Gen_down2/conv3/biases/read:024Generator/Gen_down2/conv3/biases/Initializer/Const:0
�
'Generator/batch_normalization_8/gamma:0,Generator/batch_normalization_8/gamma/Assign,Generator/batch_normalization_8/gamma/read:028Generator/batch_normalization_8/gamma/Initializer/ones:0
�
&Generator/batch_normalization_8/beta:0+Generator/batch_normalization_8/beta/Assign+Generator/batch_normalization_8/beta/read:028Generator/batch_normalization_8/beta/Initializer/zeros:0
�
-Generator/batch_normalization_8/moving_mean:02Generator/batch_normalization_8/moving_mean/Assign2Generator/batch_normalization_8/moving_mean/read:02?Generator/batch_normalization_8/moving_mean/Initializer/zeros:0
�
1Generator/batch_normalization_8/moving_variance:06Generator/batch_normalization_8/moving_variance/Assign6Generator/batch_normalization_8/moving_variance/read:02BGenerator/batch_normalization_8/moving_variance/Initializer/ones:0
�
#Generator/Gen_down3/conv1/filters:0(Generator/Gen_down3/conv1/filters/Assign(Generator/Gen_down3/conv1/filters/read:02@Generator/Gen_down3/conv1/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down3/conv1/biases:0'Generator/Gen_down3/conv1/biases/Assign'Generator/Gen_down3/conv1/biases/read:024Generator/Gen_down3/conv1/biases/Initializer/Const:0
�
'Generator/batch_normalization_9/gamma:0,Generator/batch_normalization_9/gamma/Assign,Generator/batch_normalization_9/gamma/read:028Generator/batch_normalization_9/gamma/Initializer/ones:0
�
&Generator/batch_normalization_9/beta:0+Generator/batch_normalization_9/beta/Assign+Generator/batch_normalization_9/beta/read:028Generator/batch_normalization_9/beta/Initializer/zeros:0
�
-Generator/batch_normalization_9/moving_mean:02Generator/batch_normalization_9/moving_mean/Assign2Generator/batch_normalization_9/moving_mean/read:02?Generator/batch_normalization_9/moving_mean/Initializer/zeros:0
�
1Generator/batch_normalization_9/moving_variance:06Generator/batch_normalization_9/moving_variance/Assign6Generator/batch_normalization_9/moving_variance/read:02BGenerator/batch_normalization_9/moving_variance/Initializer/ones:0
�
#Generator/Gen_down3/conv2/filters:0(Generator/Gen_down3/conv2/filters/Assign(Generator/Gen_down3/conv2/filters/read:02@Generator/Gen_down3/conv2/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down3/conv2/biases:0'Generator/Gen_down3/conv2/biases/Assign'Generator/Gen_down3/conv2/biases/read:024Generator/Gen_down3/conv2/biases/Initializer/Const:0
�
(Generator/batch_normalization_10/gamma:0-Generator/batch_normalization_10/gamma/Assign-Generator/batch_normalization_10/gamma/read:029Generator/batch_normalization_10/gamma/Initializer/ones:0
�
'Generator/batch_normalization_10/beta:0,Generator/batch_normalization_10/beta/Assign,Generator/batch_normalization_10/beta/read:029Generator/batch_normalization_10/beta/Initializer/zeros:0
�
.Generator/batch_normalization_10/moving_mean:03Generator/batch_normalization_10/moving_mean/Assign3Generator/batch_normalization_10/moving_mean/read:02@Generator/batch_normalization_10/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_10/moving_variance:07Generator/batch_normalization_10/moving_variance/Assign7Generator/batch_normalization_10/moving_variance/read:02CGenerator/batch_normalization_10/moving_variance/Initializer/ones:0
�
#Generator/Gen_down3/conv3/filters:0(Generator/Gen_down3/conv3/filters/Assign(Generator/Gen_down3/conv3/filters/read:02@Generator/Gen_down3/conv3/filters/Initializer/truncated_normal:0
�
"Generator/Gen_down3/conv3/biases:0'Generator/Gen_down3/conv3/biases/Assign'Generator/Gen_down3/conv3/biases/read:024Generator/Gen_down3/conv3/biases/Initializer/Const:0
�
(Generator/batch_normalization_11/gamma:0-Generator/batch_normalization_11/gamma/Assign-Generator/batch_normalization_11/gamma/read:029Generator/batch_normalization_11/gamma/Initializer/ones:0
�
'Generator/batch_normalization_11/beta:0,Generator/batch_normalization_11/beta/Assign,Generator/batch_normalization_11/beta/read:029Generator/batch_normalization_11/beta/Initializer/zeros:0
�
.Generator/batch_normalization_11/moving_mean:03Generator/batch_normalization_11/moving_mean/Assign3Generator/batch_normalization_11/moving_mean/read:02@Generator/batch_normalization_11/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_11/moving_variance:07Generator/batch_normalization_11/moving_variance/Assign7Generator/batch_normalization_11/moving_variance/read:02CGenerator/batch_normalization_11/moving_variance/Initializer/ones:0
�
Generator/Gen_center/filters:0#Generator/Gen_center/filters/Assign#Generator/Gen_center/filters/read:02;Generator/Gen_center/filters/Initializer/truncated_normal:0
�
Generator/Gen_center/biases:0"Generator/Gen_center/biases/Assign"Generator/Gen_center/biases/read:02/Generator/Gen_center/biases/Initializer/Const:0
�
(Generator/batch_normalization_12/gamma:0-Generator/batch_normalization_12/gamma/Assign-Generator/batch_normalization_12/gamma/read:029Generator/batch_normalization_12/gamma/Initializer/ones:0
�
'Generator/batch_normalization_12/beta:0,Generator/batch_normalization_12/beta/Assign,Generator/batch_normalization_12/beta/read:029Generator/batch_normalization_12/beta/Initializer/zeros:0
�
.Generator/batch_normalization_12/moving_mean:03Generator/batch_normalization_12/moving_mean/Assign3Generator/batch_normalization_12/moving_mean/read:02@Generator/batch_normalization_12/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_12/moving_variance:07Generator/batch_normalization_12/moving_variance/Assign7Generator/batch_normalization_12/moving_variance/read:02CGenerator/batch_normalization_12/moving_variance/Initializer/ones:0
�
!Generator/Gen_up3/conv1/filters:0&Generator/Gen_up3/conv1/filters/Assign&Generator/Gen_up3/conv1/filters/read:02>Generator/Gen_up3/conv1/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up3/conv1/biases:0%Generator/Gen_up3/conv1/biases/Assign%Generator/Gen_up3/conv1/biases/read:022Generator/Gen_up3/conv1/biases/Initializer/Const:0
�
(Generator/batch_normalization_13/gamma:0-Generator/batch_normalization_13/gamma/Assign-Generator/batch_normalization_13/gamma/read:029Generator/batch_normalization_13/gamma/Initializer/ones:0
�
'Generator/batch_normalization_13/beta:0,Generator/batch_normalization_13/beta/Assign,Generator/batch_normalization_13/beta/read:029Generator/batch_normalization_13/beta/Initializer/zeros:0
�
.Generator/batch_normalization_13/moving_mean:03Generator/batch_normalization_13/moving_mean/Assign3Generator/batch_normalization_13/moving_mean/read:02@Generator/batch_normalization_13/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_13/moving_variance:07Generator/batch_normalization_13/moving_variance/Assign7Generator/batch_normalization_13/moving_variance/read:02CGenerator/batch_normalization_13/moving_variance/Initializer/ones:0
�
!Generator/Gen_up3/conv2/filters:0&Generator/Gen_up3/conv2/filters/Assign&Generator/Gen_up3/conv2/filters/read:02>Generator/Gen_up3/conv2/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up3/conv2/biases:0%Generator/Gen_up3/conv2/biases/Assign%Generator/Gen_up3/conv2/biases/read:022Generator/Gen_up3/conv2/biases/Initializer/Const:0
�
(Generator/batch_normalization_14/gamma:0-Generator/batch_normalization_14/gamma/Assign-Generator/batch_normalization_14/gamma/read:029Generator/batch_normalization_14/gamma/Initializer/ones:0
�
'Generator/batch_normalization_14/beta:0,Generator/batch_normalization_14/beta/Assign,Generator/batch_normalization_14/beta/read:029Generator/batch_normalization_14/beta/Initializer/zeros:0
�
.Generator/batch_normalization_14/moving_mean:03Generator/batch_normalization_14/moving_mean/Assign3Generator/batch_normalization_14/moving_mean/read:02@Generator/batch_normalization_14/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_14/moving_variance:07Generator/batch_normalization_14/moving_variance/Assign7Generator/batch_normalization_14/moving_variance/read:02CGenerator/batch_normalization_14/moving_variance/Initializer/ones:0
�
!Generator/Gen_up3/conv3/filters:0&Generator/Gen_up3/conv3/filters/Assign&Generator/Gen_up3/conv3/filters/read:02>Generator/Gen_up3/conv3/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up3/conv3/biases:0%Generator/Gen_up3/conv3/biases/Assign%Generator/Gen_up3/conv3/biases/read:022Generator/Gen_up3/conv3/biases/Initializer/Const:0
�
(Generator/batch_normalization_15/gamma:0-Generator/batch_normalization_15/gamma/Assign-Generator/batch_normalization_15/gamma/read:029Generator/batch_normalization_15/gamma/Initializer/ones:0
�
'Generator/batch_normalization_15/beta:0,Generator/batch_normalization_15/beta/Assign,Generator/batch_normalization_15/beta/read:029Generator/batch_normalization_15/beta/Initializer/zeros:0
�
.Generator/batch_normalization_15/moving_mean:03Generator/batch_normalization_15/moving_mean/Assign3Generator/batch_normalization_15/moving_mean/read:02@Generator/batch_normalization_15/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_15/moving_variance:07Generator/batch_normalization_15/moving_variance/Assign7Generator/batch_normalization_15/moving_variance/read:02CGenerator/batch_normalization_15/moving_variance/Initializer/ones:0
�
!Generator/Gen_up2/conv1/filters:0&Generator/Gen_up2/conv1/filters/Assign&Generator/Gen_up2/conv1/filters/read:02>Generator/Gen_up2/conv1/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up2/conv1/biases:0%Generator/Gen_up2/conv1/biases/Assign%Generator/Gen_up2/conv1/biases/read:022Generator/Gen_up2/conv1/biases/Initializer/Const:0
�
(Generator/batch_normalization_16/gamma:0-Generator/batch_normalization_16/gamma/Assign-Generator/batch_normalization_16/gamma/read:029Generator/batch_normalization_16/gamma/Initializer/ones:0
�
'Generator/batch_normalization_16/beta:0,Generator/batch_normalization_16/beta/Assign,Generator/batch_normalization_16/beta/read:029Generator/batch_normalization_16/beta/Initializer/zeros:0
�
.Generator/batch_normalization_16/moving_mean:03Generator/batch_normalization_16/moving_mean/Assign3Generator/batch_normalization_16/moving_mean/read:02@Generator/batch_normalization_16/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_16/moving_variance:07Generator/batch_normalization_16/moving_variance/Assign7Generator/batch_normalization_16/moving_variance/read:02CGenerator/batch_normalization_16/moving_variance/Initializer/ones:0
�
!Generator/Gen_up2/conv2/filters:0&Generator/Gen_up2/conv2/filters/Assign&Generator/Gen_up2/conv2/filters/read:02>Generator/Gen_up2/conv2/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up2/conv2/biases:0%Generator/Gen_up2/conv2/biases/Assign%Generator/Gen_up2/conv2/biases/read:022Generator/Gen_up2/conv2/biases/Initializer/Const:0
�
(Generator/batch_normalization_17/gamma:0-Generator/batch_normalization_17/gamma/Assign-Generator/batch_normalization_17/gamma/read:029Generator/batch_normalization_17/gamma/Initializer/ones:0
�
'Generator/batch_normalization_17/beta:0,Generator/batch_normalization_17/beta/Assign,Generator/batch_normalization_17/beta/read:029Generator/batch_normalization_17/beta/Initializer/zeros:0
�
.Generator/batch_normalization_17/moving_mean:03Generator/batch_normalization_17/moving_mean/Assign3Generator/batch_normalization_17/moving_mean/read:02@Generator/batch_normalization_17/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_17/moving_variance:07Generator/batch_normalization_17/moving_variance/Assign7Generator/batch_normalization_17/moving_variance/read:02CGenerator/batch_normalization_17/moving_variance/Initializer/ones:0
�
!Generator/Gen_up2/conv3/filters:0&Generator/Gen_up2/conv3/filters/Assign&Generator/Gen_up2/conv3/filters/read:02>Generator/Gen_up2/conv3/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up2/conv3/biases:0%Generator/Gen_up2/conv3/biases/Assign%Generator/Gen_up2/conv3/biases/read:022Generator/Gen_up2/conv3/biases/Initializer/Const:0
�
(Generator/batch_normalization_18/gamma:0-Generator/batch_normalization_18/gamma/Assign-Generator/batch_normalization_18/gamma/read:029Generator/batch_normalization_18/gamma/Initializer/ones:0
�
'Generator/batch_normalization_18/beta:0,Generator/batch_normalization_18/beta/Assign,Generator/batch_normalization_18/beta/read:029Generator/batch_normalization_18/beta/Initializer/zeros:0
�
.Generator/batch_normalization_18/moving_mean:03Generator/batch_normalization_18/moving_mean/Assign3Generator/batch_normalization_18/moving_mean/read:02@Generator/batch_normalization_18/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_18/moving_variance:07Generator/batch_normalization_18/moving_variance/Assign7Generator/batch_normalization_18/moving_variance/read:02CGenerator/batch_normalization_18/moving_variance/Initializer/ones:0
�
!Generator/Gen_up1/conv1/filters:0&Generator/Gen_up1/conv1/filters/Assign&Generator/Gen_up1/conv1/filters/read:02>Generator/Gen_up1/conv1/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up1/conv1/biases:0%Generator/Gen_up1/conv1/biases/Assign%Generator/Gen_up1/conv1/biases/read:022Generator/Gen_up1/conv1/biases/Initializer/Const:0
�
(Generator/batch_normalization_19/gamma:0-Generator/batch_normalization_19/gamma/Assign-Generator/batch_normalization_19/gamma/read:029Generator/batch_normalization_19/gamma/Initializer/ones:0
�
'Generator/batch_normalization_19/beta:0,Generator/batch_normalization_19/beta/Assign,Generator/batch_normalization_19/beta/read:029Generator/batch_normalization_19/beta/Initializer/zeros:0
�
.Generator/batch_normalization_19/moving_mean:03Generator/batch_normalization_19/moving_mean/Assign3Generator/batch_normalization_19/moving_mean/read:02@Generator/batch_normalization_19/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_19/moving_variance:07Generator/batch_normalization_19/moving_variance/Assign7Generator/batch_normalization_19/moving_variance/read:02CGenerator/batch_normalization_19/moving_variance/Initializer/ones:0
�
!Generator/Gen_up1/conv2/filters:0&Generator/Gen_up1/conv2/filters/Assign&Generator/Gen_up1/conv2/filters/read:02>Generator/Gen_up1/conv2/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up1/conv2/biases:0%Generator/Gen_up1/conv2/biases/Assign%Generator/Gen_up1/conv2/biases/read:022Generator/Gen_up1/conv2/biases/Initializer/Const:0
�
(Generator/batch_normalization_20/gamma:0-Generator/batch_normalization_20/gamma/Assign-Generator/batch_normalization_20/gamma/read:029Generator/batch_normalization_20/gamma/Initializer/ones:0
�
'Generator/batch_normalization_20/beta:0,Generator/batch_normalization_20/beta/Assign,Generator/batch_normalization_20/beta/read:029Generator/batch_normalization_20/beta/Initializer/zeros:0
�
.Generator/batch_normalization_20/moving_mean:03Generator/batch_normalization_20/moving_mean/Assign3Generator/batch_normalization_20/moving_mean/read:02@Generator/batch_normalization_20/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_20/moving_variance:07Generator/batch_normalization_20/moving_variance/Assign7Generator/batch_normalization_20/moving_variance/read:02CGenerator/batch_normalization_20/moving_variance/Initializer/ones:0
�
!Generator/Gen_up1/conv3/filters:0&Generator/Gen_up1/conv3/filters/Assign&Generator/Gen_up1/conv3/filters/read:02>Generator/Gen_up1/conv3/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up1/conv3/biases:0%Generator/Gen_up1/conv3/biases/Assign%Generator/Gen_up1/conv3/biases/read:022Generator/Gen_up1/conv3/biases/Initializer/Const:0
�
(Generator/batch_normalization_21/gamma:0-Generator/batch_normalization_21/gamma/Assign-Generator/batch_normalization_21/gamma/read:029Generator/batch_normalization_21/gamma/Initializer/ones:0
�
'Generator/batch_normalization_21/beta:0,Generator/batch_normalization_21/beta/Assign,Generator/batch_normalization_21/beta/read:029Generator/batch_normalization_21/beta/Initializer/zeros:0
�
.Generator/batch_normalization_21/moving_mean:03Generator/batch_normalization_21/moving_mean/Assign3Generator/batch_normalization_21/moving_mean/read:02@Generator/batch_normalization_21/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_21/moving_variance:07Generator/batch_normalization_21/moving_variance/Assign7Generator/batch_normalization_21/moving_variance/read:02CGenerator/batch_normalization_21/moving_variance/Initializer/ones:0
�
!Generator/Gen_up0/conv1/filters:0&Generator/Gen_up0/conv1/filters/Assign&Generator/Gen_up0/conv1/filters/read:02>Generator/Gen_up0/conv1/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up0/conv1/biases:0%Generator/Gen_up0/conv1/biases/Assign%Generator/Gen_up0/conv1/biases/read:022Generator/Gen_up0/conv1/biases/Initializer/Const:0
�
(Generator/batch_normalization_22/gamma:0-Generator/batch_normalization_22/gamma/Assign-Generator/batch_normalization_22/gamma/read:029Generator/batch_normalization_22/gamma/Initializer/ones:0
�
'Generator/batch_normalization_22/beta:0,Generator/batch_normalization_22/beta/Assign,Generator/batch_normalization_22/beta/read:029Generator/batch_normalization_22/beta/Initializer/zeros:0
�
.Generator/batch_normalization_22/moving_mean:03Generator/batch_normalization_22/moving_mean/Assign3Generator/batch_normalization_22/moving_mean/read:02@Generator/batch_normalization_22/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_22/moving_variance:07Generator/batch_normalization_22/moving_variance/Assign7Generator/batch_normalization_22/moving_variance/read:02CGenerator/batch_normalization_22/moving_variance/Initializer/ones:0
�
!Generator/Gen_up0/conv2/filters:0&Generator/Gen_up0/conv2/filters/Assign&Generator/Gen_up0/conv2/filters/read:02>Generator/Gen_up0/conv2/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up0/conv2/biases:0%Generator/Gen_up0/conv2/biases/Assign%Generator/Gen_up0/conv2/biases/read:022Generator/Gen_up0/conv2/biases/Initializer/Const:0
�
(Generator/batch_normalization_23/gamma:0-Generator/batch_normalization_23/gamma/Assign-Generator/batch_normalization_23/gamma/read:029Generator/batch_normalization_23/gamma/Initializer/ones:0
�
'Generator/batch_normalization_23/beta:0,Generator/batch_normalization_23/beta/Assign,Generator/batch_normalization_23/beta/read:029Generator/batch_normalization_23/beta/Initializer/zeros:0
�
.Generator/batch_normalization_23/moving_mean:03Generator/batch_normalization_23/moving_mean/Assign3Generator/batch_normalization_23/moving_mean/read:02@Generator/batch_normalization_23/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_23/moving_variance:07Generator/batch_normalization_23/moving_variance/Assign7Generator/batch_normalization_23/moving_variance/read:02CGenerator/batch_normalization_23/moving_variance/Initializer/ones:0
�
!Generator/Gen_up0/conv3/filters:0&Generator/Gen_up0/conv3/filters/Assign&Generator/Gen_up0/conv3/filters/read:02>Generator/Gen_up0/conv3/filters/Initializer/truncated_normal:0
�
 Generator/Gen_up0/conv3/biases:0%Generator/Gen_up0/conv3/biases/Assign%Generator/Gen_up0/conv3/biases/read:022Generator/Gen_up0/conv3/biases/Initializer/Const:0
�
(Generator/batch_normalization_24/gamma:0-Generator/batch_normalization_24/gamma/Assign-Generator/batch_normalization_24/gamma/read:029Generator/batch_normalization_24/gamma/Initializer/ones:0
�
'Generator/batch_normalization_24/beta:0,Generator/batch_normalization_24/beta/Assign,Generator/batch_normalization_24/beta/read:029Generator/batch_normalization_24/beta/Initializer/zeros:0
�
.Generator/batch_normalization_24/moving_mean:03Generator/batch_normalization_24/moving_mean/Assign3Generator/batch_normalization_24/moving_mean/read:02@Generator/batch_normalization_24/moving_mean/Initializer/zeros:0
�
2Generator/batch_normalization_24/moving_variance:07Generator/batch_normalization_24/moving_variance/Assign7Generator/batch_normalization_24/moving_variance/read:02CGenerator/batch_normalization_24/moving_variance/Initializer/ones:0
�
"Generator/Gen_last_layer/filters:0'Generator/Gen_last_layer/filters/Assign'Generator/Gen_last_layer/filters/read:02?Generator/Gen_last_layer/filters/Initializer/truncated_normal:0
�
!Generator/Gen_last_layer/biases:0&Generator/Gen_last_layer/biases/Assign&Generator/Gen_last_layer/biases/read:023Generator/Gen_last_layer/biases/Initializer/Const:0*�
serving_default�
A
input_images1
Placeholder:0������������������9
output_images(
Generator/concat_4:0�	�	tensorflow/serving/predict