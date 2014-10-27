<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModelCake.aspx.cs" Inherits="QCA.ModelCake" %>

<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxUploadControl" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 24%;
        }
        .style2
        {
            width: 21%;
        }
        .style3
        {
            width: 25%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <table style="width: 900px;">
            <tr>
                <td valign="top">
                    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                        CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                        GroupBoxCaptionOffsetY="-19px" HeaderText="烧结能耗计算模型" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                        Width="100%" Height="593px" Style="margin-right: 0px">
                        <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                        <HeaderStyle>
                            <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                        </HeaderStyle>
                        <PanelCollection>
                            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                <table style="width: 100%;">
                                    <tr>
                                        <td width="100%" valign="top">
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td width="50%" valign="top">
                                                        <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                            GroupBoxCaptionOffsetY="-19px" HeaderText="理论值" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                            Width="100%" View="GroupBox">
                                                            <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                            <HeaderStyle>
                                                                <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                            </HeaderStyle>
                                                            <PanelCollection>
                                                                <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                                                                    <table style="width: 100%;">
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="1.能源消耗项">
                                                                                </dx:ASPxLabel>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="热量kJ/t">
                                                                                </dx:ASPxLabel>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox1" ReadOnly="True" Text="焦粉消耗的能量Q1">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con1" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox4" ReadOnly="True" Text="煤粉消耗的能量">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con2" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox6" ReadOnly="True" Text="点火煤气消耗能量Q2">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con3" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox8" ReadOnly="True" Text="抽风机电能消耗Q3">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con4" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox10" ReadOnly="True" Text="环冷风机电能消耗Q4">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con5" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox12" ReadOnly="True" Text="混合料预热蒸汽消耗Q5">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con6" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox14" ReadOnly="True" Text="压缩空气能耗Q6">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con7" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox16" ReadOnly="True" Text="新水能耗Q7">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con8" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox18" ReadOnly="True" Text="蒸汽能耗Q8">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con9" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox20" ReadOnly="True" Text="小计" 
                                                                                    Font-Bold="False">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con10" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="2.能源收入项">
                                                                                </dx:ASPxLabel>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="热量kJ/t">
                                                                                </dx:ASPxLabel>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox22" ReadOnly="True" Text="烧结废气的物理热Q9">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con11" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox24" ReadOnly="True" Text="烧结矿显热Q10">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con12" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox27" ReadOnly="True" Text="小计" 
                                                                                    Font-Bold="False">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con13" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox29" ReadOnly="True" Text="合计" 
                                                                                    Font-Bold="False" BackColor="Yellow">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con14" Text="0" BackColor="Yellow" 
                                                                                    ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </dx:PanelContent>
                                                            </PanelCollection>
                                                        </dx:ASPxRoundPanel>
                                                    </td>
                                                    <td width="50%" valign="top">
                                                        <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                            GroupBoxCaptionOffsetY="-19px" HeaderText="实际值" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                            Width="100%" View="GroupBox">
                                                            <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                            <HeaderStyle>
                                                                <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                            </HeaderStyle>
                                                            <PanelCollection>
                                                                <dx:PanelContent ID="PanelContent2" runat="server" SupportsDisabledAttribute="True">
                                                                    <table style="width: 100%;">
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="1.能源消耗项">
                                                                                </dx:ASPxLabel>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="热量kJ/t">
                                                                                </dx:ASPxLabel>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox2" ReadOnly="True" Text="焦粉">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con15" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox31" ReadOnly="True" Text="煤气">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con16" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox33" ReadOnly="True" Text="煤粉">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con17" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox35" ReadOnly="True" Text="风机电耗">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con18" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox37" ReadOnly="True" Text="循环水">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con19" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox39" ReadOnly="True" Text="压缩空气">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con20" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox41" ReadOnly="True" Text="新水">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con21" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox43" ReadOnly="True" Text="蒸汽">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con22" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox3" ReadOnly="True" Text="">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox5" Text="" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox45" ReadOnly="True" Text="小计">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con23" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="2.能源收入项">
                                                                                </dx:ASPxLabel>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxLabel ID="ASPxLabel9" runat="server" Text="热量kJ/t">
                                                                                </dx:ASPxLabel>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox47" ReadOnly="True" Text="余热回收发电">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con24" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox49" ReadOnly="True" Text="烧结矿显热">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con25" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox51" ReadOnly="True" Text="小计">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con26" Text="0" ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox53" ReadOnly="True" Text="合计" BackColor="Yellow">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left" width="50%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="con27" Text="0" BackColor="Yellow" 
                                                                                    ReadOnly="True">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </dx:PanelContent>
                                                            </PanelCollection>
                                                        </dx:ASPxRoundPanel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel4" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="能耗模型计算表，单位：kgce/t" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent3" runat="server" SupportsDisabledAttribute="True">
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel11" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        CssPostfix="Office2010Blue" Text="项目">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel12" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        CssPostfix="Office2010Blue" Text="先进值">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel13" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        CssPostfix="Office2010Blue" Text="百分比/%">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel10" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        CssPostfix="Office2010Blue" Text="理论值">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel14" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        CssPostfix="Office2010Blue" Text="百分比/%">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                 <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel15" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        CssPostfix="Office2010Blue" Text="实际值">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel16" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        CssPostfix="Office2010Blue" Text="百分比/%">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left">
                                                                    <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="能源消耗：">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" width="16%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox25" ReadOnly="True" Text="焦粉">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con28" ReadOnly="True" Text="30.43">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con29" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con30" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con31" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con32" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con33" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" width="16%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox11" ReadOnly="True" Text="煤粉">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con34" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con35" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con36" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con37" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con38" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con39" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" width="16%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox26" ReadOnly="True" Text="煤气">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con40" ReadOnly="True" Text="6.48">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con41" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con42" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con43" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con44" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con45" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" width="16%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox40" ReadOnly="True" Text="电">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con46" ReadOnly="True" Text="6.65">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con47" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con48" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con49" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con50" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con51" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" width="16%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox54" ReadOnly="True" Text="水">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con52" ReadOnly="True" Text="0.06">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con53" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con54" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con55" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con56" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con57" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" width="16%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox61" ReadOnly="True" Text="蒸汽">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con58" ReadOnly="True" Text="6.5">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con59" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con60" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con61" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con62" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con63" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" width="16%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox68" ReadOnly="True" Text="压缩空气">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con64" ReadOnly="True" Text="0.02">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con65" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con66" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con67" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con68" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con69" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" width="16%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox75" ReadOnly="True" Text="合计" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con70" ReadOnly="True" Text="0" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con71" ReadOnly="True" Text="" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con72" ReadOnly="True" Text="0" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con73" ReadOnly="True" Text="" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con74" ReadOnly="True" Text="0" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con75" ReadOnly="True" Text="" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left">
                                                                    <dx:ASPxLabel ID="ASPxLabel17" runat="server" Text="能源回收利用：">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" width="16%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox82" ReadOnly="True" Text="烧结烟气显热">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con76" ReadOnly="True" Text="3.47">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con77" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con78" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con79" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con80" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con81" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" width="16%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox91" ReadOnly="True" Text="烧结矿显热">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con82" ReadOnly="True" Text="11.02">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con83" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con84" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con85" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con86" ReadOnly="True" Text="0">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con87" ReadOnly="True" Text="">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" width="16%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox98" ReadOnly="True" Text="合计" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con88" ReadOnly="True" Text="0" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con89" ReadOnly="True" Text="" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con90" ReadOnly="True" Text="0" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con91" ReadOnly="True" Text="" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con92" ReadOnly="True" Text="0" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con93" ReadOnly="True" Text="" 
                                                                        BackColor="Yellow">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" width="16%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox105" ReadOnly="True" Text="工序能耗" 
                                                                        BackColor="#00FFCC">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con94" ReadOnly="True" Text="0" 
                                                                        BackColor="#00FFCC">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con95" ReadOnly="True" Text="" 
                                                                        BackColor="#00FFCC">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con96" ReadOnly="True" Text="0" 
                                                                        BackColor="#00FFCC">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con97" ReadOnly="True" Text="" 
                                                                        BackColor="#00FFCC">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="14%">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con98" ReadOnly="True" Text="0" 
                                                                        BackColor="#00FFCC">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="con99" ReadOnly="True" Text="" 
                                                                        BackColor="#00FFCC">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="top">
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td align="center">
                                                        <dx:ASPxButton ID="ASPxButton_Confirm" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                            Style="margin-left: 0px" Text="更新计算" Width="90px" OnClick="ASPxButton_Confirm_Click">
                                                        </dx:ASPxButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </dx:PanelContent>
                        </PanelCollection>
                    </dx:ASPxRoundPanel>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>