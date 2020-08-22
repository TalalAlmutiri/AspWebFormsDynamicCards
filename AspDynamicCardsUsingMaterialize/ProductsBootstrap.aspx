<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsBootstrap.aspx.cs" Inherits="AspDynamicCardsUsingMaterialize.ProductsBootstrap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/bootstrap.min.css" rel="stylesheet" />
    <link href="Styles/Custom.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
            <asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="rowGrpPlaceHolder1" ItemPlaceholderID="ColItemPlaceHolder1">
                <LayoutTemplate>
                    <div class="row">
                        <asp:PlaceHolder ID="rowGrpPlaceHolder1" runat="server"></asp:PlaceHolder>
                    </div>
                </LayoutTemplate>
                <GroupTemplate>
                    <div class="col col-sm-12 col-m-12 col-lg-6 col-xl-3 p-2">
                        <asp:PlaceHolder runat="server" ID="ColItemPlaceHolder1"></asp:PlaceHolder>
                    </div>
                </GroupTemplate>
                <ItemTemplate>
                    <div class="card rounded ">
                        <h3 class="text-center text-info"><%# Eval("ProductName") %></h3>
                        <div class="card-img text-center">
                            <img class="img" src="<%#"/ImgProducts/" + Eval("ProductImage") %>" />
                        </div>
                        <div class="card-body text-center">
                            <span class="card-title"><b><%# Eval("ProductPrice") %> $ </b></span>
                            <p>
                                <%# Eval("ProductDesc") %>
                            </p>
                        </div>
                        <div class="card-footer text-center bg-info">
                            <a class="btn btn-lg btn-light">View</a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
