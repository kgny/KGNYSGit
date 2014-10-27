<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnergyConsume.aspx.cs" Inherits="QCA.EnergyConsume" %>

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
                        GroupBoxCaptionOffsetY="-19px" HeaderText="能源消耗指标" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
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
                                                    <td align="center" width="14%">
                                                        <dx:ASPxLabel ID="ASPxLabel11" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="项目内容">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                    <td align="center" width="14%">
                                                        <dx:ASPxLabel ID="ASPxLabel12" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="基准值(kgce/t)">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                    <td align="center" width="14%">
                                                        <dx:ASPxLabel ID="ASPxLabel13" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="标杆值(kgce/t)">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                     <td align="center" width="14%">
                                                        <dx:ASPxLabel ID="ASPxLabel14" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="基础分值">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                     <td align="center" width="14%">
                                                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="评分内容">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                     <td align="center" width="14%">
                                                        <dx:ASPxLabel ID="ASPxLabel2" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="各项分值">
                                                        </dx:ASPxLabel>
                                                    </td>
                                                     <td align="center">
                                                        <dx:ASPxLabel ID="ASPxLabel15" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                            CssPostfix="Office2010Blue" Text="总分">
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
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent2" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Others" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox6" ReadOnly="True" Text="烧结工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con0" ReadOnly="True" Text="53">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con1" ReadOnly="True" Text="42.12">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con2" ReadOnly="True" Text="100">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con3" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con4" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con5" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox1" ReadOnly="True" Text="球团工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con6" ReadOnly="True" Text="20">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con7" ReadOnly="True" Text="18">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con8" ReadOnly="True" Text="100">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con9" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con10" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con11" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox10" ReadOnly="True" Text="焦化工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con12" ReadOnly="True" Text="125">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con13" ReadOnly="True" Text="105">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con14" ReadOnly="True" Text="100">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con15" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con16" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con17" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox17" ReadOnly="True" Text="高炉工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con18" ReadOnly="True" Text="385">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con19" ReadOnly="True" Text="356.23">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con20" ReadOnly="True" Text="100">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con21" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con22" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con23" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox24" ReadOnly="True" Text="铁水预处理单脱">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con24" ReadOnly="True" Text="0.65">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con25" ReadOnly="True" Text="0.5">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con26" ReadOnly="True" Text="50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con27" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con28" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con29" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox31" ReadOnly="True" Text="铁水预处理复脱">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con30" ReadOnly="True" Text="1.8">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con31" ReadOnly="True" Text="1.4">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con32" ReadOnly="True" Text="50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con33" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con34" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con35" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox38" ReadOnly="True" Text="转炉工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con36" ReadOnly="True" Text="18.2">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con37" ReadOnly="True" Text="0.5">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con38" ReadOnly="True" Text="100">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con39" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con40" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con41" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox2" ReadOnly="True" Text="电炉工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con42" ReadOnly="True" Text="53">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con43" ReadOnly="True" Text="50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con44" ReadOnly="True" Text="100">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con45" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con46" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con47" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
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
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="精炼、连铸" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Cast" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox3" ReadOnly="True" Text="LF工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con48" ReadOnly="True" Text="6.6">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con49" ReadOnly="True" Text="4">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con50" ReadOnly="True" Text="16.67">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con51" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con52" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con53" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox12" ReadOnly="True" Text="VD工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con54" ReadOnly="True" Text="10.57">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con55" ReadOnly="True" Text="8">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con56" ReadOnly="True" Text="16.67">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con57" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con58" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con59" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox20" ReadOnly="True" Text="RH-KTB工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con60" ReadOnly="True" Text="14.96">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con61" ReadOnly="True" Text="8.5">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con62" ReadOnly="True" Text="16.67">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con63" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con64" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con65" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox28" ReadOnly="True" Text="AOD工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con66" ReadOnly="True" Text="15.66">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con67" ReadOnly="True" Text="15.5">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con68" ReadOnly="True" Text="16.67">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con69" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con70" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con71" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox36" ReadOnly="True" Text="VOD工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con72" ReadOnly="True" Text="14.6">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con73" ReadOnly="True" Text="10.5">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con74" ReadOnly="True" Text="16.67">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con75" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con76" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con77" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox44" ReadOnly="True" Text="CAS-OB工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con78" ReadOnly="True" Text="1.26">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con79" ReadOnly="True" Text="0.5">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con80" ReadOnly="True" Text="16.67">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con81" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con82" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con83" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox23" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox9" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox25" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox11" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox13" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox14" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox1" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox51" ReadOnly="True" Text="方坯工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con84" ReadOnly="True" Text="6">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con85" ReadOnly="True" Text="5.5">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con86" ReadOnly="True" Text="50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con87" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con88" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con89" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox21" ReadOnly="True" Text="板坯/圆坯/异形坯连铸">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con90" ReadOnly="True" Text="7">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con91" ReadOnly="True" Text="6.5">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con92" ReadOnly="True" Text="50">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con93" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con94" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con95" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox16" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox19" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox29" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox30" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox33" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox34" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox2" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
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
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel4" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="热轧" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent3" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Hot" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox4" ReadOnly="True" Text="大型、轨梁工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con96" ReadOnly="True" Text="56.1">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con97" ReadOnly="True" Text="48.1">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con98" ReadOnly="True" Text="9.09">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con99" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con100" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con101" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox5" ReadOnly="True" Text="H 型钢工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con102" ReadOnly="True" Text="57.1">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con103" ReadOnly="True" Text="49.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con104" ReadOnly="True" Text="9.09">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con105" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con106" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con107" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox15" ReadOnly="True" Text="中型轧钢工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con108" ReadOnly="True" Text="49">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con109" ReadOnly="True" Text="31.57">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con110" ReadOnly="True" Text="9.09">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con111" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con112" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con113" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox26" ReadOnly="True" Text="小型轧钢工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con114" ReadOnly="True" Text="51.65">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con115" ReadOnly="True" Text="29">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con116" ReadOnly="True" Text="9.09">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con117" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con118" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con119" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox27" ReadOnly="True" Text="高速线材工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con120" ReadOnly="True" Text="57.1">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con121" ReadOnly="True" Text="34.85">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con122" ReadOnly="True" Text="9.09">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con123" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con124" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con125" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox45" ReadOnly="True" Text="中厚板工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con126" ReadOnly="True" Text="52.7">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con127" ReadOnly="True" Text="46">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con128" ReadOnly="True" Text="9.09">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con129" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con130" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con131" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox53" ReadOnly="True" Text="热轧带钢工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con132" ReadOnly="True" Text="46.7">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con133" ReadOnly="True" Text="40.33">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con134" ReadOnly="True" Text="9.09">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con135" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con136" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con137" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox60" ReadOnly="True" Text="连铸连轧工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con138" ReadOnly="True" Text="42.3">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con139" ReadOnly="True" Text="29">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con140" ReadOnly="True" Text="9.09">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con141" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con142" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con143" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox67" ReadOnly="True" Text="热连轧钢管工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con144" ReadOnly="True" Text="76">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con145" ReadOnly="True" Text="74">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con146" ReadOnly="True" Text="9.09">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con147" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con148" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con149" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox74" ReadOnly="True" Text="热挤压管工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con150" ReadOnly="True" Text="150">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con151" ReadOnly="True" Text="暂无">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con152" ReadOnly="True" Text="9.09">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con153" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con154" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con155" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox81" ReadOnly="True" Text="热处理/管加工工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con156" ReadOnly="True" Text="72">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con157" ReadOnly="True" Text="暂无">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con158" ReadOnly="True" Text="9.09">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con159" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con160" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con161" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox37" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox39" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox40" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox42" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox43" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox46" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox3" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
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
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel5" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="冷轧" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent4" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Cold" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox7" ReadOnly="True" Text="冷轧宽带钢工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con162" ReadOnly="True" Text="58.07">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con163" ReadOnly="True" Text="38.81">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con164" ReadOnly="True" Text="25">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con165" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con166" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con167" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox18" ReadOnly="True" Text="冷轧不锈钢工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con168" ReadOnly="True" Text="235">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con169" ReadOnly="True" Text="暂无">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con170" ReadOnly="True" Text="25">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con171" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con172" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con173" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox32" ReadOnly="True" Text="冷轧不锈钢工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con174" ReadOnly="True" Text="218">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con175" ReadOnly="True" Text="暂无">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con176" ReadOnly="True" Text="25">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con177" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con178" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con179" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox41" ReadOnly="True" Text="冷拔无缝钢管工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con180" ReadOnly="True" Text="98">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con181" ReadOnly="True" Text="暂无">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con182" ReadOnly="True" Text="25">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con183" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con184" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con185" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox48" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox49" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox50" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox52" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox54" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox55" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox4" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
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
                                        <td width="100%" valign="top">
                                            <dx:ASPxRoundPanel ID="ASPxRoundPanel6" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                CssPostfix="Office2010Blue" EnableDefaultAppearance="False" GroupBoxCaptionOffsetX="6px"
                                                GroupBoxCaptionOffsetY="-19px" HeaderText="镀层" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                Width="100%" View="GroupBox">
                                                <ContentPaddings PaddingBottom="10px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="10px" />
                                                <HeaderStyle>
                                                    <Paddings PaddingBottom="6px" PaddingLeft="9px" PaddingRight="11px" PaddingTop="3px" />
                                                </HeaderStyle>
                                                <PanelCollection>
                                                    <dx:PanelContent ID="PanelContent5" runat="server" SupportsDisabledAttribute="True">
                                                        <asp:UpdatePanel ID="UpdatePanel_Coat" runat="server" UpdateMode="Conditional" 
                                                            ChildrenAsTriggers="False">
                                                            <ContentTemplate>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox8" ReadOnly="True" Text="热镀锌产品工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con186" ReadOnly="True" Text="86.61">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con187" ReadOnly="True" Text="暂无">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con188" ReadOnly="True" Text="25">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con189" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con190" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con191" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox22" ReadOnly="True" Text="电镀锌产品工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con192" ReadOnly="True" Text="136.14">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con193" ReadOnly="True" Text="暂无">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con194" ReadOnly="True" Text="25">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con195" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con196" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con197" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox35" ReadOnly="True" Text="彩涂产品工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con198" ReadOnly="True" Text="139.82">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con199" ReadOnly="True" Text="暂无">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con200" ReadOnly="True" Text="25">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con201" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con202" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con203" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox47" ReadOnly="True" Text="电镀锡产品工序能耗">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con204" ReadOnly="True" Text="129.18">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con205" ReadOnly="True" Text="暂无">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con206" ReadOnly="True" Text="25">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con207" Text="0">
                                                                                <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithTooltip" ErrorText="">
                                                                                    <RegularExpression ValidationExpression="^\d+(\.\d+)?$" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con208" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                         <td align="left">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="con209" ReadOnly="True" Text="0">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox56" ReadOnly="True" Text="合计" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox57" BackColor="Yellow" 
                                                                                ReadOnly="True">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox58" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox59" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox61" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="ASPxTextBox62" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
                                                                        </td>
                                                                        <td align="left" width="14%">
                                                                            <dx:ASPxTextBox runat="server" Width="120px" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                                CssPostfix="Office2010Blue" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                                ClientIDMode="AutoID" ID="txtbox5" ReadOnly="True" 
                                                                                BackColor="Yellow">
                                                                            </dx:ASPxTextBox>
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
                                            <asp:UpdatePanel ID="UpdatePanel_Confirm" runat="server" UpdateMode="Conditional"
                                                ChildrenAsTriggers="False">
                                                <ContentTemplate>
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 25%;">
                                                                &nbsp;
                                                            </td>
                                                            <td style="width: 25%;" align="center">
                                                                <dx:ASPxButton ID="ASPxButton_Update" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                    CssPostfix="Office2010Blue" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                    Style="margin-left: 0px" Text="更新计算" Width="90px" OnClick="ASPxButton_Update_Click">
                                                                </dx:ASPxButton>
                                                            </td>
                                                            <td style="width: 25%;" align="center">
                                                                <dx:ASPxButton ID="ASPxButton_Confirm" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                                                                    CssPostfix="Office2010Blue" SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css"
                                                                    Style="margin-left: 0px" Text="保存" Width="90px" OnClick="ASPxButton_Confirm_Click">
                                                                </dx:ASPxButton>
                                                            </td>
                                                            <td style="width: 25%;">
                                                                &nbsp;
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
