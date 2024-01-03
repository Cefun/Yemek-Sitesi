using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Projesi2
{
    public class sqlsinif
    {
     //veritabani baglantisi
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source = CEFUN; Initial Catalog = Dbo_yemektarifi; Integrated Security = true;");
            baglan.Open();
            return baglan;
        }
    }
}