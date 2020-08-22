<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsList.aspx.cs" Inherits="AspDynamicCardsUsingMaterialize.ProductsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/materialize.min.css" rel="stylesheet" />
    <link href="Styles/Custom.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="products-container" class="container">
            <asp:Repeater ID="rptProducts" runat="server">
                <ItemTemplate>
                    <div class="row">
                        <div class="col s12 l12 m12">
                            <div class="card rounded">
                                <h3 class="center teal-text"><%# Eval("ProductName") %></h3>
                                <div class="card-image">
                                    <img src="<%#"/ImgProducts/" + Eval("ProductImage") %>" />
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
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate></FooterTemplate>
            </asp:Repeater>

        </div>
    </form>
</body>
</html>
