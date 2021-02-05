func @_Pedido.API.Controllers.TesteController.Get$$() -> none loc("D:\\Repositorios\\APIGateway\\Pedido.API\\Controllers\\TesteController.cs" :9 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: Ok
%0 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\Pedido.API\\Controllers\\TesteController.cs" :12 :22) // new []{ "Item 1", "Item 2" } (ImplicitArrayCreationExpression)
%1 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\Pedido.API\\Controllers\\TesteController.cs" :12 :30) // "Item 1" (StringLiteralExpression)
%2 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\Pedido.API\\Controllers\\TesteController.cs" :12 :40) // "Item 2" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Repositorios\\APIGateway\\Pedido.API\\Controllers\\TesteController.cs" :12 :19) // Ok(new []{ "Item 1", "Item 2" }) (InvocationExpression)
return %3 : none loc("D:\\Repositorios\\APIGateway\\Pedido.API\\Controllers\\TesteController.cs" :12 :12)

^1: // ExitBlock
cbde.unreachable

}
