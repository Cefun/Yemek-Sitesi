<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Sitesi_Projesi2.GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    
        
        
     
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList3" runat="server" Width="450px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <div class="auto-style5">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                        </div>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">
                                    <div class="auto-style9">
                                        <strong>Malzemeler:</strong>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                                    </div>
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style10">
                                                <div>
                                                    <strong>Yemeğin yapılışı:</strong>
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                                                </div>


                                                <table class="auto-style1">
                                                    <tr>

                                                        <td class="auto-style5">


                                                            <asp:Image ID="Image1" runat="server" Height="226px" Width="329px" ImageUrl='~/resimler/tiramisu.jpg' />



                                                            <table class="auto-style1">
                                                                <tr>



                                                                    <td style="text-align: left">&nbsp; <strong>Puan:</strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                                                                        <table class="auto-style1">
                                                                            <tr>
                                                                                <td class="auto-style3">&nbsp;<strong>Tarih:</strong><em><asp:Label ID="Label8" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                                                                                </em>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
