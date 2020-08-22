using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace AspDynamicCardsUsingMaterialize
{
    public class Products
    {
        private int productID;
        private string productName;
        private string productDesc;
        private float productPrice;
        private string productImage;

        public int ProductID { get => productID; set => productID = value; }
        public string ProductName { get => productName; set => productName = value; }
        public string ProductDesc { get => productDesc; set => productDesc = value; }
        public float ProductPrice { get => productPrice; set => productPrice = value; }
        public string ProductImage { get => productImage; set => productImage = value; }


        public static IEnumerable<Products> GetAllProducts()
        {
            List<Products> productsList = new List<Products>();

            string query = @"SELECT * FROM Products Order By ProductID";
            DataTable table = DbHelper.ExecuteQuery(query, CommandType.Text, null);

            if (table.Rows.Count > 0)
            {
                for (int i = 0; i < table.Rows.Count; i++)
                {
                    Products products = new Products();
                    products.ProductID = Convert.ToInt32(table.Rows[i]["ProductID"]);
                    products.ProductName = table.Rows[i]["ProductName"].ToString();
                    products.ProductDesc = table.Rows[i]["ProductDesc"].ToString();
                    products.ProductPrice = float.Parse(table.Rows[i]["ProductPrice"].ToString());
                    products.ProductImage = table.Rows[i]["ProductImage"].ToString(); 

                    productsList.Add(products);
                }
            }
            return productsList;
        }
    }
}