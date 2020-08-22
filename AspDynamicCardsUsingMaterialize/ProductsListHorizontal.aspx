<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsListHorizontal.aspx.cs" Inherits="AspDynamicCardsUsingMaterialize.ProductsListHorizontal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/materialize.min.css" rel="stylesheet" />
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
                    <div class="col s12 m12 l6 xl3">
                        <asp:PlaceHolder runat="server" ID="ColItemPlaceHolder1"></asp:PlaceHolder>
                    </div>
                </GroupTemplate>
                <ItemTemplate>
                    <div class="card rounded">
                        <h3 class="center teal-text"><%# Eval("ProductName") %></h3>
                        <div class="card-image">
                            <img class="img" src="<%#"/ImgProducts/" + Eval("ProductImage") %>" />
                        </div>
                        <div class="card-content teal center white-text no-padding">
                            <span class="card-title"><b><%# Eval("ProductPrice") %> $ </b></span>
                            <p>
                                <%# Eval("ProductDesc") %>
                            </p>
                        </div>
                        <div class="card-action teal center">
                            <a class="btn  amber darken-4 white-text">View</a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </form>

</body>
</html>
