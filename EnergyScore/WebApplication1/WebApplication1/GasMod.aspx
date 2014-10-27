<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GasMod.aspx.cs" Inherits="QCA.GasMod" %>

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
        .style4
        {
            width: 13%;
        }
        .style5
        {
            width: 32%;
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
                        GroupBoxCaptionOffsetY="-19px" HeaderText="煤气调度模型" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
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
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="管路参数" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="1.煤气柜(万立米)：">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="style1">
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel12" runat="server" ClientIDMode="AutoID" Text="最低容量">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel13" runat="server" ClientIDMode="AutoID" 
                                                                        Text="正常波动下限容量">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel14" runat="server" ClientIDMode="AutoID" Text="最佳容量">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel2" runat="server" ClientIDMode="AutoID" 
                                                                        Text="正常波动上限容量">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel3" runat="server" ClientIDMode="AutoID" Text="最高容量">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox1" ReadOnly="True" Text="焦粉用量">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVGmin" Text="5">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVGlow" Text="7">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVGbest" Text="10">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVGhigh" Text="13">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVGmax" Text="15">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox6" ReadOnly="True" Text="焦炉煤气柜">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVJmin" Text="3.5">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVJlow" Text="4.5">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVJbest" Text="6">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVJhigh" Text="8.5">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVJmax" Text="10">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox12" ReadOnly="True" Text="转炉煤气柜">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVZmin" Text="2.5">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVZlow" Text="3.5">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVZbest" Text="4">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVZhigh" Text="6.5">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVZmax" Text="8">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="2.放散塔：">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td>
                                                                </td>
                                                                <td>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="3.管损：">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td>
                                                                </td>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="最大放散能力(m3/h)">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td>
                                                                </td>
                                                                <td>
                                                                </td>
                                                                <td align="center">
                                                                    <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="百分比(%)">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox2" ReadOnly="True" Text="高炉煤气放散塔">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmGFmax" Text="300000 ">
                                                                        <MaskSettings Mask="&lt;1..900000&gt;" />
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                   
                                                                </td>
                                                                <td align="left" width="18%">
                                                                   <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox4" ReadOnly="True" Text="高炉煤气管损">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmLossG" Text="1">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox5" ReadOnly="True" Text="焦炉煤气放散塔">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmJFmax" Text="300000 ">
                                                                        <MaskSettings Mask="&lt;1..900000&gt;" />
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                   
                                                                </td>
                                                                <td align="left" width="18%">
                                                                   <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox9" ReadOnly="True" Text="焦炉煤气管损">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmLossJ" Text="1">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox11" ReadOnly="True" Text="转炉煤气放散塔">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmZFmax" Text="300000 ">
                                                                        <MaskSettings Mask="&lt;1..900000&gt;" />
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                   
                                                                </td>
                                                                <td align="left" width="18%">
                                                                   <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox14" ReadOnly="True" Text="转炉煤气管损">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmLossZ" Text="1">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
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
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="模型参数" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent2" runat="server" SupportsDisabledAttribute="True">
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="1.基本信息：">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <table>
                                                                        <tr>
                                                                            <td align="left">
                                                                                <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox3" ReadOnly="True" Text="煤气用户数">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left">
                                                                                <dx:ASPxTextBox runat="server" Width="80px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="txtmN0" Text="7" ReadOnly="True">
                                                                                    <MaskSettings Mask="&lt;1..30&gt;" />
                                                                                    <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                        <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left">
                                                                                <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox8" ReadOnly="True" Text="高气放散的经济系数">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left">
                                                                                <dx:ASPxTextBox runat="server" Width="80px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="textBox10" Text="-180">
                                                                                    <MaskSettings Mask="&lt;-1000..1000&gt;" />
                                                                                    <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left">
                                                                                <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox13" ReadOnly="True" Text="焦气放散的经济系数">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left">
                                                                                <dx:ASPxTextBox runat="server" Width="80px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="textBox40" Text="-260">
                                                                                    <MaskSettings Mask="&lt;-1000..1000&gt;" />
                                                                                    <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left">
                                                                                <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="ASPxTextBox16" ReadOnly="True" Text="转气放散的经济系数">
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                            <td align="left">
                                                                                <dx:ASPxTextBox runat="server" Width="80px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                    CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                    ClientIDMode="AutoID" ID="textBox41" Text="-200">
                                                                                    <MaskSettings Mask="&lt;-1000..1000&gt;" />
                                                                                    <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    </ValidationSettings>
                                                                                </dx:ASPxTextBox>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxLabel ID="ASPxLabel9" runat="server" Text="2.用户信息：">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left">
                                                                    <dx:ASPxGridView ID="dataGridView1" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        CssPostfix="Office2010Blue" 
                                                                        AutoGenerateColumns="False" Width="100%" EnableCallbackCompression="False" 
                                                                        EnableCallBacks="False">
                                                                        <SettingsBehavior AllowGroup="False" AllowSort="False" />
                                                                        <SettingsPager NumericButtonCount="6" PageSize="20">
                                                                            <NextPageButton Text="下一页">
                                                                            </NextPageButton>
                                                                            <PrevPageButton Text="上一页">
                                                                            </PrevPageButton>
                                                                            <Summary AllPagesText="页：{0}/{1} ({2}行)" Text="页：{0}/{1} ({2}行)" />
                                                                        </SettingsPager>
                                                                        <Settings ShowHorizontalScrollBar="True" ShowVerticalScrollBar="True" 
                                                                            VerticalScrollableHeight="150" />
                                                                        <SettingsText EmptyHeaders=" " />
                                                                        <Images SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css">
                                                                            <LoadingPanelOnStatusBar Url="~/App_Themes/Office2010Blue/GridView/Loading.gif">
                                                                            </LoadingPanelOnStatusBar>
                                                                            <LoadingPanel Url="~/App_Themes/Office2010Blue/GridView/Loading.gif">
                                                                            </LoadingPanel>
                                                                        </Images>
                                                                        <ImagesFilterControl>
                                                                            <LoadingPanel Url="~/App_Themes/Office2010Blue/GridView/Loading.gif">
                                                                            </LoadingPanel>
                                                                        </ImagesFilterControl>
                                                                        <Styles CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" CssPostfix="Office2010Blue">
                                                                            <Header ImageSpacing="5px" SortingImageSpacing="5px">
                                                                            </Header>
                                                                            <AlternatingRow Enabled="True">
                                                                            </AlternatingRow>
                                                                            <LoadingPanel ImageSpacing="5px">
                                                                            </LoadingPanel>
                                                                        </Styles>
                                                                        <StylesPager>
                                                                            <PageNumber ForeColor="#3E4846">
                                                                            </PageNumber>
                                                                            <Summary ForeColor="#1E395B">
                                                                            </Summary>
                                                                        </StylesPager>
                                                                        <StylesEditors ButtonEditCellSpacing="0">
                                                                            <ProgressBar Height="21px">
                                                                            </ProgressBar>
                                                                        </StylesEditors>
                                                                    </dx:ASPxGridView>
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
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="输入参数" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent3" runat="server" SupportsDisabledAttribute="True">
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxLabel ID="ASPxLabel19" runat="server" Text="1.煤气热值(KJ/M3)：">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td>
                                                                </td>
                                                                <td>
                                                                    <dx:ASPxLabel ID="ASPxLabel20" runat="server" Text="2.当前煤气柜储气量(m3)：">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td>
                                                                </td>
                                                                 <td>
                                                                    <dx:ASPxLabel ID="ASPxLabel10" runat="server" Text="3.预测的煤气发生量(m3)：">
                                                                    </dx:ASPxLabel>
                                                                </td>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox32" ReadOnly="True" Text="高炉煤气">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmR_G" Text="3433">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox34" ReadOnly="True" Text="高炉煤气柜">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVnow_G" Text="75000">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                       <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox7" ReadOnly="True" Text="高炉煤气">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmY_G" Text="406393">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox10" ReadOnly="True" Text="焦炉煤气">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmR_J" Text="17794">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox17" ReadOnly="True" Text="焦炉煤气柜">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVnow_J" Text="50000">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                       <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox19" ReadOnly="True" Text="焦炉煤气">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmY_J" Text="58904">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" class="style4">
                                                                    <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox21" ReadOnly="True" Text="转炉煤气">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmR_Z" Text="7536">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox23" ReadOnly="True" Text="转炉煤气柜">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmVnow_Z" Text="40000">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                       <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="ASPxTextBox25" ReadOnly="True" Text="转炉煤气">
                                                                    </dx:ASPxTextBox>
                                                                </td>
                                                                <td align="left" width="18%">
                                                                    <dx:ASPxTextBox runat="server" Width="140px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                        CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                        ClientIDMode="AutoID" ID="txtmY_Z" Text="16781">
                                                                        <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                            <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                        </ValidationSettings>
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
                                        <td valign="top" width="100%">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel5" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="输出结果" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                View="GroupBox" Width="100%">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Result" runat="server" ChildrenAsTriggers="False" UpdateMode="Conditional">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td>
                                                                            <table>
                                                                                <tr>
                                                                                    <td align="left">
                                                                                        <dx:ASPxLabel ID="ASPxLabel11" runat="server" Text="解的说明：" Width="60px">
                                                                                        </dx:ASPxLabel>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <dx:ASPxTextBox ID="txtResult" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                            CssPostfix="Office2010Blue" ReadOnly="True" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                            Text="唯一最优解" Width="140px">
                                                                                        </dx:ASPxTextBox>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left">
                                                                            <dx:ASPxGridView ID="dataGridView2" runat="server" AutoGenerateColumns="False" ClientIDMode="AutoID"
                                                                                CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" CssPostfix="Office2010Blue"
                                                                                Width="100%" EnableCallBacks="False">
                                                                                <SettingsBehavior ColumnResizeMode="Control" AllowGroup="False" 
                                                                                    AllowSort="False" />
                                                                                <SettingsPager NumericButtonCount="6" PageSize="20">
                                                                                    <NextPageButton Text="下一页">
                                                                                    </NextPageButton>
                                                                                    <PrevPageButton Text="上一页">
                                                                                    </PrevPageButton>
                                                                                    <Summary AllPagesText="页：{0}/{1} ({2}行)" Text="页：{0}/{1} ({2}行)" />
                                                                                </SettingsPager>
                                                                                <Settings ShowHorizontalScrollBar="True" ShowVerticalScrollBar="True" VerticalScrollableHeight="150" />
                                                                                <SettingsText EmptyHeaders=" " />
                                                                                <Images SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css">
                                                                                    <LoadingPanelOnStatusBar Url="~/App_Themes/Office2010Blue/GridView/Loading.gif">
                                                                                    </LoadingPanelOnStatusBar>
                                                                                    <LoadingPanel Url="~/App_Themes/Office2010Blue/GridView/Loading.gif">
                                                                                    </LoadingPanel>
                                                                                </Images>
                                                                                <ImagesFilterControl>
                                                                                    <LoadingPanel Url="~/App_Themes/Office2010Blue/GridView/Loading.gif">
                                                                                    </LoadingPanel>
                                                                                </ImagesFilterControl>
                                                                                <Styles CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css" CssPostfix="Office2010Blue">
                                                                                    <Header ImageSpacing="5px" SortingImageSpacing="5px">
                                                                                    </Header>
                                                                                    <AlternatingRow Enabled="True">
                                                                                    </AlternatingRow>
                                                                                    <LoadingPanel ImageSpacing="5px">
                                                                                    </LoadingPanel>
                                                                                </Styles>
                                                                                <StylesPager>
                                                                                    <PageNumber ForeColor="#3E4846">
                                                                                    </PageNumber>
                                                                                    <Summary ForeColor="#1E395B">
                                                                                    </Summary>
                                                                                </StylesPager>
                                                                                <StylesEditors ButtonEditCellSpacing="0">
                                                                                    <ProgressBar Height="21px">
                                                                                    </ProgressBar>
                                                                                </StylesEditors>
                                                                            </dx:ASPxGridView>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </dx:PanelContent>
                                                </PanelCollection>
                                            </dx:ASPxRoundPanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="top">
                                            <asp:UpdatePanel ID="UpdatePanel_Confirm" runat="server" ChildrenAsTriggers="False"
                                                UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td align="center">
                                                                <dx:ASPxButton ID="button1" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                    CssPostfix="Office2010Blue" OnClick="button1_Click" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                    Style="margin-left: 0px" Text="模型计算" Width="90px">
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
