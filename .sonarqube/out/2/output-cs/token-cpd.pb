ú
SD:\Repositorios\APIGateway\SwaggerVersion\SwaggerVersion\ConfigureSwaggerOptions.cs
	namespace 	
SwaggerVersion
 
{ 
public		 

class		 #
ConfigureSwaggerOptions		 (
:		) *
IConfigureOptions		+ <
<		< =
SwaggerGenOptions		= N
>		N O
{

 
private 
readonly *
IApiVersionDescriptionProvider 7
	_provider8 A
;A B
public #
ConfigureSwaggerOptions &
(& '*
IApiVersionDescriptionProvider' E
providerF N
)N O
=>P R
thisS W
.W X
	_providerX a
=b c
providerd l
;l m
public 
void 
	Configure 
( 
SwaggerGenOptions /
options0 7
)7 8
{ 	
foreach 
( !
ApiVersionDescription *
description+ 6
in7 9
	_provider: C
.C D"
ApiVersionDescriptionsD Z
)Z [
{ 
options 
. 

SwaggerDoc "
(" #
description# .
.. /
	GroupName/ 8
,8 9#
CreateInfoForApiVersion: Q
(Q R
descriptionR ]
)] ^
)^ _
;_ `
} 
} 	
private 
static 
OpenApiInfo "#
CreateInfoForApiVersion# :
(: ;!
ApiVersionDescription; P
descriptionQ \
)\ ]
{ 	
var   
info   
=   
new   
OpenApiInfo   &
{!! 
Version"" 
="" 
description"" %
.""% &

ApiVersion""& 0
.""0 1
ToString""1 9
(""9 :
)"": ;
,""; <
}## 
;## 
if%% 
(%% 
description%% 
.%% 
IsDeprecated%% (
)%%( )
{&& 
info'' 
.'' 
Description''  
+=''! #
$str''$ L
;''L M
}(( 
return** 
info** 
;** 
}++ 	
},, 
}-- Ä
LD:\Repositorios\APIGateway\SwaggerVersion\SwaggerVersion\NonBodyParameter.cs
	namespace 	
SwaggerVersion
 
{ 
public 

class 
NonBodyParameter !
:" #
OpenApiParameter$ 4
{ 
public

 
object

 
Default

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
} 
} ý
PD:\Repositorios\APIGateway\SwaggerVersion\SwaggerVersion\SwaggerDefaultValues.cs
	namespace 	
SwaggerVersion
 
{ 
public 

class  
SwaggerDefaultValues %
:& '
IOperationFilter( 8
{		 
public 
void 
Apply 
( 
OpenApiOperation *
	operation+ 4
,4 5"
OperationFilterContext6 L
contextM T
)T U
{ 	
ApiDescription 
apiDescription )
=* +
context, 3
.3 4
ApiDescription4 B
;B C
	operation 
. 

Deprecated  
=! "
apiDescription# 1
.1 2
IsDeprecated2 >
(> ?
)? @
;@ A
if 
( 
	operation 
. 

Parameters $
==% '
null( ,
), -
{ 
return 
; 
} 
foreach 
( 
NonBodyParameter %
	parameter& /
in0 2
	operation3 <
.< =

Parameters= G
.G H
OfTypeH N
<N O
NonBodyParameterO _
>_ `
(` a
)a b
)b c
{ #
ApiParameterDescription '
description( 3
=4 5
apiDescription6 D
.D E!
ParameterDescriptionsE Z
.Z [
First[ `
(` a
pa b
=>c e
pf g
.g h
Nameh l
==m o
	parameterp y
.y z
Namez ~
)~ 
;	 €
if   
(   
	parameter   
.   
Description   )
==  * ,
null  - 1
)  1 2
{!! 
	parameter"" 
."" 
Description"" )
=""* +
description"", 7
.""7 8
ModelMetadata""8 E
?""E F
.""F G
Description""G R
;""R S
}## 
if%% 
(%% 
	parameter%% 
.%% 
Default%% %
==%%& (
null%%) -
)%%- .
{&& 
	parameter'' 
.'' 
Default'' %
=''& '
description''( 3
.''3 4
DefaultValue''4 @
;''@ A
}(( 
	parameter** 
.** 
Required** "
|=**# %
description**& 1
.**1 2

IsRequired**2 <
;**< =
}++ 
},, 	
}-- 
}.. 