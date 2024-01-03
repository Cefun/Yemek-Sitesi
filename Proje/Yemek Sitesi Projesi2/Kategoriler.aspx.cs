﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Sitesi_Projesi2
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataListKategori.DataSource = dr;
            DataListKategori.DataBind();
            //silme islemi
            if(islem=="sil")
            {
                SqlCommand komutsil = new SqlCommand("delete from Tbl_Kategoriler where kategoriid=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
            Panel2.Visible = false;
            Panel4.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        //kategori ekleme kodları
        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}