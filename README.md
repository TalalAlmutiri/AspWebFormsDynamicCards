# AspWebFormsDynamicCards
ASP.net web forms that display responsive cards horizontally and vertically using Materialize.css and bootstrap.css


Products table

    CREATE TABLE [dbo].[Products](
      [ProductID] [int] NOT NULL,
      [ProductName] [varchar](50) NULL,
      [ProductDesc] [varchar](100) NULL,
      [ProductPrice] [float] NULL,
      [ProductImage] [varchar](50) NULL,
     CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
    (
      [ProductID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]

    INSERT INTO Products VALUES(1,'PC 1','HP Personal computer',1000,'pc1.jpg')
    INSERT INTO Products VALUES(2,'PC 2','Dell Personal computer',1200,'pc2.jpg')
    INSERT INTO Products VALUES(3,'PC 3','Apple Mac 1',1400,'pc3.jpg')
    INSERT INTO Products VALUES(4,'PC 4','Apple Mac 2',1800,'pc4.jpg')


Using bootstrap

Products was loaded into a ListView then page style done using bootstrap

![CardImg3](https://user-images.githubusercontent.com/62042702/90954420-d773f580-e47c-11ea-86d0-5ce26ba9c56d.png)


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
   
   
   
Using materialize.css
  
 ![CardImg2](https://user-images.githubusercontent.com/62042702/90954445-02f6e000-e47d-11ea-9f20-3e677b0539a6.png)
 

![card2](https://user-images.githubusercontent.com/62042702/90954506-78fb4700-e47d-11ea-877e-bc0671d75745.png)


Vertical cards

![CardImg1](https://user-images.githubusercontent.com/62042702/90954460-11dd9280-e47d-11ea-9ad8-2a7168f0f0d0.png)

  
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


