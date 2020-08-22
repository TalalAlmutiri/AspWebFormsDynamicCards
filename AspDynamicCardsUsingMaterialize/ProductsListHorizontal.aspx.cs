using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspDynamicCardsUsingMaterialize
{
    public partial class ProductsListHorizontal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IEnumerable<Products> products = Products.GetAllProducts();
            ListView1.DataSource = products;
            ListView1.DataBind();
        }
    }
}