<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TheoryCake.aspx.cs" Inherits="QCA.TheoryCake" %>

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
                        GroupBoxCaptionOffsetY="-19px" HeaderText="烧结理论能耗计算设定" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
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
                                                    <td align="center" class="style1">
                                                        <dx:ASPxLabel ID="ASPxLabel11" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="项目内容">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                    <td align="center" class="style3">
                                                        <dx:ASPxLabel ID="ASPxLabel12" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="数值">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                    <td align="center" class="style2">
                                                        <dx:ASPxLabel ID="ASPxLabel13" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="单位">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                     <td align="center">
                                                        <dx:ASPxLabel ID="ASPxLabel14" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="符号">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="能源消耗项目" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                                                    <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="1.燃料数据：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox1" ReadOnly="True" Text="焦粉用量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con1" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox2" ReadOnly="True" Text="kg/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox3" ReadOnly="True" Text="Gf">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox4" ReadOnly="True" Text="煤粉用量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con2" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox6" ReadOnly="True" Text="kg/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox7" ReadOnly="True" Text="Gc">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox8" ReadOnly="True" Text="焦粉低位热值">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con3" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox10" ReadOnly="True" Text="kJ/kg">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox11" ReadOnly="True" Text="QfDW">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox12" ReadOnly="True" Text="煤粉低位热值">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con4" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox14" ReadOnly="True" Text="kJ/kg">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox15" ReadOnly="True" Text="QcDW">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox16" ReadOnly="True" Text="点火煤气量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con5" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox18" ReadOnly="True" Text="Nm3/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox19" ReadOnly="True" Text="Gg">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox20" ReadOnly="True" Text="煤气低位热值">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con6" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox22" ReadOnly="True" Text="kJ/Nm3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox23" ReadOnly="True" Text="QgDW">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="2.风机数据：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox24" ReadOnly="True" Text="主风机风量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con7" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox26" ReadOnly="True" Text="Nm3/min">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox27" ReadOnly="True" Text="Gw">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox28" ReadOnly="True" Text="风机负压">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con8" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox30" ReadOnly="True" Text="Pa">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox31" ReadOnly="True" Text="PF">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox32" ReadOnly="True" Text="风机总效率">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con9" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox34" ReadOnly="True" Text="%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox35" ReadOnly="True" Text="η">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox36" ReadOnly="True" Text="电能储备系数">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con10" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox38" ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox39" ReadOnly="True" Text="A">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox40" ReadOnly="True" Text="环冷机风量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con11" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox42" ReadOnly="True" Text="Nm3/h">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox43" ReadOnly="True" Text="Gw">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox44" ReadOnly="True" Text="环冷机风压">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con12" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox46" ReadOnly="True" Text="Pa">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox47" ReadOnly="True" Text="Pw">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox48" ReadOnly="True" Text="环冷机总效率">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con13" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox50" ReadOnly="True" Text="%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox51" ReadOnly="True" Text="η">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox52" ReadOnly="True" Text="电能折算系数">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con14" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox54" ReadOnly="True" Text="kgce/kwh">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox55" ReadOnly="True" Text="QE">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox56" ReadOnly="True" Text="标煤热量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con15" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox58" ReadOnly="True" Text="kJ/kg">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox59" ReadOnly="True" Text="q">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox60" ReadOnly="True" Text="漏风率">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con16" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox62" ReadOnly="True" Text="%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox63" ReadOnly="True" Text="Lw">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="3.介质数据：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox5" ReadOnly="True" Text="混合料数量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con17" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox13" ReadOnly="True" Text="kg/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox17" ReadOnly="True" Text="Gm">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox21" ReadOnly="True" Text="混料比热容">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con18" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox29" ReadOnly="True" Text="kJ/kg·K">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox33" ReadOnly="True" Text="Cm">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox37" ReadOnly="True" Text="混料前温度">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con19" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox45" ReadOnly="True" Text="℃">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox49" ReadOnly="True" Text="T1">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox53" ReadOnly="True" Text="混料后温度">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con20" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox61" ReadOnly="True" Text="℃">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox64" ReadOnly="True" Text="T2">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox65" ReadOnly="True" Text="蒸汽预热效率">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con21" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox67" ReadOnly="True" Text="%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox68" ReadOnly="True" Text="e">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox69" ReadOnly="True" Text="压缩空气单耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con22" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox71" ReadOnly="True" Text="Nm3/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox72" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox73" ReadOnly="True" Text="循环水单耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con23" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox75" ReadOnly="True" Text="t/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox76" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox77" ReadOnly="True" Text="新水单耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con24" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox79" ReadOnly="True" Text="t/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox80" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox81" ReadOnly="True" Text="蒸汽单耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con25" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox83" ReadOnly="True" Text="kg/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox84" ReadOnly="True" Text="">
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
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="能源回收项目" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent2" runat="server" SupportsDisabledAttribute="True">
                                                    <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="4.余热利用数据：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox9" ReadOnly="True" Text="烧结烟气量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con26" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox41" ReadOnly="True" Text="Nm3/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox57" ReadOnly="True" Text="Gga">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox66" ReadOnly="True" Text="烧结烟气比热容">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con27" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox74" ReadOnly="True" Text="kJ/(m3·K)">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox78" ReadOnly="True" Text="Cga">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox82" ReadOnly="True" Text="烧结烟气温度">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con28" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox86" ReadOnly="True" Text="℃">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox87" ReadOnly="True" Text="Tga">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox92" ReadOnly="True" Text="基准温度">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con29" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox94" ReadOnly="True" Text="℃">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox95" ReadOnly="True" Text="Th">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox96" ReadOnly="True" Text="烟气物理热回收率">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con30" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox98" ReadOnly="True" Text="%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox99" ReadOnly="True" Text="ega">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox100" ReadOnly="True" Text="烧结饼质量">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con31" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox102" ReadOnly="True" Text="kg/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox103" ReadOnly="True" Text="Gb">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox104" ReadOnly="True" Text="烧结饼比热容">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con32" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox106" ReadOnly="True" Text="kJ/(kg·℃)">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox107" ReadOnly="True" Text="Cb">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox108" ReadOnly="True" Text="烧结饼温差">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con33" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox110" ReadOnly="True" Text="℃">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox111" ReadOnly="True" Text="tb">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox112" ReadOnly="True" Text="烧结饼显热回收率">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con34" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox114" ReadOnly="True" Text="%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox115" ReadOnly="True" Text="eb">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox116" ReadOnly="True" Text="烧结矿成品率">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con35" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" 
                                                                                    ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                                <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox118" ReadOnly="True" Text="%">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox119" ReadOnly="True" Text="">
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
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel4" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="等价热值及折算系数" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent3" runat="server" SupportsDisabledAttribute="True">
                                                    <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="5.等价热值及折算系数：">
                                                                            </dx:ASPxLabel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox25" ReadOnly="True" Text="无烟煤">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con36" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox85" ReadOnly="True" Text="MJ/kg">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox89" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox93" ReadOnly="True" Text="干焦炭">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con37" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox101" ReadOnly="True" Text="MJ/kg">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox105" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox109" ReadOnly="True" Text="电">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con38" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox117" ReadOnly="True" Text="MJ/kwh">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox120" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox121" ReadOnly="True" Text="蒸汽">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con39" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox123" ReadOnly="True" Text="MJ/kg">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox124" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox125" ReadOnly="True" Text="液化石油气">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con40" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox127" ReadOnly="True" Text="MJ/Nm3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox128" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox129" ReadOnly="True" Text="水">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con41" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox131" ReadOnly="True" Text="MJ/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox132" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox133" ReadOnly="True" Text="压缩空气">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con42" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox135" ReadOnly="True" Text="MJ/Nm3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox136" ReadOnly="True" Text="">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox137" ReadOnly="True" Text="环水">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con43" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox139" ReadOnly="True" Text="MJ/t">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="25%">
                                                                            <dx:ASPxTextBox runat="server" Width="180px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox140" ReadOnly="True" Text="">
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
                                            <asp:UpdatePanel ID="UpdatePanel_Confirm" runat="server" UpdateMode="Conditional"
                                                ChildrenAsTriggers="False">
                                                <ContentTemplate>
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td align="center">
                                                                <dx:ASPxButton ID="ASPxButton_Confirm" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                    CssPostfix="Office2010Blue" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                    Style="margin-left: 0px" Text="保存" Width="90px" 
                                                                    OnClick="ASPxButton_Confirm_Click">
                                                                </dx:ASPxButton>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
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
