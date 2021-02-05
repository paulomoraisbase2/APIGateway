// Skipping function Configure(none), it contains poisonous unsupported syntaxes

func @_SwaggerVersion.ConfigureSwaggerOptions.CreateInfoForApiVersion$Microsoft.AspNetCore.Mvc.ApiExplorer.ApiVersionDescription$(none) -> none loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :29 :8) {
^entry (%_description : none):
%0 = cbde.alloca none loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :29 :59)
cbde.store %_description, %0 : memref<none> loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :29 :59)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :31 :23) // new OpenApiInfo              {                  Version = description.ApiVersion.ToString(),              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :33 :26) // Not a variable of known type: description
%3 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :33 :26) // description.ApiVersion (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :33 :26) // description.ApiVersion.ToString() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :36 :16) // Not a variable of known type: description
%7 = cbde.unknown : i1 loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :36 :16) // description.IsDeprecated (SimpleMemberAccessExpression)
cond_br %7, ^1, ^2 loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :36 :16)

^1: // SimpleBlock
%8 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :38 :16) // Not a variable of known type: info
%9 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :38 :16) // info.Description (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :38 :36) // " Esta versão da API foi descontinuada." (StringLiteralExpression)
%11 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :38 :16) // Binary expression on unsupported types info.Description += " Esta versão da API foi descontinuada."
// No identifier name for binary assignment expression
br ^2

^2: // JumpBlock
%12 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :41 :19) // Not a variable of known type: info
return %12 : none loc("D:\\Repositorios\\APIGateway\\SwaggerVersion\\SwaggerVersion\\ConfigureSwaggerOptions.cs" :41 :12)

^3: // ExitBlock
cbde.unreachable

}
